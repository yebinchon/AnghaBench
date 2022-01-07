; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_meminfo.c_kperf_meminfo_sample.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_meminfo.c_kperf_meminfo_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.meminfo = type { i8*, i8*, i32 }

@PERF_MI_SAMPLE = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@task_ledgers = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i8* null, align 8
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kperf_meminfo_sample(%struct.TYPE_5__* %0, %struct.meminfo* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.meminfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.meminfo* %1, %struct.meminfo** %4, align 8
  %8 = load %struct.meminfo*, %struct.meminfo** %4, align 8
  %9 = icmp ne %struct.meminfo* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i32, i32* @PERF_MI_SAMPLE, align 4
  %13 = load i32, i32* @DBG_FUNC_START, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @BUF_INFO(i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = call i32 @get_task_phys_footprint(%struct.TYPE_5__* %16)
  %18 = load %struct.meminfo*, %struct.meminfo** %4, align 8
  %19 = getelementptr inbounds %struct.meminfo, %struct.meminfo* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @task_ledgers, i32 0, i32 1), align 4
  %24 = call i64 @ledger_get_entries(i32 %22, i32 %23, i8** %5, i8** %6)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @KERN_SUCCESS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %2
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.meminfo*, %struct.meminfo** %4, align 8
  %36 = getelementptr inbounds %struct.meminfo, %struct.meminfo* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  br label %41

37:                                               ; preds = %2
  %38 = load i8*, i8** @UINT64_MAX, align 8
  %39 = load %struct.meminfo*, %struct.meminfo** %4, align 8
  %40 = getelementptr inbounds %struct.meminfo, %struct.meminfo* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %37, %28
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @task_ledgers, i32 0, i32 0), align 4
  %46 = call i64 @ledger_get_entries(i32 %44, i32 %45, i8** %5, i8** %6)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @KERN_SUCCESS, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %41
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.meminfo*, %struct.meminfo** %4, align 8
  %58 = getelementptr inbounds %struct.meminfo, %struct.meminfo* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  br label %63

59:                                               ; preds = %41
  %60 = load i8*, i8** @UINT64_MAX, align 8
  %61 = load %struct.meminfo*, %struct.meminfo** %4, align 8
  %62 = getelementptr inbounds %struct.meminfo, %struct.meminfo* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %59, %50
  %64 = load i32, i32* @PERF_MI_SAMPLE, align 4
  %65 = load i32, i32* @DBG_FUNC_END, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @BUF_INFO(i32 %66)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @BUF_INFO(i32) #1

declare dso_local i32 @get_task_phys_footprint(%struct.TYPE_5__*) #1

declare dso_local i64 @ledger_get_entries(i32, i32, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
