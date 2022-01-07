; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_deactivate_pages_in_object.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_deactivate_pages_in_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.pmap = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i64, i32 }
%struct.vm_page_delayed_work = type { i32 }

@DEFAULT_DELAYED_WORK_LIMIT = common dso_local global i32 0, align 4
@VM_PAGE_NULL = common dso_local global %struct.TYPE_14__* null, align 8
@VM_MEM_REFERENCED = common dso_local global i32 0, align 4
@DW_clear_reference = common dso_local global i32 0, align 4
@madvise_free_debug = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@VM_MEM_MODIFIED = common dso_local global i32 0, align 4
@VM_PAGE_ON_THROTTLED_Q = common dso_local global i64 0, align 8
@DW_move_page = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@PMAP_OPTIONS_SET_REUSABLE = common dso_local global i32 0, align 4
@PMAP_OPTIONS_NOFLUSH = common dso_local global i32 0, align 4
@vm_page_stats_reusable = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4
@PMAP_NULL = common dso_local global %struct.pmap* null, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PMAP_OPTIONS_REMOVE = common dso_local global i32 0, align 4
@PAGE_SIZE_64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32, i64, i64, i64, i64, i32*, i32*, %struct.pmap*, i64)* @deactivate_pages_in_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deactivate_pages_in_object(%struct.TYPE_15__* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, i32* %6, i32* %7, %struct.pmap* %8, i64 %9) #0 {
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.pmap*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_14__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.vm_page_delayed_work*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %11, align 8
  store i32 %1, i32* %12, align 4
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store %struct.pmap* %8, %struct.pmap** %19, align 8
  store i64 %9, i64* %20, align 8
  %31 = load i32, i32* @DEFAULT_DELAYED_WORK_LIMIT, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %23, align 8
  %34 = alloca %struct.vm_page_delayed_work, i64 %32, align 16
  store i64 %32, i64* %24, align 8
  store i32 0, i32* %28, align 4
  %35 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %34, i64 0
  store %struct.vm_page_delayed_work* %35, %struct.vm_page_delayed_work** %25, align 8
  store i32 0, i32* %26, align 4
  %36 = load i32, i32* @DEFAULT_DELAYED_WORK_LIMIT, align 4
  %37 = call i32 @DELAYED_WORK_LIMIT(i32 %36)
  store i32 %37, i32* %27, align 4
  store i32 0, i32* %22, align 4
  br label %38

38:                                               ; preds = %285, %10
  %39 = load i64, i64* %13, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32*, i32** %17, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @CHUNK_NOT_COMPLETE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %41, %38
  %47 = phi i1 [ false, %38 ], [ %45, %41 ]
  br i1 %47, label %48, label %299

48:                                               ; preds = %46
  %49 = load i32*, i32** %17, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %22, align 4
  %52 = call i64 @PAGE_ALREADY_HANDLED(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %285

55:                                               ; preds = %48
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call %struct.TYPE_14__* @vm_page_lookup(%struct.TYPE_15__* %56, i32 %57)
  store %struct.TYPE_14__* %58, %struct.TYPE_14__** %21, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** @VM_PAGE_NULL, align 8
  %60 = icmp ne %struct.TYPE_14__* %58, %59
  br i1 %60, label %61, label %249

61:                                               ; preds = %55
  %62 = load i32*, i32** %17, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %22, align 4
  %65 = call i32 @MARK_PAGE_HANDLED(i32 %63, i32 %64)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %67 = call i32 @VM_PAGE_WIRED(%struct.TYPE_14__* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %248, label %69

69:                                               ; preds = %61
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %248, label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %248, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %248, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %248, label %89

89:                                               ; preds = %84
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %248, label %94

94:                                               ; preds = %89
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %248, label %99

99:                                               ; preds = %94
  %100 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %25, align 8
  %101 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %100, i32 0, i32 0
  store i32 0, i32* %101, align 4
  store i32 0, i32* %30, align 4
  %102 = load i32, i32* @VM_MEM_REFERENCED, align 4
  store i32 %102, i32* %29, align 4
  %103 = load i32, i32* @DW_clear_reference, align 4
  %104 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %25, align 8
  %105 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load i64, i64* %14, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %189

110:                                              ; preds = %99
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %189

115:                                              ; preds = %110
  %116 = load i64, i64* @madvise_free_debug, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %120 = call i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_14__* %119)
  %121 = call i32 @pmap_zero_page(i32 %120)
  br label %122

122:                                              ; preds = %118, %115
  %123 = load i8*, i8** @FALSE, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 3
  store i8* %123, i8** %125, align 8
  %126 = load i8*, i8** @FALSE, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  %129 = load i32, i32* @VM_MEM_MODIFIED, align 4
  %130 = load i32, i32* %29, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %29, align 4
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @VM_PAGE_ON_THROTTLED_Q, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %122
  %138 = load i32, i32* @DW_move_page, align 4
  %139 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %25, align 8
  %140 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %137, %122
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @VM_COMPRESSOR_PAGER_STATE_CLR(%struct.TYPE_15__* %144, i32 %145)
  %147 = load i64, i64* %15, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %188

149:                                              ; preds = %143
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %188, label %154

154:                                              ; preds = %149
  %155 = load i64, i64* %16, align 8
  %156 = icmp ne i64 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = call i32 @assert(i32 %158)
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  %167 = load i64, i64* @TRUE, align 8
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 1
  store i64 %167, i64* %169, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, 1
  store i64 %173, i64* %171, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp sge i64 %176, %179
  %181 = zext i1 %180 to i32
  %182 = call i32 @assert(i32 %181)
  %183 = load i32, i32* %28, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %28, align 4
  %185 = load i32, i32* @PMAP_OPTIONS_SET_REUSABLE, align 4
  %186 = load i32, i32* %30, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %30, align 4
  br label %188

188:                                              ; preds = %154, %149, %143
  br label %189

189:                                              ; preds = %188, %110, %99
  %190 = load i32, i32* @PMAP_OPTIONS_NOFLUSH, align 4
  %191 = load i32, i32* %30, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %30, align 4
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %194 = call i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_14__* %193)
  %195 = load i32, i32* %29, align 4
  %196 = load i32, i32* %30, align 4
  %197 = load i32*, i32** %18, align 8
  %198 = bitcast i32* %197 to i8*
  %199 = call i32 @pmap_clear_refmod_options(i32 %194, i32 %195, i32 %196, i8* %198)
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @VM_PAGE_ON_THROTTLED_Q, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %217

205:                                              ; preds = %189
  %206 = load i64, i64* %15, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %217, label %208

208:                                              ; preds = %205
  %209 = load i64, i64* %16, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %217, label %211

211:                                              ; preds = %208
  %212 = load i32, i32* @DW_move_page, align 4
  %213 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %25, align 8
  %214 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %211, %208, %205, %189
  %218 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %25, align 8
  %219 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %217
  %223 = load %struct.vm_page_delayed_work*, %struct.vm_page_delayed_work** %25, align 8
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %225 = load i32, i32* %26, align 4
  %226 = call i32 @VM_PAGE_ADD_DELAYED_WORK(%struct.vm_page_delayed_work* %223, %struct.TYPE_14__* %224, i32 %225)
  br label %227

227:                                              ; preds = %222, %217
  %228 = load i32, i32* %26, align 4
  %229 = load i32, i32* %27, align 4
  %230 = icmp sge i32 %228, %229
  br i1 %230, label %231, label %247

231:                                              ; preds = %227
  %232 = load i32, i32* %28, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %231
  %235 = load i32, i32* %28, align 4
  %236 = call i32 @OSAddAtomic(i32 %235, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @vm_page_stats_reusable, i32 0, i32 1))
  %237 = load i32, i32* %28, align 4
  %238 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @vm_page_stats_reusable, i32 0, i32 0), align 4
  %239 = add i32 %238, %237
  store i32 %239, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @vm_page_stats_reusable, i32 0, i32 0), align 4
  store i32 0, i32* %28, align 4
  br label %240

240:                                              ; preds = %234, %231
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %242 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %243 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %34, i64 0
  %244 = load i32, i32* %26, align 4
  %245 = call i32 @vm_page_do_delayed_work(%struct.TYPE_15__* %241, i32 %242, %struct.vm_page_delayed_work* %243, i32 %244)
  %246 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %34, i64 0
  store %struct.vm_page_delayed_work* %246, %struct.vm_page_delayed_work** %25, align 8
  store i32 0, i32* %26, align 4
  br label %247

247:                                              ; preds = %240, %227
  br label %248

248:                                              ; preds = %247, %94, %89, %84, %79, %74, %69, %61
  br label %284

249:                                              ; preds = %55
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %251 = load i32, i32* %12, align 4
  %252 = call i64 @page_is_paged_out(%struct.TYPE_15__* %250, i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %283

254:                                              ; preds = %249
  %255 = load i32*, i32** %17, align 8
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %22, align 4
  %258 = call i32 @MARK_PAGE_HANDLED(i32 %256, i32 %257)
  %259 = load i64, i64* %14, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %282

261:                                              ; preds = %254
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %282

266:                                              ; preds = %261
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %268 = load i32, i32* %12, align 4
  %269 = call i32 @VM_COMPRESSOR_PAGER_STATE_CLR(%struct.TYPE_15__* %267, i32 %268)
  %270 = load %struct.pmap*, %struct.pmap** %19, align 8
  %271 = load %struct.pmap*, %struct.pmap** @PMAP_NULL, align 8
  %272 = icmp ne %struct.pmap* %270, %271
  br i1 %272, label %273, label %281

273:                                              ; preds = %266
  %274 = load %struct.pmap*, %struct.pmap** %19, align 8
  %275 = load i64, i64* %20, align 8
  %276 = load i64, i64* %20, align 8
  %277 = load i64, i64* @PAGE_SIZE, align 8
  %278 = add nsw i64 %276, %277
  %279 = load i32, i32* @PMAP_OPTIONS_REMOVE, align 4
  %280 = call i32 @pmap_remove_options(%struct.pmap* %274, i64 %275, i64 %278, i32 %279)
  br label %281

281:                                              ; preds = %273, %266
  br label %282

282:                                              ; preds = %281, %261, %254
  br label %283

283:                                              ; preds = %282, %249
  br label %284

284:                                              ; preds = %283, %248
  br label %285

285:                                              ; preds = %284, %54
  %286 = load i32, i32* %22, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %22, align 4
  %288 = load i64, i64* @PAGE_SIZE_64, align 8
  %289 = load i64, i64* %13, align 8
  %290 = sub nsw i64 %289, %288
  store i64 %290, i64* %13, align 8
  %291 = load i64, i64* @PAGE_SIZE_64, align 8
  %292 = load i32, i32* %12, align 4
  %293 = sext i32 %292 to i64
  %294 = add nsw i64 %293, %291
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %12, align 4
  %296 = load i64, i64* @PAGE_SIZE_64, align 8
  %297 = load i64, i64* %20, align 8
  %298 = add nsw i64 %297, %296
  store i64 %298, i64* %20, align 8
  br label %38

299:                                              ; preds = %46
  %300 = load i32, i32* %28, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %308

302:                                              ; preds = %299
  %303 = load i32, i32* %28, align 4
  %304 = call i32 @OSAddAtomic(i32 %303, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @vm_page_stats_reusable, i32 0, i32 1))
  %305 = load i32, i32* %28, align 4
  %306 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @vm_page_stats_reusable, i32 0, i32 0), align 4
  %307 = add i32 %306, %305
  store i32 %307, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @vm_page_stats_reusable, i32 0, i32 0), align 4
  store i32 0, i32* %28, align 4
  br label %308

308:                                              ; preds = %302, %299
  %309 = load i32, i32* %26, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %317

311:                                              ; preds = %308
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %313 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %314 = getelementptr inbounds %struct.vm_page_delayed_work, %struct.vm_page_delayed_work* %34, i64 0
  %315 = load i32, i32* %26, align 4
  %316 = call i32 @vm_page_do_delayed_work(%struct.TYPE_15__* %312, i32 %313, %struct.vm_page_delayed_work* %314, i32 %315)
  br label %317

317:                                              ; preds = %311, %308
  %318 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %318)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DELAYED_WORK_LIMIT(i32) #2

declare dso_local i64 @CHUNK_NOT_COMPLETE(i32) #2

declare dso_local i64 @PAGE_ALREADY_HANDLED(i32, i32) #2

declare dso_local %struct.TYPE_14__* @vm_page_lookup(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @MARK_PAGE_HANDLED(i32, i32) #2

declare dso_local i32 @VM_PAGE_WIRED(%struct.TYPE_14__*) #2

declare dso_local i32 @pmap_zero_page(i32) #2

declare dso_local i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_14__*) #2

declare dso_local i32 @VM_COMPRESSOR_PAGER_STATE_CLR(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @pmap_clear_refmod_options(i32, i32, i32, i8*) #2

declare dso_local i32 @VM_PAGE_ADD_DELAYED_WORK(%struct.vm_page_delayed_work*, %struct.TYPE_14__*, i32) #2

declare dso_local i32 @OSAddAtomic(i32, i32*) #2

declare dso_local i32 @vm_page_do_delayed_work(%struct.TYPE_15__*, i32, %struct.vm_page_delayed_work*, i32) #2

declare dso_local i64 @page_is_paged_out(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @pmap_remove_options(%struct.pmap*, i64, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
