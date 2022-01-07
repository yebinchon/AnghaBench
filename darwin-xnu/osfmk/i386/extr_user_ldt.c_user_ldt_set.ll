; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_user_ldt.c_user_ldt_set.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_user_ldt.c_user_ldt_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.real_descriptor = type { i32 }
%struct.TYPE_9__ = type { i64 }

@LDTSZ_MIN = common dso_local global i64 0, align 8
@USER_LDT = common dso_local global i32 0, align 4
@KERNEL_LDT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_ldt_set(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.real_descriptor*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %4, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %65

14:                                               ; preds = %1
  %15 = call i64 (...) @current_ldt()
  %16 = inttoptr i64 %15 to %struct.real_descriptor*
  store %struct.real_descriptor* %16, %struct.real_descriptor** %5, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LDTSZ_MIN, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %14
  %23 = load %struct.real_descriptor*, %struct.real_descriptor** %5, align 8
  %24 = load i64, i64* @LDTSZ_MIN, align 8
  %25 = getelementptr inbounds %struct.real_descriptor, %struct.real_descriptor* %23, i64 %24
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LDTSZ_MIN, align 8
  %30 = sub i64 %28, %29
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @bzero(%struct.real_descriptor* %25, i32 %32)
  br label %34

34:                                               ; preds = %22, %14
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.real_descriptor*, %struct.real_descriptor** %5, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.real_descriptor, %struct.real_descriptor* %38, i64 %41
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = mul i64 4, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @bcopy(i32 %37, %struct.real_descriptor* %42, i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = add i64 %52, %56
  %58 = mul i64 4, %57
  %59 = sub i64 %58, 1
  %60 = load i32, i32* @USER_LDT, align 4
  %61 = call %struct.TYPE_9__* @gdt_desc_p(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load i32, i32* @USER_LDT, align 4
  %64 = call i32 @ml_cpu_set_ldt(i32 %63)
  br label %68

65:                                               ; preds = %1
  %66 = load i32, i32* @KERNEL_LDT, align 4
  %67 = call i32 @ml_cpu_set_ldt(i32 %66)
  br label %68

68:                                               ; preds = %65, %34
  ret void
}

declare dso_local i64 @current_ldt(...) #1

declare dso_local i32 @bzero(%struct.real_descriptor*, i32) #1

declare dso_local i32 @bcopy(i32, %struct.real_descriptor*, i32) #1

declare dso_local %struct.TYPE_9__* @gdt_desc_p(i32) #1

declare dso_local i32 @ml_cpu_set_ldt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
