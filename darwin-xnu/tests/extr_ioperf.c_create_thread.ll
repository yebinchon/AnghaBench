; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_ioperf.c_create_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_ioperf.c_create_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sched_param = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"pthread_attr_init\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"pthread_attr_setschedparam\00", align 1
@SCHED_RR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"pthread_attr_setschedpolicy\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"pthread_attr_destroy\00", align 1
@threads = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i8* (i8*)*)* @create_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_thread(i64 %0, i64 %1, i32 %2, i8* (i8*)* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8* (i8*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sched_param, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* (i8*)* %3, i8* (i8*)** %8, align 8
  %13 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %11, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %13, align 4
  %16 = call i32 @pthread_attr_init(i32* %12)
  %17 = call i32 @T_ASSERT_POSIX_ZERO(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @pthread_attr_setschedparam(i32* %12, %struct.sched_param* %11)
  %19 = call i32 @T_ASSERT_POSIX_ZERO(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @SCHED_RR, align 4
  %24 = call i32 @pthread_attr_setschedpolicy(i32* %12, i32 %23)
  %25 = call i32 @T_ASSERT_POSIX_ZERO(i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %4
  %27 = load i8* (i8*)*, i8* (i8*)** %8, align 8
  %28 = load i64, i64* %5, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @pthread_create(i32* %10, i32* %12, i8* (i8*)* %27, i8* %29)
  %31 = call i32 @T_ASSERT_POSIX_ZERO(i32 %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %32 = call i32 @pthread_attr_destroy(i32* %12)
  %33 = call i32 @T_ASSERT_POSIX_ZERO(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @threads, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* %10, align 4
  ret i32 %39
}

declare dso_local i32 @T_ASSERT_POSIX_ZERO(i32, i8*) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setschedparam(i32*, %struct.sched_param*) #1

declare dso_local i32 @pthread_attr_setschedpolicy(i32*, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i8* (i8*)*, i8*) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
