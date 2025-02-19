; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_PV_ALLOC.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_PV_ALLOC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@PV_ENTRY_NULL = common dso_local global %struct.TYPE_5__* null, align 8
@pv_free_list_lock = common dso_local global i32 0, align 4
@pv_kern_free_count = common dso_local global i64 0, align 8
@pv_kern_low_water_mark = common dso_local global i64 0, align 8
@pv_free_list = common dso_local global %struct.TYPE_5__* null, align 8
@pv_free_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__**)* @PV_ALLOC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PV_ALLOC(%struct.TYPE_5__** %0) #0 {
  %2 = alloca %struct.TYPE_5__**, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %2, align 8
  %3 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PV_ENTRY_NULL, align 8
  %6 = icmp eq %struct.TYPE_5__* %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = call i32 @pmap_simple_lock(i32* @pv_free_list_lock)
  %10 = load i64, i64* @pv_kern_free_count, align 8
  %11 = load i64, i64* @pv_kern_low_water_mark, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pv_free_list, align 8
  %15 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %15, align 8
  %16 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** @pv_free_list, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PV_ENTRY_NULL, align 8
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %25, align 8
  %26 = load i32, i32* @pv_free_count, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* @pv_free_count, align 4
  br label %28

28:                                               ; preds = %17, %13, %1
  %29 = call i32 @pmap_simple_unlock(i32* @pv_free_list_lock)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pmap_simple_lock(i32*) #1

declare dso_local i32 @pmap_simple_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
