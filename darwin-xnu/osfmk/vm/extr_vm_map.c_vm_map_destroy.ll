; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_destroy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }

@VM_MAP_REMOVE_NO_UNNESTING = common dso_local global i32 0, align 4
@VM_MAP_REMOVE_IMMUTABLE = common dso_local global i32 0, align 4
@VM_MAP_REMOVE_GAPS_OK = common dso_local global i32 0, align 4
@VM_MAP_NULL = common dso_local global i32 0, align 4
@vm_map_lck_attr = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@LCK_ATTR_DEBUG = common dso_local global i32 0, align 4
@vm_map_lck_grp = common dso_local global i32 0, align 4
@vm_map_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_map_destroy(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %6 = call i32 @vm_map_lock(%struct.TYPE_12__* %5)
  %7 = load i32, i32* @VM_MAP_REMOVE_NO_UNNESTING, align 4
  %8 = load i32, i32* %4, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @VM_MAP_REMOVE_IMMUTABLE, align 4
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @VM_MAP_REMOVE_GAPS_OK, align 4
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @VM_MAP_NULL, align 4
  %25 = call i32 @vm_map_delete(%struct.TYPE_12__* %16, i32 %19, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @VM_MAP_NULL, align 4
  %29 = call i32 @vm_map_delete(%struct.TYPE_12__* %26, i32 0, i32 -4096, i32 %27, i32 %28)
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = call i32 @vm_map_disable_hole_optimization(%struct.TYPE_12__* %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = call i32 @vm_map_corpse_footprint_destroy(%struct.TYPE_12__* %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = call i32 @vm_map_unlock(%struct.TYPE_12__* %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %2
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @pmap_destroy(i64 %50)
  br label %52

52:                                               ; preds = %47, %2
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @vm_map_lck_attr, i32 0, i32 0), align 4
  %54 = load i32, i32* @LCK_ATTR_DEBUG, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %65

58:                                               ; preds = %52
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 3
  %61 = call i32 @lck_rw_destroy(i32* %60, i32* @vm_map_lck_grp)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = call i32 @lck_mtx_destroy(i32* %63, i32* @vm_map_lck_grp)
  br label %65

65:                                               ; preds = %58, %57
  %66 = load i32, i32* @vm_map_zone, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = call i32 @zfree(i32 %66, %struct.TYPE_12__* %67)
  ret void
}

declare dso_local i32 @vm_map_lock(%struct.TYPE_12__*) #1

declare dso_local i32 @vm_map_delete(%struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @vm_map_disable_hole_optimization(%struct.TYPE_12__*) #1

declare dso_local i32 @vm_map_corpse_footprint_destroy(%struct.TYPE_12__*) #1

declare dso_local i32 @vm_map_unlock(%struct.TYPE_12__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pmap_destroy(i64) #1

declare dso_local i32 @lck_rw_destroy(i32*, i32*) #1

declare dso_local i32 @lck_mtx_destroy(i32*, i32*) #1

declare dso_local i32 @zfree(i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
