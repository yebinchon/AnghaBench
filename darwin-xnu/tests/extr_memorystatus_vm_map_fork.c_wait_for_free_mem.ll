; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_memorystatus_vm_map_fork.c_wait_for_free_mem.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_memorystatus_vm_map_fork.c_wait_for_free_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"hw.memsize\00", align 1
@T_QUIET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"sysctlbyname(hw.memsize...) failed\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"kern.memorystatus_level\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"memorystatus_level too high\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"memorystatus_level negative\00", align 1
@MEGABYTE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [93 x i8] c"Need %d MB, only %d MB available. sleeping 5 seconds for more to free. memorystatus_level %d\00", align 1
@.str.6 = private unnamed_addr constant [78 x i8] c"Needed %d MB, but only %d MB available. Skipping test to avoid jetsam issues.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @wait_for_free_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_free_mem(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i64 4, i64* %5, align 8
  %9 = call i32 @sysctlbyname(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %3, i64* %5, i32* null, i32 0)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @T_QUIET, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %13

13:                                               ; preds = %41, %1
  store i64 4, i64* %5, align 8
  %14 = call i32 @sysctlbyname(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %4, i64* %5, i32* null, i32 0)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %55

17:                                               ; preds = %13
  %18 = load i32, i32* @T_QUIET, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @T_ASSERT_LE(i32 %19, i32 100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %21 = load i32, i32* @T_QUIET, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @T_ASSERT_GT(i32 %22, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 %25, 15
  %27 = mul nsw i32 %24, %26
  %28 = sdiv i32 %27, 100
  %29 = call i32 @MAX(i32 0, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @MEGABYTE, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %17
  br label %55

36:                                               ; preds = %17
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %8, align 4
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %49

41:                                               ; preds = %36
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MEGABYTE, align 4
  %45 = sdiv i32 %43, %44
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @T_LOG(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.5, i64 0, i64 0), i32 %42, i32 %45, i32 %46)
  %48 = call i32 @sleep(i32 5)
  br label %13

49:                                               ; preds = %40
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @MEGABYTE, align 4
  %53 = sdiv i32 %51, %52
  %54 = call i32 @T_SKIP(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0), i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %49, %35, %16
  ret void
}

declare dso_local i32 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i8*) #1

declare dso_local i32 @T_ASSERT_LE(i32, i32, i8*) #1

declare dso_local i32 @T_ASSERT_GT(i32, i32, i8*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @T_LOG(i8*, i32, i32, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @T_SKIP(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
