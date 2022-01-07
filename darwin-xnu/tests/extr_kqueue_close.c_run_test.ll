; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kqueue_close.c_run_test.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kqueue_close.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"kqueue\00", align 1
@poll_kqueue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1
@timeout_ms = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"pthread_join\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @kqueue()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @T_QUIET, align 4
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @poll_kqueue, align 4
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @pthread_create(i32* %2, i32* null, i32 %8, i8* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @T_QUIET, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @timeout_ms, align 4
  %17 = mul nsw i32 %16, 1000
  %18 = call i32 @usleep(i32 %17)
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @close(i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @pthread_join(i32 %23, i32* null)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @T_QUIET, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @kqueue(...) #1

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i8*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i8*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
