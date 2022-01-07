; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_pages_reclaim.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_pages_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i64, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32 }

@pmap_pages_lock = common dso_local global i32 0, align 4
@pmap_pages_request_count = common dso_local global i32 0, align 4
@pmap_pages_request_acum = common dso_local global i32 0, align 4
@pmap_pages_reclaim_list = common dso_local global %struct.TYPE_19__* null, align 8
@pt_pages_lock = common dso_local global i32 0, align 4
@pt_page_list = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global %struct.TYPE_18__* null, align 8
@PT_INDEX_MAX = common dso_local global i32 0, align 4
@PT_DESC_REFCOUNT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"pmap_pages_reclaim(): No eligible page in pt_page_list\0A\00", align 1
@ARM_TTE_TYPE_MASK = common dso_local global i32 0, align 4
@ARM_TTE_TYPE_TABLE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PMAP_OPTIONS_REMOVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"pmap_pages_reclaim(): ptdp %p, count %d\0A\00", align 1
@PMAP_TT_L2_LEVEL = common dso_local global i32 0, align 4
@ARM_TT_L2_OFFMASK = common dso_local global i32 0, align 4
@ARM_TT_L2_SIZE = common dso_local global i32 0, align 4
@ARM_TT_L1_PT_OFFMASK = common dso_local global i32 0, align 4
@ARM_TT_L1_SIZE = common dso_local global i32 0, align 4
@PMAP_TT_L1_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_pages_reclaim() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = call i32 @pmap_simple_lock(i32* @pmap_pages_lock)
  %16 = load i32, i32* @pmap_pages_request_count, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @pmap_pages_request_count, align 4
  %18 = load i32, i32* @pmap_pages_request_acum, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @pmap_pages_request_acum, align 4
  br label %20

20:                                               ; preds = %0, %249
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pmap_pages_reclaim_list, align 8
  %22 = icmp ne %struct.TYPE_19__* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pmap_pages_reclaim_list, align 8
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %4, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** @pmap_pages_reclaim_list, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** @pmap_pages_reclaim_list, align 8
  %28 = call i32 @pmap_simple_unlock(i32* @pmap_pages_lock)
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %30 = ptrtoint %struct.TYPE_19__* %29 to i32
  %31 = call i64 @ml_static_vtop(i32 %30)
  %32 = trunc i64 %31 to i32
  ret i32 %32

33:                                               ; preds = %20
  %34 = call i32 @pmap_simple_unlock(i32* @pmap_pages_lock)
  %35 = call i32 @pmap_simple_lock(i32* @pt_pages_lock)
  %36 = call i64 @queue_first(i32* @pt_page_list)
  %37 = inttoptr i64 %36 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %3, align 8
  %38 = load i64, i64* @FALSE, align 8
  store i64 %38, i64* %1, align 8
  br label %39

39:                                               ; preds = %126, %33
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = ptrtoint %struct.TYPE_17__* %40 to i32
  %42 = call i32 @queue_end(i32* @pt_page_list, i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br i1 %44, label %45, label %131

45:                                               ; preds = %39
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FALSE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %126

53:                                               ; preds = %45
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  %58 = call i64 @pmap_simple_lock_try(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %126

60:                                               ; preds = %53
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** @kernel_pmap, align 8
  %65 = icmp ne %struct.TYPE_18__* %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %109, %60
  %69 = load i32, i32* %2, align 4
  %70 = load i32, i32* @PT_INDEX_MAX, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %112

72:                                               ; preds = %68
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = load i32, i32* %2, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PT_DESC_REFCOUNT, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %112

84:                                               ; preds = %72
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = load i32, i32* %2, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = zext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %5, align 4
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = load i32, i32* %2, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = zext i32 %105 to i64
  %107 = add nsw i64 %106, %104
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %84
  %110 = load i32, i32* %2, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %2, align 4
  br label %68

112:                                              ; preds = %83, %68
  %113 = load i32, i32* %6, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i64, i64* @TRUE, align 8
  store i64 %119, i64* %1, align 8
  br label %131

120:                                              ; preds = %115, %112
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 2
  %125 = call i32 @pmap_simple_unlock(i32* %124)
  br label %126

126:                                              ; preds = %120, %53, %45
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %128 = ptrtoint %struct.TYPE_17__* %127 to i32
  %129 = call i64 @queue_next(i32 %128)
  %130 = inttoptr i64 %129 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %130, %struct.TYPE_17__** %3, align 8
  br label %39

131:                                              ; preds = %118, %39
  %132 = load i64, i64* %1, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %131
  %135 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %249

136:                                              ; preds = %131
  store i32 0, i32* %7, align 4
  store i32 0, i32* %14, align 4
  %137 = call i32 @pmap_simple_unlock(i32* @pt_pages_lock)
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %139, align 8
  store %struct.TYPE_18__* %140, %struct.TYPE_18__** %9, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %142 = call i32 @PMAP_ASSERT_LOCKED(%struct.TYPE_18__* %141)
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %242, %136
  %144 = load i32, i32* %2, align 4
  %145 = load i32, i32* @PT_INDEX_MAX, align 4
  %146 = icmp ult i32 %144, %145
  br i1 %146, label %147, label %245

147:                                              ; preds = %143
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = load i32, i32* %2, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %158, label %159

158:                                              ; preds = %147
  br label %242

159:                                              ; preds = %147
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %161 = load i32, i32* %8, align 4
  %162 = call i32* @pmap_tte(%struct.TYPE_18__* %160, i32 %161)
  store i32* %162, i32** %13, align 8
  %163 = load i32*, i32** %13, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %241

165:                                              ; preds = %159
  %166 = load i32*, i32** %13, align 8
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @ARM_TTE_TYPE_MASK, align 4
  %169 = and i32 %167, %168
  %170 = load i32, i32* @ARM_TTE_TYPE_TABLE, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %241

172:                                              ; preds = %165
  %173 = load i32*, i32** %13, align 8
  %174 = load i32, i32* %173, align 4
  %175 = call i64 @ttetokv(i32 %174)
  %176 = inttoptr i64 %175 to i32*
  store i32* %176, i32** %12, align 8
  %177 = load i32*, i32** %12, align 8
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %179 = load i32, i32* %8, align 4
  %180 = call i64 @tt3_index(%struct.TYPE_18__* %178, i32 %179)
  %181 = getelementptr inbounds i32, i32* %177, i64 %180
  store i32* %181, i32** %10, align 8
  %182 = load i32*, i32** %10, align 8
  %183 = load i32, i32* @PAGE_SIZE, align 4
  %184 = sext i32 %183 to i64
  %185 = udiv i64 %184, 4
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  store i32* %186, i32** %11, align 8
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %188 = load i32, i32* %8, align 4
  %189 = load i32*, i32** %10, align 8
  %190 = load i32*, i32** %11, align 8
  %191 = load i32, i32* @PMAP_OPTIONS_REMOVE, align 4
  %192 = call i64 @pmap_remove_range_options(%struct.TYPE_18__* %187, i32 %188, i32* %189, i32* %190, i32* %14, i32 %191)
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %194, %192
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %7, align 4
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %198, align 8
  %200 = load i32*, i32** %12, align 8
  %201 = call i64 @ARM_PT_DESC_INDEX(i32* %200)
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %217

206:                                              ; preds = %172
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %209, align 8
  %211 = load i32*, i32** %12, align 8
  %212 = call i64 @ARM_PT_DESC_INDEX(i32* %211)
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_17__* %207, i64 %215)
  br label %217

217:                                              ; preds = %206, %172
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %219 = load i32*, i32** %13, align 8
  %220 = load i32, i32* @PMAP_TT_L2_LEVEL, align 4
  %221 = call i32 @pmap_tte_deallocate(%struct.TYPE_18__* %218, i32* %219, i32 %220)
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* @ARM_TT_L2_OFFMASK, align 4
  %224 = xor i32 %223, -1
  %225 = and i32 %222, %224
  %226 = call i32 @tlbi_addr(i32 %225)
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @tlbi_asid(i32 %229)
  %231 = or i32 %226, %230
  %232 = call i32 @flush_mmu_tlb_entry_async(i32 %231)
  %233 = load i32, i32* %7, align 4
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %217
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* @ARM_TT_L2_SIZE, align 4
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %239 = call i32 @flush_mmu_tlb_region_asid_async(i32 %236, i32 %237, %struct.TYPE_18__* %238)
  br label %240

240:                                              ; preds = %235, %217
  br label %241

241:                                              ; preds = %240, %165, %159
  br label %242

242:                                              ; preds = %241, %158
  %243 = load i32, i32* %2, align 4
  %244 = add i32 %243, 1
  store i32 %244, i32* %2, align 4
  br label %143

245:                                              ; preds = %143
  %246 = call i32 (...) @sync_tlb_flush()
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %248 = call i32 @PMAP_UNLOCK(%struct.TYPE_18__* %247)
  br label %249

249:                                              ; preds = %245, %134
  %250 = call i32 @pmap_simple_lock(i32* @pmap_pages_lock)
  br label %20
}

declare dso_local i32 @pmap_simple_lock(i32*) #1

declare dso_local i32 @pmap_simple_unlock(i32*) #1

declare dso_local i64 @ml_static_vtop(i32) #1

declare dso_local i64 @queue_first(i32*) #1

declare dso_local i32 @queue_end(i32*, i32) #1

declare dso_local i64 @pmap_simple_lock_try(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @queue_next(i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @PMAP_ASSERT_LOCKED(%struct.TYPE_18__*) #1

declare dso_local i32* @pmap_tte(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @ttetokv(i32) #1

declare dso_local i64 @tt3_index(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @pmap_remove_range_options(%struct.TYPE_18__*, i32, i32*, i32*, i32*, i32) #1

declare dso_local i64 @ARM_PT_DESC_INDEX(i32*) #1

declare dso_local i32 @pmap_tte_deallocate(%struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @flush_mmu_tlb_entry_async(i32) #1

declare dso_local i32 @tlbi_addr(i32) #1

declare dso_local i32 @tlbi_asid(i32) #1

declare dso_local i32 @flush_mmu_tlb_region_asid_async(i32, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @sync_tlb_flush(...) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
