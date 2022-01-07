; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_stackshot.c_kern_stack_snapshot_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_stackshot.c_kern_stack_snapshot_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32, i64, i32 }

@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@max_tracebuf_size = common dso_local global i32 0, align 4
@KERN_NOT_SUPPORTED = common dso_local global i32 0, align 4
@STACKSHOT_TRYLOCK = common dso_local global i32 0, align 4
@STACKSHOT_SAVE_IN_KERNEL_BUFFER = common dso_local global i32 0, align 4
@STACKSHOT_FROM_PANIC = common dso_local global i32 0, align 4
@KERN_NO_ACCESS = common dso_local global i32 0, align 4
@STACKSHOT_KCDATA_FORMAT = common dso_local global i32 0, align 4
@STACKSHOT_RETRIEVE_EXISTING_BUFFER = common dso_local global i32 0, align 4
@STACKSHOT_COLLECT_DELTA_SNAPSHOT = common dso_local global i32 0, align 4
@STACKSHOT_INSTRS_CYCLES = common dso_local global i32 0, align 4
@kernel_stackshot_buf = common dso_local global i8* null, align 8
@KERN_MEMORY_PRESENT = common dso_local global i32 0, align 4
@kernel_stackshot_buf_size = common dso_local global i32 0, align 4
@KERN_NOT_IN_SET = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@STACKSHOT_GET_BOOT_PROFILE = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_DIAG = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@KCDATA_BUFFER_BEGIN_DELTA_STACKSHOT = common dso_local global i32 0, align 4
@KCDATA_BUFFER_BEGIN_STACKSHOT = common dso_local global i32 0, align 4
@KCFLAG_USE_MEMCOPY = common dso_local global i32 0, align 4
@KCFLAG_NO_AUTO_ENDBUFFER = common dso_local global i32 0, align 4
@stackshot_duration_outer = common dso_local global i64* null, align 8
@FALSE = common dso_local global i64 0, align 8
@stackshot_kcdata_p = common dso_local global i32* null, align 8
@KERN_INSUFFICIENT_BUFFER_SIZE = common dso_local global i32 0, align 4
@KERN_ABORTED = common dso_local global i32 0, align 4
@KF_STACKSHOT_OVRD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@mt_core_supported = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_stack_snapshot_internal(i32 %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_2__*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i8* null, i8** %14, align 8
  store i32* null, i32** %15, align 8
  store i8* null, i8** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 -1, i32* %20, align 4
  store i32 0, i32* %23, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %33, i32* %5, align 4
  br label %357

34:                                               ; preds = %4
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %69 [
    i32 128, label %36
  ]

36:                                               ; preds = %34
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 40
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %40, i32* %5, align 4
  br label %357

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = bitcast i8* %42 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %43, %struct.TYPE_2__** %24, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %18, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %19, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %20, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %21, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %22, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @max_tracebuf_size, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %41
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %23, align 4
  br label %68

68:                                               ; preds = %64, %41
  br label %71

69:                                               ; preds = %34
  %70 = load i32, i32* @KERN_NOT_SUPPORTED, align 4
  store i32 %70, i32* %5, align 4
  br label %357

71:                                               ; preds = %68
  %72 = load i64, i64* %9, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = load i32, i32* %21, align 4
  %76 = load i32, i32* @STACKSHOT_TRYLOCK, align 4
  %77 = load i32, i32* @STACKSHOT_SAVE_IN_KERNEL_BUFFER, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @STACKSHOT_FROM_PANIC, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %75, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = load i32, i32* @KERN_NO_ACCESS, align 4
  store i32 %84, i32* %5, align 4
  br label %357

85:                                               ; preds = %74
  br label %94

86:                                               ; preds = %71
  %87 = load i32, i32* %21, align 4
  %88 = load i32, i32* @STACKSHOT_SAVE_IN_KERNEL_BUFFER, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* @KERN_NOT_SUPPORTED, align 4
  store i32 %92, i32* %5, align 4
  br label %357

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %85
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* @STACKSHOT_KCDATA_FORMAT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %21, align 4
  %101 = load i32, i32* @STACKSHOT_RETRIEVE_EXISTING_BUFFER, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* @KERN_NOT_SUPPORTED, align 4
  store i32 %105, i32* %5, align 4
  br label %357

106:                                              ; preds = %99, %94
  %107 = load i64, i64* %18, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i64, i64* %19, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %109, %106
  %113 = load i32, i32* %21, align 4
  %114 = load i32, i32* @STACKSHOT_SAVE_IN_KERNEL_BUFFER, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %112
  %118 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %118, i32* %5, align 4
  br label %357

119:                                              ; preds = %112, %109
  %120 = load i64, i64* %22, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load i32, i32* %21, align 4
  %124 = load i32, i32* @STACKSHOT_COLLECT_DELTA_SNAPSHOT, align 4
  %125 = and i32 %123, %124
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %128, i32* %5, align 4
  br label %357

129:                                              ; preds = %122, %119
  %130 = load i32, i32* @STACKSHOT_INSTRS_CYCLES, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %21, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %21, align 4
  %134 = call i32 (...) @STACKSHOT_SUBSYS_LOCK()
  %135 = load i32, i32* %21, align 4
  %136 = load i32, i32* @STACKSHOT_SAVE_IN_KERNEL_BUFFER, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %129
  %140 = load i8*, i8** @kernel_stackshot_buf, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i32, i32* @KERN_MEMORY_PRESENT, align 4
  store i32 %143, i32* %10, align 4
  br label %330

144:                                              ; preds = %139
  br label %175

145:                                              ; preds = %129
  %146 = load i32, i32* %21, align 4
  %147 = load i32, i32* @STACKSHOT_RETRIEVE_EXISTING_BUFFER, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %174

150:                                              ; preds = %145
  %151 = load i8*, i8** @kernel_stackshot_buf, align 8
  %152 = icmp eq i8* %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* @kernel_stackshot_buf_size, align 4
  %155 = icmp sle i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153, %150
  %157 = load i32, i32* @KERN_NOT_IN_SET, align 4
  store i32 %157, i32* %10, align 4
  br label %330

158:                                              ; preds = %153
  %159 = load i8*, i8** @kernel_stackshot_buf, align 8
  %160 = load i32, i32* @kernel_stackshot_buf_size, align 4
  %161 = load i64, i64* %18, align 8
  %162 = load i64, i64* %19, align 8
  %163 = call i32 @stackshot_remap_buffer(i8* %159, i32 %160, i64 %161, i64 %162)
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* @KERN_SUCCESS, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %158
  %168 = load i8*, i8** @kernel_stackshot_buf, align 8
  store i8* %168, i8** %16, align 8
  %169 = load i32, i32* @kernel_stackshot_buf_size, align 4
  %170 = load i32, i32* @PAGE_MASK, align 4
  %171 = call i64 @VM_MAP_ROUND_PAGE(i32 %169, i32 %170)
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %17, align 4
  store i8* null, i8** @kernel_stackshot_buf, align 8
  store i32 0, i32* @kernel_stackshot_buf_size, align 4
  br label %173

173:                                              ; preds = %167, %158
  br label %330

174:                                              ; preds = %145
  br label %175

175:                                              ; preds = %174, %144
  %176 = load i32, i32* %21, align 4
  %177 = load i32, i32* @STACKSHOT_GET_BOOT_PROFILE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %194

180:                                              ; preds = %175
  store i8* null, i8** %25, align 8
  store i32 0, i32* %26, align 4
  %181 = load i8*, i8** %25, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i32, i32* %26, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %183, %180
  %187 = load i32, i32* @KERN_NOT_IN_SET, align 4
  store i32 %187, i32* %10, align 4
  br label %330

188:                                              ; preds = %183
  %189 = load i8*, i8** %25, align 8
  %190 = load i32, i32* %26, align 4
  %191 = load i64, i64* %18, align 8
  %192 = load i64, i64* %19, align 8
  %193 = call i32 @stackshot_remap_buffer(i8* %189, i32 %190, i64 %191, i64 %192)
  store i32 %193, i32* %10, align 4
  br label %330

194:                                              ; preds = %175
  %195 = load i32, i32* %23, align 4
  %196 = call i32 @get_stackshot_estsize(i32 %195)
  store i32 %196, i32* %13, align 4
  br label %197

197:                                              ; preds = %320, %194
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* @max_tracebuf_size, align 4
  %200 = icmp sle i32 %198, %199
  br i1 %200, label %201, label %323

201:                                              ; preds = %197
  %202 = load i32, i32* @kernel_map, align 4
  %203 = bitcast i8** %14 to i32*
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* @VM_KERN_MEMORY_DIAG, align 4
  %206 = call i32 @kmem_alloc(i32 %202, i32* %203, i32 %204, i32 %205)
  %207 = load i32, i32* @KERN_SUCCESS, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %201
  %210 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %210, i32* %10, align 4
  br label %330

211:                                              ; preds = %201
  %212 = load i32, i32* %21, align 4
  %213 = load i32, i32* @STACKSHOT_COLLECT_DELTA_SNAPSHOT, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %211
  %217 = load i32, i32* @KCDATA_BUFFER_BEGIN_DELTA_STACKSHOT, align 4
  br label %220

218:                                              ; preds = %211
  %219 = load i32, i32* @KCDATA_BUFFER_BEGIN_STACKSHOT, align 4
  br label %220

220:                                              ; preds = %218, %216
  %221 = phi i32 [ %217, %216 ], [ %219, %218 ]
  store i32 %221, i32* %27, align 4
  %222 = load i8*, i8** %14, align 8
  %223 = ptrtoint i8* %222 to i32
  %224 = load i32, i32* %27, align 4
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* @KCFLAG_USE_MEMCOPY, align 4
  %227 = load i32, i32* @KCFLAG_NO_AUTO_ENDBUFFER, align 4
  %228 = or i32 %226, %227
  %229 = call i32* @kcdata_memory_alloc_init(i32 %223, i32 %224, i32 %225, i32 %228)
  store i32* %229, i32** %15, align 8
  store i64* null, i64** @stackshot_duration_outer, align 8
  %230 = call i64 (...) @mach_absolute_time()
  store i64 %230, i64* %28, align 8
  %231 = load i64, i64* @FALSE, align 8
  %232 = call i64 @ml_set_interrupts_enabled(i64 %231)
  store i64 %232, i64* %11, align 8
  %233 = load i32, i32* %20, align 4
  %234 = load i8*, i8** %14, align 8
  %235 = load i32, i32* %13, align 4
  %236 = load i32, i32* %21, align 4
  %237 = load i32*, i32** %15, align 8
  %238 = load i64, i64* %22, align 8
  %239 = call i32 @kdp_snapshot_preflight(i32 %233, i8* %234, i32 %235, i32 %236, i32* %237, i64 %238)
  %240 = call i32 (...) @stackshot_trap()
  store i32 %240, i32* %10, align 4
  %241 = load i64, i64* %11, align 8
  %242 = call i64 @ml_set_interrupts_enabled(i64 %241)
  %243 = call i64 (...) @mach_absolute_time()
  store i64 %243, i64* %29, align 8
  %244 = load i64*, i64** @stackshot_duration_outer, align 8
  %245 = icmp ne i64* %244, null
  br i1 %245, label %246, label %251

246:                                              ; preds = %220
  %247 = load i64, i64* %29, align 8
  %248 = load i64, i64* %28, align 8
  %249 = sub nsw i64 %247, %248
  %250 = load i64*, i64** @stackshot_duration_outer, align 8
  store i64 %249, i64* %250, align 8
  br label %251

251:                                              ; preds = %246, %220
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* @KERN_SUCCESS, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %255, label %272

255:                                              ; preds = %251
  %256 = load i32*, i32** %15, align 8
  %257 = icmp ne i32* %256, null
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load i32*, i32** %15, align 8
  %260 = call i32 @kcdata_memory_destroy(i32* %259)
  store i32* null, i32** %15, align 8
  store i32* null, i32** @stackshot_kcdata_p, align 8
  br label %261

261:                                              ; preds = %258, %255
  %262 = load i32, i32* @kernel_map, align 4
  %263 = load i8*, i8** %14, align 8
  %264 = ptrtoint i8* %263 to i32
  %265 = load i32, i32* %13, align 4
  %266 = call i32 @kmem_free(i32 %262, i32 %264, i32 %265)
  store i8* null, i8** %14, align 8
  %267 = load i32, i32* %10, align 4
  %268 = load i32, i32* @KERN_INSUFFICIENT_BUFFER_SIZE, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %261
  br label %320

271:                                              ; preds = %261
  br label %330

272:                                              ; preds = %251
  %273 = call i32 (...) @kdp_stack_snapshot_bytes_traced()
  store i32 %273, i32* %12, align 4
  %274 = load i32, i32* %12, align 4
  %275 = icmp sle i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %272
  %277 = load i32, i32* @KERN_ABORTED, align 4
  store i32 %277, i32* %10, align 4
  br label %330

278:                                              ; preds = %272
  %279 = load i32, i32* %12, align 4
  %280 = load i32, i32* %13, align 4
  %281 = icmp sle i32 %279, %280
  %282 = zext i1 %281 to i32
  %283 = call i32 @assert(i32 %282)
  %284 = load i32, i32* %21, align 4
  %285 = load i32, i32* @STACKSHOT_SAVE_IN_KERNEL_BUFFER, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %294, label %288

288:                                              ; preds = %278
  %289 = load i8*, i8** %14, align 8
  %290 = load i32, i32* %12, align 4
  %291 = load i64, i64* %18, align 8
  %292 = load i64, i64* %19, align 8
  %293 = call i32 @stackshot_remap_buffer(i8* %289, i32 %290, i64 %291, i64 %292)
  store i32 %293, i32* %10, align 4
  br label %330

294:                                              ; preds = %278
  %295 = load i8*, i8** %14, align 8
  store i8* %295, i8** @kernel_stackshot_buf, align 8
  %296 = load i32, i32* %12, align 4
  store i32 %296, i32* @kernel_stackshot_buf_size, align 4
  %297 = load i32, i32* %13, align 4
  %298 = load i32, i32* %12, align 4
  %299 = load i32, i32* @PAGE_MASK, align 4
  %300 = call i64 @VM_MAP_ROUND_PAGE(i32 %298, i32 %299)
  %301 = trunc i64 %300 to i32
  %302 = sub nsw i32 %297, %301
  store i32 %302, i32* %17, align 4
  %303 = load i32, i32* %17, align 4
  %304 = icmp sge i32 %303, 0
  %305 = zext i1 %304 to i32
  %306 = call i32 @assert(i32 %305)
  %307 = load i32, i32* %17, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %319

309:                                              ; preds = %294
  %310 = load i8*, i8** %14, align 8
  %311 = ptrtoint i8* %310 to i64
  %312 = load i32, i32* %13, align 4
  %313 = sext i32 %312 to i64
  %314 = add nsw i64 %311, %313
  %315 = load i32, i32* %17, align 4
  %316 = sext i32 %315 to i64
  %317 = sub nsw i64 %314, %316
  %318 = inttoptr i64 %317 to i8*
  store i8* %318, i8** %16, align 8
  br label %319

319:                                              ; preds = %309, %294
  store i8* null, i8** %14, align 8
  store i32 0, i32* %13, align 4
  br label %330

320:                                              ; preds = %270
  %321 = load i32, i32* %13, align 4
  %322 = shl i32 %321, 1
  store i32 %322, i32* %13, align 4
  br label %197

323:                                              ; preds = %197
  %324 = load i32, i32* %13, align 4
  %325 = load i32, i32* @max_tracebuf_size, align 4
  %326 = icmp sgt i32 %324, %325
  br i1 %326, label %327, label %329

327:                                              ; preds = %323
  %328 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %328, i32* %10, align 4
  br label %329

329:                                              ; preds = %327, %323
  br label %330

330:                                              ; preds = %329, %319, %288, %276, %271, %209, %188, %186, %173, %156, %142
  %331 = load i32*, i32** %15, align 8
  %332 = icmp ne i32* %331, null
  br i1 %332, label %333, label %336

333:                                              ; preds = %330
  %334 = load i32*, i32** %15, align 8
  %335 = call i32 @kcdata_memory_destroy(i32* %334)
  store i32* null, i32** %15, align 8
  store i32* null, i32** @stackshot_kcdata_p, align 8
  br label %336

336:                                              ; preds = %333, %330
  %337 = load i8*, i8** %14, align 8
  %338 = icmp ne i8* %337, null
  br i1 %338, label %339, label %345

339:                                              ; preds = %336
  %340 = load i32, i32* @kernel_map, align 4
  %341 = load i8*, i8** %14, align 8
  %342 = ptrtoint i8* %341 to i32
  %343 = load i32, i32* %13, align 4
  %344 = call i32 @kmem_free(i32 %340, i32 %342, i32 %343)
  br label %345

345:                                              ; preds = %339, %336
  %346 = load i8*, i8** %16, align 8
  %347 = icmp ne i8* %346, null
  br i1 %347, label %348, label %354

348:                                              ; preds = %345
  %349 = load i32, i32* @kernel_map, align 4
  %350 = load i8*, i8** %16, align 8
  %351 = ptrtoint i8* %350 to i32
  %352 = load i32, i32* %17, align 4
  %353 = call i32 @kmem_free(i32 %349, i32 %351, i32 %352)
  br label %354

354:                                              ; preds = %348, %345
  %355 = call i32 (...) @STACKSHOT_SUBSYS_UNLOCK()
  %356 = load i32, i32* %10, align 4
  store i32 %356, i32* %5, align 4
  br label %357

357:                                              ; preds = %354, %127, %117, %104, %91, %83, %69, %39, %32
  %358 = load i32, i32* %5, align 4
  ret i32 %358
}

declare dso_local i32 @STACKSHOT_SUBSYS_LOCK(...) #1

declare dso_local i32 @stackshot_remap_buffer(i8*, i32, i64, i64) #1

declare dso_local i64 @VM_MAP_ROUND_PAGE(i32, i32) #1

declare dso_local i32 @get_stackshot_estsize(i32) #1

declare dso_local i32 @kmem_alloc(i32, i32*, i32, i32) #1

declare dso_local i32* @kcdata_memory_alloc_init(i32, i32, i32, i32) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i64 @ml_set_interrupts_enabled(i64) #1

declare dso_local i32 @kdp_snapshot_preflight(i32, i8*, i32, i32, i32*, i64) #1

declare dso_local i32 @stackshot_trap(...) #1

declare dso_local i32 @kcdata_memory_destroy(i32*) #1

declare dso_local i32 @kmem_free(i32, i32, i32) #1

declare dso_local i32 @kdp_stack_snapshot_bytes_traced(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @STACKSHOT_SUBSYS_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
