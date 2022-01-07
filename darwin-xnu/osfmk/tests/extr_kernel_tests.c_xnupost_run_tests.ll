; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/tests/extr_kernel_tests.c_xnupost_run_tests.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/tests/extr_kernel_tests.c_xnupost_run_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i8*, i8*, i32 (...)*, i8*, i32 }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@kernel_post_args = common dso_local global i32 0, align 4
@POSTARGS_RUN_TESTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"No POST boot-arg set.\0A\00", align 1
@T_START = common dso_local global i32 0, align 4
@XT_CONFIG_EXPECT_PANIC = common dso_local global i32 0, align 4
@POSTARGS_CONTROLLER_AVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Test expects panic but no controller is present\00", align 1
@XT_ACTION_SKIPPED = common dso_local global i8* null, align 8
@XT_CONFIG_IGNORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Test is marked as XT_CONFIG_IGNORE\00", align 1
@T_END = common dso_local global i32 0, align 4
@T_TESTRESULT = common dso_local global i64 0, align 8
@XT_ACTION_PASSED = common dso_local global i8* null, align 8
@XT_ACTION_FAILED = common dso_local global i8* null, align 8
@T_FINISH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xnupost_run_tests(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @kernel_post_args, align 4
  %11 = load i32, i32* @POSTARGS_RUN_TESTS, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %102

17:                                               ; preds = %2
  %18 = load i32, i32* @T_START, align 4
  br label %19

19:                                               ; preds = %96, %17
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %99

23:                                               ; preds = %19
  %24 = call i32 (...) @xnupost_reset_panic_widgets()
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %26
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %8, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @T_BEGIN(i32 %30)
  %32 = call i8* (...) @mach_absolute_time()
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 6
  store i8* %32, i8** %34, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 6
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @XT_CONFIG_EXPECT_PANIC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %23
  %47 = load i32, i32* @kernel_post_args, align 4
  %48 = load i32, i32* @POSTARGS_CONTROLLER_AVAILABLE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = call i32 @T_SKIP(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i8*, i8** @XT_ACTION_SKIPPED, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  br label %96

56:                                               ; preds = %46, %23
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @XT_CONFIG_IGNORE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = call i32 @T_SKIP(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i8*, i8** @XT_ACTION_SKIPPED, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  br label %96

68:                                               ; preds = %56
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 5
  %71 = load i32 (...)*, i32 (...)** %70, align 8
  %72 = call i32 (...) %71()
  %73 = load i32, i32* @T_END, align 4
  %74 = load i64, i64* @T_TESTRESULT, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = call i8* (...) @mach_absolute_time()
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 4
  store i8* %77, i8** %79, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %82, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %68
  %88 = load i8*, i8** @XT_ACTION_PASSED, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  br label %95

91:                                               ; preds = %68
  %92 = load i8*, i8** @XT_ACTION_FAILED, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %91, %87
  br label %96

96:                                               ; preds = %95, %63, %51
  %97 = load i64, i64* %6, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %6, align 8
  br label %19

99:                                               ; preds = %19
  %100 = load i32, i32* @T_FINISH, align 4
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %99, %14
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @xnupost_reset_panic_widgets(...) #1

declare dso_local i32 @T_BEGIN(i32) #1

declare dso_local i8* @mach_absolute_time(...) #1

declare dso_local i32 @T_SKIP(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
