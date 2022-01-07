; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_c_seg_free_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_c_seg_free_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64, i64, i32, i32, i32, i32, %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32* }

@TRUE = common dso_local global i64 0, align 8
@c_overage_swapped_count = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@C_IS_FREE = common dso_local global i32 0, align 4
@c_list_lock = common dso_local global i32* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@compressor_map = common dso_local global i32 0, align 4
@KMA_COMPRESSOR = common dso_local global i32 0, align 4
@c_free_segno_head = common dso_local global i32 0, align 4
@c_segments = common dso_local global %struct.TYPE_11__* null, align 8
@c_segment_count = common dso_local global i32 0, align 4
@vm_compressor_lck_grp = common dso_local global i32 0, align 4
@compressor_segment_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_seg_free_locked(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TRUE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %1
  %37 = load i32, i32* @c_overage_swapped_count, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* @c_overage_swapped_count, align 4
  %39 = load i64, i64* @FALSE, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %36, %1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = call i32 @C_SEG_IS_ONDISK(%struct.TYPE_10__* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 7
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %5, align 8
  br label %56

51:                                               ; preds = %42
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 7
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %58 = load i32, i32* @C_IS_FREE, align 4
  %59 = load i64, i64* @FALSE, align 8
  %60 = call i32 @c_seg_switch_state(%struct.TYPE_10__* %57, i32 %58, i64 %59)
  %61 = load i32*, i32** @c_list_lock, align 8
  %62 = call i32 @lck_mtx_unlock_always(i32* %61)
  %63 = load i32*, i32** %5, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %56
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @C_SEG_OFFSET_TO_BYTES(i32 %68)
  %70 = call i32 @round_page_32(i32 %69)
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = sdiv i32 %70, %71
  store i32 %72, i32* %4, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 7
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  store i32* null, i32** %75, align 8
  br label %80

76:                                               ; preds = %56
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i64 -1, i64* %79, align 8
  br label %80

80:                                               ; preds = %76, %65
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 6
  %83 = call i32 @lck_mtx_unlock_always(i32* %82)
  %84 = load i32*, i32** %5, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %99

86:                                               ; preds = %80
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load i32, i32* @compressor_map, align 4
  %91 = load i32*, i32** %5, align 8
  %92 = ptrtoint i32* %91 to i32
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @PAGE_SIZE, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* @KMA_COMPRESSOR, align 4
  %97 = call i32 @kernel_memory_depopulate(i32 %90, i32 %92, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %89, %86
  br label %106

99:                                               ; preds = %80
  %100 = load i64, i64* %6, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @vm_swap_free(i64 %103)
  br label %105

105:                                              ; preds = %102, %99
  br label %106

106:                                              ; preds = %105, %98
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 6
  %109 = call i32 @lck_mtx_lock_spin_always(i32* %108)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %111 = call i32 @C_SEG_WAKEUP_DONE(%struct.TYPE_10__* %110)
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 6
  %114 = call i32 @lck_mtx_unlock_always(i32* %113)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %3, align 4
  %118 = load i32*, i32** @c_list_lock, align 8
  %119 = call i32 @lck_mtx_lock_spin_always(i32* %118)
  %120 = load i32, i32* @c_free_segno_head, align 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** @c_segments, align 8
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  store i32 %120, i32* %125, align 4
  %126 = load i32, i32* %3, align 4
  store i32 %126, i32* @c_free_segno_head, align 4
  %127 = load i32, i32* @c_segment_count, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* @c_segment_count, align 4
  %129 = load i32*, i32** @c_list_lock, align 8
  %130 = call i32 @lck_mtx_unlock_always(i32* %129)
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 6
  %133 = call i32 @lck_mtx_destroy(i32* %132, i32* @vm_compressor_lck_grp)
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %106
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = mul i64 4, %145
  %147 = trunc i64 %146 to i32
  %148 = call i32 @kfree(i32 %141, i32 %147)
  br label %149

149:                                              ; preds = %138, %106
  %150 = load i32, i32* @compressor_segment_zone, align 4
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %152 = call i32 @zfree(i32 %150, %struct.TYPE_10__* %151)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @C_SEG_IS_ONDISK(%struct.TYPE_10__*) #1

declare dso_local i32 @c_seg_switch_state(%struct.TYPE_10__*, i32, i64) #1

declare dso_local i32 @lck_mtx_unlock_always(i32*) #1

declare dso_local i32 @round_page_32(i32) #1

declare dso_local i32 @C_SEG_OFFSET_TO_BYTES(i32) #1

declare dso_local i32 @kernel_memory_depopulate(i32, i32, i32, i32) #1

declare dso_local i32 @vm_swap_free(i64) #1

declare dso_local i32 @lck_mtx_lock_spin_always(i32*) #1

declare dso_local i32 @C_SEG_WAKEUP_DONE(%struct.TYPE_10__*) #1

declare dso_local i32 @lck_mtx_destroy(i32*, i32*) #1

declare dso_local i32 @kfree(i32, i32) #1

declare dso_local i32 @zfree(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
