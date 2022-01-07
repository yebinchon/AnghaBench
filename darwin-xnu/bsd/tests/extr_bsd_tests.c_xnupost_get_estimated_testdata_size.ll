; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/tests/extr_bsd_tests.c_xnupost_get_estimated_testdata_size.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/tests/extr_bsd_tests.c_xnupost_get_estimated_testdata_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@bsd_post_tests_count = common dso_local global i32 0, align 4
@kernel_post_tests_count = common dso_local global i32 0, align 4
@kc_xnupost_test_def = common dso_local global %struct.TYPE_3__* null, align 8
@kc_xnupost_test_def_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xnupost_get_estimated_testdata_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @bsd_post_tests_count, align 4
  %5 = load i32, i32* @kernel_post_tests_count, align 4
  %6 = add nsw i32 %4, %5
  store i32 %6, i32* %1, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kc_xnupost_test_def, align 8
  %8 = load i32, i32* @kc_xnupost_test_def_count, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kc_xnupost_test_def, align 8
  %15 = load i32, i32* @kc_xnupost_test_def_count, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %17
  %19 = call i32 @kcs_get_elem_size(%struct.TYPE_3__* %18)
  %20 = add nsw i32 %13, %19
  store i32 %20, i32* %2, align 4
  store i32 1024, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1024
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* %2, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @kcs_get_elem_size(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
