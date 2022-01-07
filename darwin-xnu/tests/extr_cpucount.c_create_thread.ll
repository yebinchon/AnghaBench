; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_cpucount.c_create_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_cpucount.c_create_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }

@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"pthread_attr_init\00", align 1
@PTHREAD_CREATE_DETACHED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"pthread_attr_setdetachstate\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"pthread_attr_setschedparam\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"pthread_attr_destroy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8* (i8*)*, i32)* @create_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_thread(i8* (i8*)* %0, i32 %1) #0 {
  %3 = alloca i8* (i8*)*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sched_param, align 4
  store i8* (i8*)* %0, i8* (i8*)** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %8, i32 0, i32 0
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %9, align 4
  %11 = call i32 @pthread_attr_init(i32* %7)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @T_QUIET, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @PTHREAD_CREATE_DETACHED, align 4
  %16 = call i32 @pthread_attr_setdetachstate(i32* %7, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @T_QUIET, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @pthread_attr_setschedparam(i32* %7, %struct.sched_param* %8)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @T_QUIET, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i8* (i8*)*, i8* (i8*)** %3, align 8
  %25 = call i32 @pthread_create(i32* %6, i32* %7, i8* (i8*)* %24, i32* null)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @T_QUIET, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 97
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @set_realtime(i32 %32)
  br label %34

34:                                               ; preds = %31, %2
  %35 = call i32 @pthread_attr_destroy(i32* %7)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @T_QUIET, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i8*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare dso_local i32 @pthread_attr_setschedparam(i32*, %struct.sched_param*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i8* (i8*)*, i32*) #1

declare dso_local i32 @set_realtime(i32) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
