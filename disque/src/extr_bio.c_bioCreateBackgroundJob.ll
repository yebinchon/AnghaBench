; ModuleID = '/home/carl/AnghaBench/disque/src/extr_bio.c_bioCreateBackgroundJob.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_bio.c_bioCreateBackgroundJob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_job = type { i8*, i8*, i8*, i32 }

@bio_mutex = common dso_local global i32* null, align 8
@bio_jobs = common dso_local global i32* null, align 8
@bio_pending = common dso_local global i32* null, align 8
@bio_newjob_cond = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bioCreateBackgroundJob(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bio_job*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = call %struct.bio_job* @zmalloc(i32 32)
  store %struct.bio_job* %10, %struct.bio_job** %9, align 8
  %11 = call i32 @time(i32* null)
  %12 = load %struct.bio_job*, %struct.bio_job** %9, align 8
  %13 = getelementptr inbounds %struct.bio_job, %struct.bio_job* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.bio_job*, %struct.bio_job** %9, align 8
  %16 = getelementptr inbounds %struct.bio_job, %struct.bio_job* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.bio_job*, %struct.bio_job** %9, align 8
  %19 = getelementptr inbounds %struct.bio_job, %struct.bio_job* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.bio_job*, %struct.bio_job** %9, align 8
  %22 = getelementptr inbounds %struct.bio_job, %struct.bio_job* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load i32*, i32** @bio_mutex, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @pthread_mutex_lock(i32* %26)
  %28 = load i32*, i32** @bio_jobs, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bio_job*, %struct.bio_job** %9, align 8
  %34 = call i32 @listAddNodeTail(i32 %32, %struct.bio_job* %33)
  %35 = load i32*, i32** @bio_pending, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load i32*, i32** @bio_newjob_cond, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @pthread_cond_signal(i32* %44)
  %46 = load i32*, i32** @bio_mutex, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @pthread_mutex_unlock(i32* %49)
  ret void
}

declare dso_local %struct.bio_job* @zmalloc(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @listAddNodeTail(i32, %struct.bio_job*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
