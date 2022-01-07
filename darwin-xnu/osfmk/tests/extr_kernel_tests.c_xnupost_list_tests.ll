; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/tests/extr_kernel_tests.c_xnupost_list_tests.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/tests/extr_kernel_tests.c_xnupost_list_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i8*, i32 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i64 0, align 8
@total_post_tests_count = common dso_local global i64 0, align 8
@kernel_post_args = common dso_local global i32 0, align 4
@POSTARGS_CUSTOM_TEST_RUNLIST = common dso_local global i32 0, align 4
@XT_CONFIG_IGNORE = common dso_local global i32 0, align 4
@XT_CONFIG_RUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"\0A[TEST] #%u is marked as ignored\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"\0A[TEST] TOC#%u name: %s expected: %d config: %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xnupost_list_tests(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* @KERN_SUCCESS, align 8
  %9 = call i64 (...) @xnupost_parse_config()
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %12, i64* %3, align 8
  br label %85

13:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %80, %13
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %83

18:                                               ; preds = %14
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %20
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %6, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load i64, i64* @total_post_tests_count, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* @total_post_tests_count, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %26, %18
  %32 = load i32, i32* @kernel_post_args, align 4
  %33 = load i32, i32* @POSTARGS_CUSTOM_TEST_RUNLIST, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %31
  %37 = load i32, i32* @XT_CONFIG_IGNORE, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @xnupost_should_run_test(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %36
  %48 = load i32, i32* @XT_CONFIG_IGNORE, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* @XT_CONFIG_RUN, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %47, %36
  br label %65

65:                                               ; preds = %64, %31
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %69, i8* %72, i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %65
  %81 = load i64, i64* %7, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %7, align 8
  br label %14

83:                                               ; preds = %14
  %84 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %84, i64* %3, align 8
  br label %85

85:                                               ; preds = %83, %11
  %86 = load i64, i64* %3, align 8
  ret i64 %86
}

declare dso_local i64 @xnupost_parse_config(...) #1

declare dso_local i64 @xnupost_should_run_test(i64) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
