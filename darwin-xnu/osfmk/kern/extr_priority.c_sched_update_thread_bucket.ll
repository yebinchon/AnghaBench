; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_priority.c_sched_update_thread_bucket.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_priority.c_sched_update_thread_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32 }

@TH_BUCKET_RUN = common dso_local global i64 0, align 8
@TH_BUCKET_FIXPRI = common dso_local global i64 0, align 8
@BASEPRI_DEFAULT = common dso_local global i32 0, align 4
@TH_BUCKET_SHARE_FG = common dso_local global i64 0, align 8
@BASEPRI_UTILITY = common dso_local global i32 0, align 4
@TH_BUCKET_SHARE_DF = common dso_local global i64 0, align 8
@MAXPRI_THROTTLE = common dso_local global i32 0, align 4
@TH_BUCKET_SHARE_UT = common dso_local global i64 0, align 8
@TH_BUCKET_SHARE_BG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"unexpected mode: %d\00", align 1
@sched_pri_shifts = common dso_local global i32* null, align 8
@TH_RUN = common dso_local global i32 0, align 4
@TH_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @sched_update_thread_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sched_update_thread_bucket(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* @TH_BUCKET_RUN, align 8
  store i64 %8, i64* %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %43 [
    i32 130, label %12
    i32 129, label %12
    i32 128, label %14
  ]

12:                                               ; preds = %1, %1
  %13 = load i64, i64* @TH_BUCKET_FIXPRI, align 8
  store i64 %13, i64* %4, align 8
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BASEPRI_DEFAULT, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i64, i64* @TH_BUCKET_SHARE_FG, align 8
  store i64 %21, i64* %4, align 8
  br label %42

22:                                               ; preds = %14
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BASEPRI_UTILITY, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i64, i64* @TH_BUCKET_SHARE_DF, align 8
  store i64 %29, i64* %4, align 8
  br label %41

30:                                               ; preds = %22
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MAXPRI_THROTTLE, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* @TH_BUCKET_SHARE_UT, align 8
  store i64 %37, i64* %4, align 8
  br label %40

38:                                               ; preds = %30
  %39 = load i64, i64* @TH_BUCKET_SHARE_BG, align 8
  store i64 %39, i64* %4, align 8
  br label %40

40:                                               ; preds = %38, %36
  br label %41

41:                                               ; preds = %40, %28
  br label %42

42:                                               ; preds = %41, %20
  br label %48

43:                                               ; preds = %1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %43, %42, %12
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* %4, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %48
  %53 = load i64, i64* %4, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i32*, i32** @sched_pri_shifts, align 8
  %57 = load i64, i64* %4, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @TH_RUN, align 4
  %66 = load i32, i32* @TH_IDLE, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = load i32, i32* @TH_RUN, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %52
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @sched_decr_bucket(i64 %72)
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @sched_incr_bucket(i64 %74)
  br label %76

76:                                               ; preds = %71, %52
  br label %77

77:                                               ; preds = %76, %48
  ret void
}

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @sched_decr_bucket(i64) #1

declare dso_local i32 @sched_incr_bucket(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
