; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/tests/extr_kernel_tests.c_zalloc_test.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/tests/extr_kernel_tests.c_zalloc_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T_SETUPBEGIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"test_uint64_zone\00", align 1
@T_SETUPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"num_threads_at_ktest\00", align 1
@threads_count = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"# of threads in system at zalloc_test\00", align 1
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zalloc_test() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @T_SETUPBEGIN, align 4
  %4 = call i8* @zinit(i32 4, i32 400, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = call i32 @T_ASSERT_NOTNULL(i8* %5, i32* null)
  %7 = load i8*, i8** %1, align 8
  %8 = call i32 @zone_free_count(i8* %7)
  %9 = call i32 @T_ASSERT_EQ_INT(i32 %8, i32 0, i32* null)
  %10 = load i32, i32* @T_SETUPEND, align 4
  %11 = load i8*, i8** %1, align 8
  %12 = call i8* @zalloc(i8* %11)
  store i8* %12, i8** %2, align 8
  %13 = call i32 @T_ASSERT_NOTNULL(i8* %12, i32* null)
  %14 = load i8*, i8** %1, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @zfree(i8* %14, i8* %15)
  %17 = load i32, i32* @threads_count, align 4
  %18 = call i32 @T_PERF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %19 = load i32, i32* @KERN_SUCCESS, align 4
  ret i32 %19
}

declare dso_local i8* @zinit(i32, i32, i32, i8*) #1

declare dso_local i32 @T_ASSERT_NOTNULL(i8*, i32*) #1

declare dso_local i32 @T_ASSERT_EQ_INT(i32, i32, i32*) #1

declare dso_local i32 @zone_free_count(i8*) #1

declare dso_local i8* @zalloc(i8*) #1

declare dso_local i32 @zfree(i8*, i8*) #1

declare dso_local i32 @T_PERF(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
