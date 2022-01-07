; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/tests/extr_ktest.c_ktest_testcase.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/tests/extr_ktest.c_ktest_testcase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ktest_current_time = common dso_local global i32 0, align 4
@ktest_expectfail = common dso_local global i64 0, align 8
@ktest_passcount = common dso_local global i32 0, align 4
@T_RESULT_PASS = common dso_local global i64 0, align 8
@ktest_testcase_result = common dso_local global i64 0, align 8
@ktest_failcount = common dso_local global i32 0, align 4
@T_RESULT_FAIL = common dso_local global i64 0, align 8
@ktest_xpasscount = common dso_local global i32 0, align 4
@T_RESULT_UXPASS = common dso_local global i64 0, align 8
@ktest_xfailcount = common dso_local global i32 0, align 4
@T_RESULT_XFAIL = common dso_local global i64 0, align 8
@ktest_quiet = common dso_local global i64 0, align 8
@ktest_expression_index = common dso_local global i32 0, align 4
@ktest_output_buf = common dso_local global i8* null, align 8
@ktest_current_msg = common dso_local global i8* null, align 8
@ktest_current_expr = common dso_local global i8* null, align 8
@KTEST_MAXVARS = common dso_local global i32 0, align 4
@ktest_current_var_names = common dso_local global i8** null, align 8
@ktest_current_var_values = common dso_local global i8** null, align 8
@ktest_current_var_index = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ktest_testcase(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @mach_absolute_time()
  store i32 %4, i32* @ktest_current_time, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i64, i64* @ktest_expectfail, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* @ktest_passcount, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @ktest_passcount, align 4
  %13 = load i64, i64* @T_RESULT_PASS, align 8
  store i64 %13, i64* @ktest_testcase_result, align 8
  br label %47

14:                                               ; preds = %7, %1
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* @ktest_expectfail, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @ktest_failcount, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @ktest_failcount, align 4
  %23 = load i64, i64* @T_RESULT_FAIL, align 8
  store i64 %23, i64* @ktest_testcase_result, align 8
  br label %46

24:                                               ; preds = %17, %14
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i64, i64* @ktest_expectfail, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* @ktest_xpasscount, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @ktest_xpasscount, align 4
  %33 = load i64, i64* @T_RESULT_UXPASS, align 8
  store i64 %33, i64* @ktest_testcase_result, align 8
  br label %45

34:                                               ; preds = %27, %24
  %35 = load i32, i32* %2, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* @ktest_expectfail, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* @ktest_xfailcount, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @ktest_xfailcount, align 4
  %43 = load i64, i64* @T_RESULT_XFAIL, align 8
  store i64 %43, i64* @ktest_testcase_result, align 8
  br label %44

44:                                               ; preds = %40, %37, %34
  br label %45

45:                                               ; preds = %44, %30
  br label %46

46:                                               ; preds = %45, %20
  br label %47

47:                                               ; preds = %46, %10
  %48 = call i32 (...) @ktest_update_test_result_state()
  %49 = load i64, i64* @ktest_quiet, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* @ktest_testcase_result, align 8
  %53 = load i64, i64* @T_RESULT_FAIL, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* @ktest_testcase_result, align 8
  %57 = load i64, i64* @T_RESULT_UXPASS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55, %51, %47
  %60 = call i32 (...) @ktest_emit_testcase()
  br label %61

61:                                               ; preds = %59, %55
  %62 = load i32, i32* @ktest_expression_index, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @ktest_expression_index, align 4
  store i64 0, i64* @ktest_quiet, align 8
  store i64 0, i64* @ktest_expectfail, align 8
  %64 = load i8*, i8** @ktest_output_buf, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** @ktest_current_msg, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** @ktest_current_expr, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  store i8 0, i8* %69, align 1
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %87, %61
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @KTEST_MAXVARS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %70
  %75 = load i8**, i8*** @ktest_current_var_names, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  store i8 0, i8* %80, align 1
  %81 = load i8**, i8*** @ktest_current_var_values, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  store i8 0, i8* %86, align 1
  br label %87

87:                                               ; preds = %74
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %70

90:                                               ; preds = %70
  store i64 0, i64* @ktest_current_var_index, align 8
  ret void
}

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @ktest_update_test_result_state(...) #1

declare dso_local i32 @ktest_emit_testcase(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
