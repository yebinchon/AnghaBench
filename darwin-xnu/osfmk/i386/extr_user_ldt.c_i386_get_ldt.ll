; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_user_ldt.c_i386_get_ldt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_user_ldt.c_i386_get_ldt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }

@LDTSZ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@LDTSZ_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i386_get_ldt(i64* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = call %struct.TYPE_7__* (...) @current_task()
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @LDTSZ, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %5, align 4
  br label %90

21:                                               ; preds = %4
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %9, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* @LDTSZ, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %5, align 4
  br label %90

29:                                               ; preds = %21
  %30 = load i64, i64* %8, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %5, align 4
  br label %90

34:                                               ; preds = %29
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %36 = call i32 @task_lock(%struct.TYPE_7__* %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %10, align 8
  store i32 0, i32* %13, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = icmp ne %struct.TYPE_6__* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add i32 %45, %48
  store i32 %49, i32* %12, align 4
  br label %52

50:                                               ; preds = %34
  %51 = load i32, i32* @LDTSZ_MIN, align 4
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %50, %42
  %53 = load i64, i64* %7, align 8
  %54 = load i32, i32* %12, align 4
  %55 = zext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %52
  %58 = load i64, i64* %9, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %14, align 4
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %9, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* %12, align 4
  %64 = zext i32 %63 to i64
  %65 = icmp sgt i64 %62, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %57
  %67 = load i32, i32* %12, align 4
  %68 = zext i32 %67 to i64
  %69 = load i64, i64* %7, align 8
  %70 = sub nsw i64 %68, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %66, %57
  %73 = call i64 (...) @current_ldt()
  %74 = load i64, i64* %7, align 8
  %75 = add nsw i64 %73, %74
  %76 = inttoptr i64 %75 to i8*
  %77 = load i64, i64* %8, align 8
  %78 = load i32, i32* %14, align 4
  %79 = zext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = call i32 @copyout(i8* %76, i64 %77, i32 %81)
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %72, %52
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %85 = call i32 @task_unlock(%struct.TYPE_7__* %84)
  %86 = load i32, i32* %12, align 4
  %87 = zext i32 %86 to i64
  %88 = load i64*, i64** %6, align 8
  store i64 %87, i64* %88, align 8
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %83, %32, %27, %19
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_7__* @current_task(...) #1

declare dso_local i32 @task_lock(%struct.TYPE_7__*) #1

declare dso_local i32 @copyout(i8*, i64, i32) #1

declare dso_local i64 @current_ldt(...) #1

declare dso_local i32 @task_unlock(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
