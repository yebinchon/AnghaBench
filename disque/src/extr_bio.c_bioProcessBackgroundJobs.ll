; ModuleID = '/home/carl/AnghaBench/disque/src/extr_bio.c_bioProcessBackgroundJobs.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_bio.c_bioProcessBackgroundJobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_job = type { i64 }
%struct.TYPE_4__ = type { %struct.bio_job* }

@PTHREAD_CANCEL_ENABLE = common dso_local global i32 0, align 4
@PTHREAD_CANCEL_ASYNCHRONOUS = common dso_local global i32 0, align 4
@bio_mutex = common dso_local global i32* null, align 8
@SIGALRM = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Warning: can't mask SIGALRM in bio.c thread: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@bio_jobs = common dso_local global i32* null, align 8
@bio_newjob_cond = common dso_local global i32* null, align 8
@BIO_CLOSE_FILE = common dso_local global i64 0, align 8
@BIO_AOF_FSYNC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Wrong job type in bioProcessBackgroundJobs().\00", align 1
@bio_step_cond = common dso_local global i32* null, align 8
@bio_pending = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bioProcessBackgroundJobs(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bio_job*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = ptrtoint i8* %7 to i64
  store i64 %8, i64* %4, align 8
  %9 = load i32, i32* @PTHREAD_CANCEL_ENABLE, align 4
  %10 = call i32 @pthread_setcancelstate(i32 %9, i32* null)
  %11 = load i32, i32* @PTHREAD_CANCEL_ASYNCHRONOUS, align 4
  %12 = call i32 @pthread_setcanceltype(i32 %11, i32* null)
  %13 = load i32*, i32** @bio_mutex, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = call i32 @pthread_mutex_lock(i32* %15)
  %17 = call i32 @sigemptyset(i32* %5)
  %18 = load i32, i32* @SIGALRM, align 4
  %19 = call i32 @sigaddset(i32* %5, i32 %18)
  %20 = load i32, i32* @SIG_BLOCK, align 4
  %21 = call i64 @pthread_sigmask(i32 %20, i32* %5, i32* null)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load i32, i32* @LL_WARNING, align 4
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @strerror(i32 %25)
  %27 = call i32 @serverLog(i32 %24, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %23, %1
  br label %29

29:                                               ; preds = %28, %36, %77
  %30 = load i32*, i32** @bio_jobs, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @listLength(i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load i32*, i32** @bio_newjob_cond, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32*, i32** @bio_mutex, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = call i32 @pthread_cond_wait(i32* %39, i32* %42)
  br label %29

44:                                               ; preds = %29
  %45 = load i32*, i32** @bio_jobs, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.TYPE_4__* @listFirst(i32 %48)
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %6, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.bio_job*, %struct.bio_job** %51, align 8
  store %struct.bio_job* %52, %struct.bio_job** %3, align 8
  %53 = load i32*, i32** @bio_mutex, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = call i32 @pthread_mutex_unlock(i32* %55)
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @BIO_CLOSE_FILE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %44
  %61 = load %struct.bio_job*, %struct.bio_job** %3, align 8
  %62 = getelementptr inbounds %struct.bio_job, %struct.bio_job* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @close(i64 %63)
  br label %77

65:                                               ; preds = %44
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @BIO_AOF_FSYNC, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load %struct.bio_job*, %struct.bio_job** %3, align 8
  %71 = getelementptr inbounds %struct.bio_job, %struct.bio_job* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @aof_fsync(i64 %72)
  br label %76

74:                                               ; preds = %65
  %75 = call i32 @serverPanic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %69
  br label %77

77:                                               ; preds = %76, %60
  %78 = load %struct.bio_job*, %struct.bio_job** %3, align 8
  %79 = call i32 @zfree(%struct.bio_job* %78)
  %80 = load i32*, i32** @bio_step_cond, align 8
  %81 = load i64, i64* %4, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = call i32 @pthread_cond_broadcast(i32* %82)
  %84 = load i32*, i32** @bio_mutex, align 8
  %85 = load i64, i64* %4, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = call i32 @pthread_mutex_lock(i32* %86)
  %88 = load i32*, i32** @bio_jobs, align 8
  %89 = load i64, i64* %4, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %93 = call i32 @listDelNode(i32 %91, %struct.TYPE_4__* %92)
  %94 = load i32*, i32** @bio_pending, align 8
  %95 = load i64, i64* %4, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %96, align 4
  br label %29
}

declare dso_local i32 @pthread_setcancelstate(i32, i32*) #1

declare dso_local i32 @pthread_setcanceltype(i32, i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i64 @pthread_sigmask(i32, i32*, i32*) #1

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @listLength(i32) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @listFirst(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @aof_fsync(i64) #1

declare dso_local i32 @serverPanic(i8*) #1

declare dso_local i32 @zfree(%struct.bio_job*) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @listDelNode(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
