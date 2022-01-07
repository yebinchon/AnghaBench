; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mleak_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mleak_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mallocation = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__* }
%struct.mtrace = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }

@mleak_allocations = common dso_local global %struct.mallocation* null, align 8
@mleak_alloc_buckets = common dso_local global i32 0, align 4
@mleak_trace_buckets = common dso_local global i64 0, align 8
@mleak_lock = common dso_local global i32 0, align 4
@mleak_traces = common dso_local global %struct.mtrace* null, align 8
@mleak_table = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @mleak_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mleak_free(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.mallocation*, align 8
  %4 = alloca %struct.mtrace*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  br label %5

5:                                                ; preds = %71, %1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %75

8:                                                ; preds = %5
  %9 = load %struct.mallocation*, %struct.mallocation** @mleak_allocations, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = ptrtoint %struct.TYPE_4__* %10 to i64
  %12 = load i32, i32* @mleak_alloc_buckets, align 4
  %13 = call i64 @hashaddr(i64 %11, i32 %12)
  %14 = getelementptr inbounds %struct.mallocation, %struct.mallocation* %9, i64 %13
  store %struct.mallocation* %14, %struct.mallocation** %3, align 8
  %15 = load %struct.mallocation*, %struct.mallocation** %3, align 8
  %16 = getelementptr inbounds %struct.mallocation, %struct.mallocation* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = icmp eq %struct.TYPE_4__* %17, %18
  br i1 %19, label %20, label %71

20:                                               ; preds = %8
  %21 = load %struct.mallocation*, %struct.mallocation** %3, align 8
  %22 = getelementptr inbounds %struct.mallocation, %struct.mallocation* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @mleak_trace_buckets, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %71

26:                                               ; preds = %20
  %27 = load i32, i32* @mleak_lock, align 4
  %28 = call i32 @lck_mtx_lock_spin(i32 %27)
  %29 = load %struct.mallocation*, %struct.mallocation** %3, align 8
  %30 = getelementptr inbounds %struct.mallocation, %struct.mallocation* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = icmp eq %struct.TYPE_4__* %31, %32
  br i1 %33, label %34, label %68

34:                                               ; preds = %26
  %35 = load %struct.mallocation*, %struct.mallocation** %3, align 8
  %36 = getelementptr inbounds %struct.mallocation, %struct.mallocation* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @mleak_trace_buckets, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %34
  %41 = load %struct.mtrace*, %struct.mtrace** @mleak_traces, align 8
  %42 = load %struct.mallocation*, %struct.mallocation** %3, align 8
  %43 = getelementptr inbounds %struct.mallocation, %struct.mallocation* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %41, i64 %44
  store %struct.mtrace* %45, %struct.mtrace** %4, align 8
  %46 = load %struct.mtrace*, %struct.mtrace** %4, align 8
  %47 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %40
  %51 = load %struct.mtrace*, %struct.mtrace** %4, align 8
  %52 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %50, %40
  %56 = load %struct.mtrace*, %struct.mtrace** %4, align 8
  %57 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.mtrace*, %struct.mtrace** %4, align 8
  %62 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.mallocation*, %struct.mallocation** %3, align 8
  %65 = getelementptr inbounds %struct.mallocation, %struct.mallocation* %64, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %65, align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mleak_table, i32 0, i32 0), align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mleak_table, i32 0, i32 0), align 4
  br label %68

68:                                               ; preds = %63, %34, %26
  %69 = load i32, i32* @mleak_lock, align 4
  %70 = call i32 @lck_mtx_unlock(i32 %69)
  br label %71

71:                                               ; preds = %68, %20, %8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  store %struct.TYPE_4__* %74, %struct.TYPE_4__** %2, align 8
  br label %5

75:                                               ; preds = %5
  ret void
}

declare dso_local i64 @hashaddr(i64, i32) #1

declare dso_local i32 @lck_mtx_lock_spin(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
