; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_common.c_mapping_replenish.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_common.c_mapping_replenish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_11__ = type { i32 }

@TH_OPT_VMPRIV = common dso_local global i32 0, align 4
@pv_hashed_kern_free_count = common dso_local global i64 0, align 8
@pv_hashed_kern_low_water_mark = common dso_local global i64 0, align 8
@PV_HASHED_ENTRY_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@pv_hashed_kern_alloc_chunk = common dso_local global i32 0, align 4
@pv_hashed_list_zone = common dso_local global i32 0, align 4
@pmap_kernel_reserve_replenish_stat = common dso_local global i32 0, align 4
@pv_hashed_free_count = common dso_local global i64 0, align 8
@pv_hashed_low_water_mark = common dso_local global i64 0, align 8
@pv_hashed_alloc_chunk = common dso_local global i32 0, align 4
@pmap_user_reserve_replenish_stat = common dso_local global i32 0, align 4
@pmap_pv_throttled_waiters = common dso_local global i64 0, align 8
@pmap_user_pv_throttle_event = common dso_local global i32 0, align 4
@mapping_replenish_event = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@mappingrecurse = common dso_local global i64 0, align 8
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@pmap_mapping_thread_wakeups = common dso_local global i32 0, align 4

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @mapping_replenish() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @TH_OPT_VMPRIV, align 4
  %7 = call %struct.TYPE_11__* (...) @current_thread()
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  br label %11

11:                                               ; preds = %100, %99, %0
  br label %12

12:                                               ; preds = %43, %11
  %13 = load i64, i64* @pv_hashed_kern_free_count, align 8
  %14 = load i64, i64* @pv_hashed_kern_low_water_mark, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %51

16:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** @PV_HASHED_ENTRY_NULL, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %2, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %40, %16
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @pv_hashed_kern_alloc_chunk, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = load i32, i32* @pv_hashed_list_zone, align 4
  %24 = call i64 @zalloc(i32 %23)
  %25 = inttoptr i64 %24 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %1, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = bitcast %struct.TYPE_10__* %26 to i8*
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %2, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** @PV_HASHED_ENTRY_NULL, align 8
  %34 = icmp eq %struct.TYPE_10__* %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %3, align 8
  br label %37

37:                                               ; preds = %35, %22
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %18

43:                                               ; preds = %18
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @pmap_kernel_reserve_replenish_stat, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* @pmap_kernel_reserve_replenish_stat, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @PV_HASHED_KERN_FREE_LIST(%struct.TYPE_10__* %47, %struct.TYPE_10__* %48, i32 %49)
  br label %12

51:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** @PV_HASHED_ENTRY_NULL, align 8
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %2, align 8
  %53 = load i64, i64* @pv_hashed_free_count, align 8
  %54 = load i64, i64* @pv_hashed_low_water_mark, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %90

56:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %79, %56
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @pv_hashed_alloc_chunk, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %57
  %62 = load i32, i32* @pv_hashed_list_zone, align 4
  %63 = call i64 @zalloc(i32 %62)
  %64 = inttoptr i64 %63 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %1, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %66 = bitcast %struct.TYPE_10__* %65 to i8*
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i8* %66, i8** %69, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %2, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** @PV_HASHED_ENTRY_NULL, align 8
  %73 = icmp eq %struct.TYPE_10__* %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %61
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %3, align 8
  br label %76

76:                                               ; preds = %74, %61
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %5, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %57

82:                                               ; preds = %57
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @pmap_user_reserve_replenish_stat, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* @pmap_user_reserve_replenish_stat, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @PV_HASHED_FREE_LIST(%struct.TYPE_10__* %86, %struct.TYPE_10__* %87, i32 %88)
  br label %90

90:                                               ; preds = %82, %51
  %91 = load i64, i64* @pmap_pv_throttled_waiters, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  store i64 0, i64* @pmap_pv_throttled_waiters, align 8
  %94 = call i32 @thread_wakeup(i32* @pmap_user_pv_throttle_event)
  br label %95

95:                                               ; preds = %93, %90
  %96 = load i64, i64* @pv_hashed_kern_free_count, align 8
  %97 = load i64, i64* @pv_hashed_kern_low_water_mark, align 8
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %11

100:                                              ; preds = %95
  %101 = load i32, i32* @THREAD_UNINT, align 4
  %102 = call i32 @assert_wait(i32* @mapping_replenish_event, i32 %101)
  store i64 0, i64* @mappingrecurse, align 8
  %103 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %104 = call i32 @thread_block(i32 %103)
  %105 = load i32, i32* @pmap_mapping_thread_wakeups, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* @pmap_mapping_thread_wakeups, align 4
  br label %11
}

declare dso_local %struct.TYPE_11__* @current_thread(...) #1

declare dso_local i64 @zalloc(i32) #1

declare dso_local i32 @PV_HASHED_KERN_FREE_LIST(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @PV_HASHED_FREE_LIST(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @thread_wakeup(i32*) #1

declare dso_local i32 @assert_wait(i32*, i32) #1

declare dso_local i32 @thread_block(i32) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
