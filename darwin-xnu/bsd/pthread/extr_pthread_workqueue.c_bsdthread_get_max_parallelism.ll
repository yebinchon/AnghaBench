; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_bsdthread_get_max_parallelism.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_bsdthread_get_max_parallelism.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QOS_PARALLELISM_COUNT_LOGICAL = common dso_local global i64 0, align 8
@_PTHREAD_QOS_PARALLELISM_COUNT_LOGICAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"logical\00", align 1
@QOS_PARALLELISM_REALTIME = common dso_local global i64 0, align 8
@_PTHREAD_QOS_PARALLELISM_REALTIME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"realtime\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@THREAD_QOS_UNSPECIFIED = common dso_local global i64 0, align 8
@THREAD_QOS_LAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32*)* @bsdthread_get_max_parallelism to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsdthread_get_max_parallelism(i64 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i64, i64* @QOS_PARALLELISM_COUNT_LOGICAL, align 8
  %9 = load i64, i64* @_PTHREAD_QOS_PARALLELISM_COUNT_LOGICAL, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @static_assert(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* @QOS_PARALLELISM_REALTIME, align 8
  %14 = load i64, i64* @_PTHREAD_QOS_PARALLELISM_REALTIME, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @static_assert(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @QOS_PARALLELISM_REALTIME, align 8
  %20 = load i64, i64* @QOS_PARALLELISM_COUNT_LOGICAL, align 8
  %21 = or i64 %19, %20
  %22 = xor i64 %21, -1
  %23 = and i64 %18, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %54

27:                                               ; preds = %3
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @QOS_PARALLELISM_REALTIME, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %4, align 4
  br label %54

37:                                               ; preds = %32
  br label %49

38:                                               ; preds = %27
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @THREAD_QOS_LAST, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %38
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %4, align 4
  br label %54

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %37
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @qos_max_parallelism(i64 %50, i64 %51)
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %46, %35, %25
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @static_assert(i32, i8*) #1

declare dso_local i32 @qos_max_parallelism(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
