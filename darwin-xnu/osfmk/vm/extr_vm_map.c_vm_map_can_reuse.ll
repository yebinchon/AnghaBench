; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_can_reuse.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_can_reuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_13__* }

@kernel_pmap = common dso_local global i64 0, align 8
@vm_page_stats_reusable = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@KERN_INVALID_ADDRESS = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i64, i64)* @vm_map_can_reuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_map_can_reuse(%struct.TYPE_12__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %10 = call i32 @vm_map_lock_read(%struct.TYPE_12__* %9)
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @kernel_pmap, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @vm_map_range_check(%struct.TYPE_12__* %18, i64 %19, i64 %20, %struct.TYPE_13__** %8)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %3
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = call i32 @vm_map_unlock_read(%struct.TYPE_12__* %24)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @vm_page_stats_reusable, i32 0, i32 1), align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @vm_page_stats_reusable, i32 0, i32 1), align 4
  %28 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %28, i32* %4, align 4
  br label %64

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %54, %29
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = call %struct.TYPE_13__* @vm_map_to_entry(%struct.TYPE_12__* %32)
  %34 = icmp ne %struct.TYPE_13__* %31, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp slt i64 %38, %39
  br label %41

41:                                               ; preds = %35, %30
  %42 = phi i1 [ false, %30 ], [ %40, %35 ]
  br i1 %42, label %43, label %58

43:                                               ; preds = %41
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %45 = call i32 @vm_map_entry_is_reusable(%struct.TYPE_13__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = call i32 @vm_map_unlock_read(%struct.TYPE_12__* %48)
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @vm_page_stats_reusable, i32 0, i32 1), align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @vm_page_stats_reusable, i32 0, i32 1), align 4
  %52 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %52, i32* %4, align 4
  br label %64

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %8, align 8
  br label %30

58:                                               ; preds = %41
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = call i32 @vm_map_unlock_read(%struct.TYPE_12__* %59)
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @vm_page_stats_reusable, i32 0, i32 0), align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @vm_page_stats_reusable, i32 0, i32 0), align 4
  %63 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %58, %47, %23
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @vm_map_lock_read(%struct.TYPE_12__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_map_range_check(%struct.TYPE_12__*, i64, i64, %struct.TYPE_13__**) #1

declare dso_local i32 @vm_map_unlock_read(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @vm_map_to_entry(%struct.TYPE_12__*) #1

declare dso_local i32 @vm_map_entry_is_reusable(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
