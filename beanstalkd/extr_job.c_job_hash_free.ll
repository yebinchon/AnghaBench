; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_job.c_job_hash_free.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_job.c_job_hash_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@all_jobs = common dso_local global %struct.TYPE_6__** null, align 8
@all_jobs_used = common dso_local global i32 0, align 4
@all_jobs_cap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @job_hash_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @job_hash_free(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @all_jobs, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @_get_job_hash_index(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %4, i64 %9
  store %struct.TYPE_6__** %10, %struct.TYPE_6__*** %3, align 8
  br label %11

11:                                               ; preds = %22, %1
  %12 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = icmp ne %struct.TYPE_6__* %17, %18
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi i1 [ false, %11 ], [ %19, %15 ]
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store %struct.TYPE_6__** %25, %struct.TYPE_6__*** %3, align 8
  br label %11

26:                                               ; preds = %20
  %27 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %35, align 8
  %36 = load i32, i32* @all_jobs_used, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* @all_jobs_used, align 4
  br label %38

38:                                               ; preds = %30, %26
  %39 = load i32, i32* @all_jobs_used, align 4
  %40 = load i32, i32* @all_jobs_cap, align 4
  %41 = ashr i32 %40, 4
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @rehash(i32 0)
  br label %45

45:                                               ; preds = %43, %38
  ret void
}

declare dso_local i64 @_get_job_hash_index(i32) #1

declare dso_local i32 @rehash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
