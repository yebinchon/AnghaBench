; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp_desc.c_valid_user_data_selector.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp_desc.c_valid_user_data_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@SEL_LDT = common dso_local global i64 0, align 8
@GDTSZ = common dso_local global i64 0, align 8
@ACC_PL_U = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @valid_user_data_selector(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call { i64, i64 } @selector_to_sel(i64 %5)
  %7 = bitcast %struct.TYPE_4__* %4 to { i64, i64 }*
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  %9 = extractvalue { i64, i64 } %6, 0
  store i64 %9, i64* %8, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  %11 = extractvalue { i64, i64 } %6, 1
  store i64 %11, i64* %10, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @TRUE, align 4
  store i32 %15, i32* %2, align 4
  br label %43

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SEL_LDT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %2, align 4
  br label %43

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @GDTSZ, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load i64, i64* %3, align 8
  %30 = call %struct.TYPE_5__* @gdt_desc_p(i64 %29)
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ACC_PL_U, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @ACC_PL_U, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @TRUE, align 4
  store i32 %38, i32* %2, align 4
  br label %43

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %23
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %37, %21, %14
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local { i64, i64 } @selector_to_sel(i64) #1

declare dso_local %struct.TYPE_5__* @gdt_desc_p(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
