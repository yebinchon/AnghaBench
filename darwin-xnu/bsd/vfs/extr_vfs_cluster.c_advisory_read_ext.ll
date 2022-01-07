; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_advisory_read_ext.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_advisory_read_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.clios = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CL_READ = common dso_local global i32 0, align 4
@speculative_prefetch_max_iosize = common dso_local global i32 0, align 4
@DBG_FSRW = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@PAGE_MASK_64 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@UPL_ROP_PRESENT = common dso_local global i32 0, align 4
@UPL_RET_ONLY_ABSENT = common dso_local global i32 0, align 4
@UPL_SET_LITE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_FILE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@DBG_FUNC_END = common dso_local global i32 0, align 4
@CL_ASYNC = common dso_local global i32 0, align 4
@CL_COMMIT = common dso_local global i32 0, align 4
@CL_AGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @advisory_read_ext(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32 (i32, i8*)* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32 (i32, i8*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 (i32, i8*)* %4, i32 (i32, i8*)** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %28, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %33 = call i32 @UBCINFOEXISTS(%struct.TYPE_7__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %7
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %8, align 4
  br label %313

37:                                               ; preds = %7
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %8, align 4
  br label %313

42:                                               ; preds = %37
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CL_READ, align 4
  %47 = call i32 @cluster_max_io_size(i32 %45, i32 %46)
  store i32 %47, i32* %31, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @disk_conditioner_mount_is_ssd(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %42
  %54 = load i32, i32* %31, align 4
  %55 = load i32, i32* @speculative_prefetch_max_iosize, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @speculative_prefetch_max_iosize, align 4
  store i32 %58, i32* %31, align 4
  br label %59

59:                                               ; preds = %57, %53
  br label %60

60:                                               ; preds = %59, %42
  %61 = load i32, i32* @DBG_FSRW, align 4
  %62 = call i32 @FSDBG_CODE(i32 %61, i32 60)
  %63 = load i32, i32* @DBG_FUNC_START, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @KERNEL_DEBUG(i32 %64, i32 %65, i32 %66, i32 %67, i32 0, i32 0)
  br label %69

69:                                               ; preds = %296, %136, %60
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* %28, align 4
  %78 = icmp eq i32 %77, 0
  br label %79

79:                                               ; preds = %76, %72, %69
  %80 = phi i1 [ false, %72 ], [ false, %69 ], [ %78, %76 ]
  br i1 %80, label %81, label %303

81:                                               ; preds = %79
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @PAGE_MASK_64, align 4
  %84 = and i32 %82, %83
  store i32 %84, i32* %21, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %21, align 4
  %87 = sub nsw i32 %85, %86
  store i32 %87, i32* %20, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %25, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %25, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %81
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %26, align 4
  br label %98

96:                                               ; preds = %81
  %97 = load i32, i32* %25, align 4
  store i32 %97, i32* %26, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = load i32, i32* %21, align 4
  %100 = load i32, i32* %26, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i32, i32* @PAGE_SIZE, align 4
  %103 = sub nsw i32 %102, 1
  %104 = add nsw i32 %101, %103
  %105 = load i32, i32* @PAGE_MASK, align 4
  %106 = xor i32 %105, -1
  %107 = and i32 %104, %106
  store i32 %107, i32* %19, align 4
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* %31, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %98
  %112 = load i32, i32* %31, align 4
  store i32 %112, i32* %19, align 4
  br label %113

113:                                              ; preds = %111, %98
  store i32 0, i32* %30, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %115 = load i32, i32* %20, align 4
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* %19, align 4
  %118 = add nsw i32 %116, %117
  %119 = load i32, i32* @UPL_ROP_PRESENT, align 4
  %120 = call i32 @ubc_range_op(%struct.TYPE_7__* %114, i32 %115, i32 %118, i32 %119, i32* %30)
  %121 = load i32, i32* %30, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %144

123:                                              ; preds = %113
  %124 = load i32, i32* %30, align 4
  %125 = load i32, i32* %21, align 4
  %126 = sub nsw i32 %124, %125
  store i32 %126, i32* %26, align 4
  %127 = load i32, i32* %26, align 4
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %26, align 4
  %131 = load i32, i32* %12, align 4
  %132 = sub nsw i32 %131, %130
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %30, align 4
  %134 = load i32, i32* %19, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %123
  br label %69

137:                                              ; preds = %123
  store i32 0, i32* %21, align 4
  %138 = load i32, i32* %30, align 4
  %139 = load i32, i32* %20, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %20, align 4
  %141 = load i32, i32* %30, align 4
  %142 = load i32, i32* %19, align 4
  %143 = sub nsw i32 %142, %141
  store i32 %143, i32* %19, align 4
  br label %144

144:                                              ; preds = %137, %113
  %145 = load i32, i32* %19, align 4
  %146 = load i32, i32* @PAGE_SIZE, align 4
  %147 = sdiv i32 %145, %146
  store i32 %147, i32* %24, align 4
  %148 = load i32, i32* @DBG_FSRW, align 4
  %149 = call i32 @FSDBG_CODE(i32 %148, i32 61)
  %150 = load i32, i32* @DBG_FUNC_START, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* %17, align 4
  %153 = load i32, i32* %20, align 4
  %154 = load i32, i32* %19, align 4
  %155 = load i32, i32* %21, align 4
  %156 = call i32 @KERNEL_DEBUG(i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 0)
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* %19, align 4
  %160 = load i32, i32* @UPL_RET_ONLY_ABSENT, align 4
  %161 = load i32, i32* @UPL_SET_LITE, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @VM_KERN_MEMORY_FILE, align 4
  %164 = call i64 @ubc_create_upl_kernel(%struct.TYPE_7__* %157, i32 %158, i32 %159, i32* %17, i32** %16, i32 %162, i32 %163)
  store i64 %164, i64* %27, align 8
  %165 = load i64, i64* %27, align 8
  %166 = load i64, i64* @KERN_SUCCESS, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %144
  %169 = load i32, i32* %28, align 4
  store i32 %169, i32* %8, align 4
  br label %313

170:                                              ; preds = %144
  store i32 0, i32* %29, align 4
  %171 = load i32, i32* %24, align 4
  %172 = sub nsw i32 %171, 1
  store i32 %172, i32* %23, align 4
  br label %173

173:                                              ; preds = %183, %170
  %174 = load i32, i32* %23, align 4
  %175 = icmp sge i32 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %173
  %177 = load i32*, i32** %16, align 8
  %178 = load i32, i32* %23, align 4
  %179 = call i64 @upl_page_present(i32* %177, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  br label %186

182:                                              ; preds = %176
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %23, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %23, align 4
  br label %173

186:                                              ; preds = %181, %173
  %187 = load i32, i32* %23, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %24, align 4
  %189 = load i32, i32* @DBG_FSRW, align 4
  %190 = call i32 @FSDBG_CODE(i32 %189, i32 61)
  %191 = load i32, i32* @DBG_FUNC_END, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* %20, align 4
  %195 = load i32, i32* %19, align 4
  %196 = load i32, i32* %21, align 4
  %197 = call i32 @KERNEL_DEBUG(i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 0)
  store i32 0, i32* %23, align 4
  br label %198

198:                                              ; preds = %280, %186
  %199 = load i32, i32* %23, align 4
  %200 = load i32, i32* %24, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %281

202:                                              ; preds = %198
  %203 = load i32, i32* %23, align 4
  store i32 %203, i32* %22, align 4
  br label %204

204:                                              ; preds = %215, %202
  %205 = load i32, i32* %22, align 4
  %206 = load i32, i32* %24, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %218

208:                                              ; preds = %204
  %209 = load i32*, i32** %16, align 8
  %210 = load i32, i32* %22, align 4
  %211 = call i64 @upl_page_present(i32* %209, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %208
  br label %218

214:                                              ; preds = %208
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %22, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %22, align 4
  br label %204

218:                                              ; preds = %213, %204
  %219 = load i32, i32* %22, align 4
  store i32 %219, i32* %23, align 4
  br label %220

220:                                              ; preds = %231, %218
  %221 = load i32, i32* %23, align 4
  %222 = load i32, i32* %24, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %234

224:                                              ; preds = %220
  %225 = load i32*, i32** %16, align 8
  %226 = load i32, i32* %23, align 4
  %227 = call i64 @upl_page_present(i32* %225, i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %224
  br label %234

230:                                              ; preds = %224
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %23, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %23, align 4
  br label %220

234:                                              ; preds = %229, %220
  %235 = load i32, i32* %23, align 4
  %236 = load i32, i32* %22, align 4
  %237 = icmp sgt i32 %235, %236
  br i1 %237, label %238, label %280

238:                                              ; preds = %234
  %239 = load i32, i32* %22, align 4
  %240 = load i32, i32* @PAGE_SIZE, align 4
  %241 = mul nsw i32 %239, %240
  store i32 %241, i32* %18, align 4
  %242 = load i32, i32* %23, align 4
  %243 = load i32, i32* %22, align 4
  %244 = sub nsw i32 %242, %243
  %245 = load i32, i32* @PAGE_SIZE, align 4
  %246 = mul nsw i32 %244, %245
  store i32 %246, i32* %26, align 4
  %247 = load i32, i32* %20, align 4
  %248 = load i32, i32* %18, align 4
  %249 = add nsw i32 %247, %248
  %250 = load i32, i32* %26, align 4
  %251 = add nsw i32 %249, %250
  %252 = load i32, i32* %10, align 4
  %253 = icmp sgt i32 %251, %252
  br i1 %253, label %254, label %260

254:                                              ; preds = %238
  %255 = load i32, i32* %10, align 4
  %256 = load i32, i32* %20, align 4
  %257 = load i32, i32* %18, align 4
  %258 = add nsw i32 %256, %257
  %259 = sub nsw i32 %255, %258
  store i32 %259, i32* %26, align 4
  br label %260

260:                                              ; preds = %254, %238
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %262 = load i32, i32* %17, align 4
  %263 = load i32, i32* %18, align 4
  %264 = load i32, i32* %20, align 4
  %265 = load i32, i32* %18, align 4
  %266 = add nsw i32 %264, %265
  %267 = load i32, i32* %26, align 4
  %268 = load i32, i32* @CL_ASYNC, align 4
  %269 = load i32, i32* @CL_READ, align 4
  %270 = or i32 %268, %269
  %271 = load i32, i32* @CL_COMMIT, align 4
  %272 = or i32 %270, %271
  %273 = load i32, i32* @CL_AGE, align 4
  %274 = or i32 %272, %273
  %275 = load i32, i32* %15, align 4
  %276 = or i32 %274, %275
  %277 = load i32 (i32, i8*)*, i32 (i32, i8*)** %13, align 8
  %278 = load i8*, i8** %14, align 8
  %279 = call i32 @cluster_io(%struct.TYPE_7__* %261, i32 %262, i32 %263, i32 %266, i32 %267, i32 %276, i32 0, %struct.clios* null, i32 (i32, i8*)* %277, i8* %278)
  store i32 %279, i32* %28, align 4
  store i32 1, i32* %29, align 4
  br label %280

280:                                              ; preds = %260, %234
  br label %198

281:                                              ; preds = %198
  %282 = load i32, i32* %29, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %281
  %285 = load i32, i32* %17, align 4
  %286 = call i32 @ubc_upl_abort(i32 %285, i32 0)
  br label %287

287:                                              ; preds = %284, %281
  %288 = load i32, i32* %19, align 4
  %289 = load i32, i32* %21, align 4
  %290 = sub nsw i32 %288, %289
  store i32 %290, i32* %26, align 4
  %291 = load i32, i32* %26, align 4
  %292 = load i32, i32* %12, align 4
  %293 = icmp sgt i32 %291, %292
  br i1 %293, label %294, label %296

294:                                              ; preds = %287
  %295 = load i32, i32* %12, align 4
  store i32 %295, i32* %26, align 4
  br label %296

296:                                              ; preds = %294, %287
  %297 = load i32, i32* %26, align 4
  %298 = load i32, i32* %11, align 4
  %299 = add nsw i32 %298, %297
  store i32 %299, i32* %11, align 4
  %300 = load i32, i32* %26, align 4
  %301 = load i32, i32* %12, align 4
  %302 = sub nsw i32 %301, %300
  store i32 %302, i32* %12, align 4
  br label %69

303:                                              ; preds = %79
  %304 = load i32, i32* @DBG_FSRW, align 4
  %305 = call i32 @FSDBG_CODE(i32 %304, i32 60)
  %306 = load i32, i32* @DBG_FUNC_END, align 4
  %307 = or i32 %305, %306
  %308 = load i32, i32* %11, align 4
  %309 = load i32, i32* %12, align 4
  %310 = load i32, i32* %28, align 4
  %311 = call i32 @KERNEL_DEBUG(i32 %307, i32 %308, i32 %309, i32 %310, i32 0, i32 0)
  %312 = load i32, i32* %28, align 4
  store i32 %312, i32* %8, align 4
  br label %313

313:                                              ; preds = %303, %168, %40, %35
  %314 = load i32, i32* %8, align 4
  ret i32 %314
}

declare dso_local i32 @UBCINFOEXISTS(%struct.TYPE_7__*) #1

declare dso_local i32 @cluster_max_io_size(i32, i32) #1

declare dso_local i64 @disk_conditioner_mount_is_ssd(i32) #1

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FSDBG_CODE(i32, i32) #1

declare dso_local i32 @ubc_range_op(%struct.TYPE_7__*, i32, i32, i32, i32*) #1

declare dso_local i64 @ubc_create_upl_kernel(%struct.TYPE_7__*, i32, i32, i32*, i32**, i32, i32) #1

declare dso_local i64 @upl_page_present(i32*, i32) #1

declare dso_local i32 @cluster_io(%struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, %struct.clios*, i32 (i32, i8*)*, i8*) #1

declare dso_local i32 @ubc_upl_abort(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
