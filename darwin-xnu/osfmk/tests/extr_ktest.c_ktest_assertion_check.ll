; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/tests/extr_ktest.c_ktest_assertion_check.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/tests/extr_ktest.c_ktest_assertion_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ktest_testcase_result = common dso_local global i64 0, align 8
@T_RESULT_FAIL = common dso_local global i64 0, align 8
@T_RESULT_UXPASS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"XNUPOST: Assertion failed : %s : at %s:%d\00", align 1
@ktest_test_name = common dso_local global i32 0, align 4
@ktest_current_file = common dso_local global i32 0, align 4
@ktest_current_line = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ktest_assertion_check() #0 {
  %1 = load i64, i64* @ktest_testcase_result, align 8
  %2 = load i64, i64* @T_RESULT_FAIL, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = load i64, i64* @ktest_testcase_result, align 8
  %6 = load i64, i64* @T_RESULT_UXPASS, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %4, %0
  %9 = call i32 (...) @ktest_testend()
  %10 = load i32, i32* @ktest_test_name, align 4
  %11 = load i32, i32* @ktest_current_file, align 4
  %12 = load i32, i32* @ktest_current_line, align 4
  %13 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %8, %4
  ret void
}

declare dso_local i32 @ktest_testend(...) #1

declare dso_local i32 @panic(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
