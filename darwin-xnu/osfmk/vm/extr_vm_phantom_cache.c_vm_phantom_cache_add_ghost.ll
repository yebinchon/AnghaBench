; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_phantom_cache.c_vm_phantom_cache_add_ghost.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_phantom_cache.c_vm_phantom_cache_add_ghost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i64, i64, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i64, i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@vm_page_queue_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@vm_phantom_cache_num_entries = common dso_local global i64 0, align 8
@pg_masks = common dso_local global i32* null, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_GHOST_PAGE_MASK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@vm_phantom_object_id = common dso_local global i64 0, align 8
@VM_PHANTOM_OBJECT_ID_AFTER_WRAP = common dso_local global i64 0, align 8
@phantom_cache_stats = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@vm_phantom_cache_nindx = common dso_local global i64 0, align 8
@vm_phantom_cache = common dso_local global %struct.TYPE_16__* null, align 8
@vm_phantom_cache_hash = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"didn't find ghost in hash\0A\00", align 1
@VM_GHOST_PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_GHOST_OFFSET_MASK = common dso_local global i64 0, align 8
@vm_pageout_vminfo = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@sample_period_ghost_added_count_ssd = common dso_local global i32 0, align 4
@sample_period_ghost_added_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_phantom_cache_add_ghost(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %12 = call %struct.TYPE_15__* @VM_PAGE_OBJECT(%struct.TYPE_14__* %11)
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %4, align 8
  %13 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %14 = call i32 @LCK_MTX_ASSERT(i32* @vm_page_queue_lock, i32 %13)
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = call i32 @vm_object_lock_assert_exclusive(%struct.TYPE_15__* %15)
  %17 = load i64, i64* @vm_phantom_cache_num_entries, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %197

20:                                               ; preds = %1
  %21 = load i32*, i32** @pg_masks, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = lshr i64 %24, %25
  %27 = load i64, i64* @VM_GHOST_PAGE_MASK, align 8
  %28 = and i64 %26, %27
  %29 = getelementptr inbounds i32, i32* %21, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %20
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @vnode_pager_get_isSSD(i32 %38, i64* %7)
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @TRUE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i64, i64* @TRUE, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %43, %35
  %48 = load i64, i64* @vm_phantom_object_id, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* @vm_phantom_object_id, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  %52 = load i64, i64* @vm_phantom_object_id, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i64, i64* @VM_PHANTOM_OBJECT_ID_AFTER_WRAP, align 8
  store i64 %55, i64* @vm_phantom_object_id, align 8
  br label %56

56:                                               ; preds = %54, %47
  br label %70

57:                                               ; preds = %20
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %59 = call %struct.TYPE_16__* @vm_phantom_cache_lookup_ghost(%struct.TYPE_14__* %58, i32 0)
  store %struct.TYPE_16__* %59, %struct.TYPE_16__** %3, align 8
  %60 = icmp ne %struct.TYPE_16__* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @phantom_cache_stats, i32 0, i32 3), align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @phantom_cache_stats, i32 0, i32 3), align 4
  br label %186

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %56
  %71 = load i64, i64* @vm_phantom_cache_nindx, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* @vm_phantom_cache_nindx, align 8
  %73 = trunc i64 %71 to i32
  store i32 %73, i32* %5, align 4
  %74 = load i64, i64* @vm_phantom_cache_nindx, align 8
  %75 = load i64, i64* @vm_phantom_cache_num_entries, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  store i64 1, i64* @vm_phantom_cache_nindx, align 8
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @phantom_cache_stats, i32 0, i32 2), align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @phantom_cache_stats, i32 0, i32 2), align 4
  br label %80

80:                                               ; preds = %77, %70
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** @vm_phantom_cache, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i64 %83
  store %struct.TYPE_16__* %84, %struct.TYPE_16__** %3, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %145

89:                                               ; preds = %80
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @vm_phantom_hash(i64 %92, i64 %95)
  store i64 %96, i64* %8, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** @vm_phantom_cache, align 8
  %98 = load i64*, i64** @vm_phantom_cache_hash, align 8
  %99 = load i64, i64* %8, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i64 %101
  store %struct.TYPE_16__* %102, %struct.TYPE_16__** %9, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %105 = icmp eq %struct.TYPE_16__* %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %89
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load i64*, i64** @vm_phantom_cache_hash, align 8
  %111 = load i64, i64* %8, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  store i64 %109, i64* %112, align 8
  br label %142

113:                                              ; preds = %89
  br label %114

114:                                              ; preds = %135, %113
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %114
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** @vm_phantom_cache, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i64 %125
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %128 = icmp eq %struct.TYPE_16__* %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %121
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 3
  store i64 %132, i64* %134, align 8
  br label %141

135:                                              ; preds = %121
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** @vm_phantom_cache, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i64 %139
  store %struct.TYPE_16__* %140, %struct.TYPE_16__** %9, align 8
  br label %114

141:                                              ; preds = %129
  br label %142

142:                                              ; preds = %141, %106
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @phantom_cache_stats, i32 0, i32 1), align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @phantom_cache_stats, i32 0, i32 1), align 4
  br label %148

145:                                              ; preds = %80
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @phantom_cache_stats, i32 0, i32 0), align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @phantom_cache_stats, i32 0, i32 0), align 4
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i32, i32* %6, align 4
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @PAGE_SHIFT, align 8
  %156 = load i64, i64* @VM_GHOST_PAGE_SHIFT, align 8
  %157 = add i64 %155, %156
  %158 = lshr i64 %154, %157
  %159 = load i64, i64* @VM_GHOST_OFFSET_MASK, align 8
  %160 = and i64 %158, %159
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 2
  store i64 %160, i64* %162, align 8
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  store i64 %165, i64* %167, align 8
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = call i64 @vm_phantom_hash(i64 %170, i64 %173)
  store i64 %174, i64* %8, align 8
  %175 = load i64*, i64** @vm_phantom_cache_hash, align 8
  %176 = load i64, i64* %8, align 8
  %177 = getelementptr inbounds i64, i64* %175, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 3
  store i64 %178, i64* %180, align 8
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = load i64*, i64** @vm_phantom_cache_hash, align 8
  %184 = load i64, i64* %8, align 8
  %185 = getelementptr inbounds i64, i64* %183, i64 %184
  store i64 %182, i64* %185, align 8
  br label %186

186:                                              ; preds = %148, %61
  %187 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @vm_pageout_vminfo, i32 0, i32 0), align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @vm_pageout_vminfo, i32 0, i32 0), align 4
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %186
  %194 = call i32 @OSAddAtomic(i32 1, i32* @sample_period_ghost_added_count_ssd)
  br label %197

195:                                              ; preds = %186
  %196 = call i32 @OSAddAtomic(i32 1, i32* @sample_period_ghost_added_count)
  br label %197

197:                                              ; preds = %19, %195, %193
  ret void
}

declare dso_local %struct.TYPE_15__* @VM_PAGE_OBJECT(%struct.TYPE_14__*) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @vm_object_lock_assert_exclusive(%struct.TYPE_15__*) #1

declare dso_local i32 @vnode_pager_get_isSSD(i32, i64*) #1

declare dso_local %struct.TYPE_16__* @vm_phantom_cache_lookup_ghost(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @vm_phantom_hash(i64, i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
