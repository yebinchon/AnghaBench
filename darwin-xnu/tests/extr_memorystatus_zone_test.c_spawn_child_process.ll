; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_memorystatus_zone_test.c_spawn_child_process.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_memorystatus_zone_test.c_spawn_child_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@T_QUIET = common dso_local global i32 0, align 4
@num_children = common dso_local global i32 0, align 4
@MAX_CHILD_PROCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Spawned %d children. Timing out...\00", align 1
@current_test = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@testpath = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"dt_launch tool returned %d with error code %d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"dt_launch_tool\00", align 1
@child_pids = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @spawn_child_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spawn_child_process() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [50 x i8], align 16
  %3 = alloca [4 x i8*], align 16
  %4 = alloca i32, align 4
  store i32 -1, i32* %1, align 4
  %5 = load i32, i32* @T_QUIET, align 4
  %6 = load i32, i32* @num_children, align 4
  %7 = load i32, i32* @MAX_CHILD_PROCS, align 4
  %8 = load i32, i32* @MAX_CHILD_PROCS, align 4
  %9 = call i32 @T_ASSERT_LT(i32 %6, i32 %7, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_test, i32 0, i32 0), align 4
  %12 = call i32 @strlcpy(i8* %10, i32 %11, i32 50)
  %13 = load i8*, i8** @testpath, align 8
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* %3, i64 0, i64 0
  store i8* %13, i8** %14, align 16
  %15 = getelementptr inbounds [4 x i8*], [4 x i8*]* %3, i64 0, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  %16 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %17 = getelementptr inbounds [4 x i8*], [4 x i8*]* %3, i64 0, i64 2
  store i8* %16, i8** %17, align 16
  %18 = getelementptr inbounds [4 x i8*], [4 x i8*]* %3, i64 0, i64 3
  store i8* null, i8** %18, align 8
  %19 = getelementptr inbounds [4 x i8*], [4 x i8*]* %3, i64 0, i64 0
  %20 = call i32 @dt_launch_tool(i32* %1, i8** %19, i32 0, i32* null, i32* null)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %0
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @T_LOG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %0
  %28 = load i32, i32* @T_QUIET, align 4
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i32, i32* %1, align 4
  %32 = load i32*, i32** @child_pids, align 8
  %33 = load i32, i32* @num_children, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @num_children, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  store i32 %31, i32* %36, align 4
  ret void
}

declare dso_local i32 @T_ASSERT_LT(i32, i32, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @dt_launch_tool(i32*, i8**, i32, i32*, i32*) #1

declare dso_local i32 @T_LOG(i8*, i32, i32) #1

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
