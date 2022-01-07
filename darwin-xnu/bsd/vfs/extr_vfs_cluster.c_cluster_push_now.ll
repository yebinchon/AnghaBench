; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_push_now.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_push_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.cl_extent = type { i32, i64 }
%struct.clios = type { i32 }

@IO_PASSIVE = common dso_local global i32 0, align 4
@CL_PASSIVE = common dso_local global i32 0, align 4
@IO_SKIP_ENCRYPTION = common dso_local global i32 0, align 4
@CL_ENCRYPTED = common dso_local global i32 0, align 4
@DBG_FSRW = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE_64 = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@UPL_MSYNC = common dso_local global i32 0, align 4
@UPL_VNODE_PAGER = common dso_local global i32 0, align 4
@UPL_KEEPCACHED = common dso_local global i32 0, align 4
@VNOCACHE_DATA = common dso_local global i32 0, align 4
@IO_NOCACHE = common dso_local global i32 0, align 4
@UPL_COPYOUT_FROM = common dso_local global i32 0, align 4
@UPL_RET_ONLY_DIRTY = common dso_local global i32 0, align 4
@UPL_SET_LITE = common dso_local global i32 0, align 4
@UPL_WILL_BE_DUMPED = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_FILE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"cluster_push: failed to get pagelist\00", align 1
@UPL_ABORT_FREE_ON_EMPTY = common dso_local global i32 0, align 4
@CL_THROTTLE = common dso_local global i32 0, align 4
@CL_COMMIT = common dso_local global i32 0, align 4
@CL_AGE = common dso_local global i32 0, align 4
@IO_SYNC = common dso_local global i32 0, align 4
@CL_ASYNC = common dso_local global i32 0, align 4
@IO_CLOSE = common dso_local global i32 0, align 4
@CL_CLOSE = common dso_local global i32 0, align 4
@CL_NOCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.cl_extent*, i32, i32, i32 (i32, i8*)*, i8*, i64)* @cluster_push_now to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cluster_push_now(%struct.TYPE_6__* %0, %struct.cl_extent* %1, i32 %2, i32 %3, i32 (i32, i8*)* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.cl_extent*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32 (i32, i8*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
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
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store %struct.cl_extent* %1, %struct.cl_extent** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 (i32, i8*)* %4, i32 (i32, i8*)** %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 0, i32* %29, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @IO_PASSIVE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %7
  %37 = load i32, i32* @CL_PASSIVE, align 4
  store i32 %37, i32* %27, align 4
  br label %39

38:                                               ; preds = %7
  store i32 0, i32* %27, align 4
  br label %39

39:                                               ; preds = %38, %36
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @IO_SKIP_ENCRYPTION, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @CL_ENCRYPTED, align 4
  %46 = load i32, i32* %27, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %27, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* @DBG_FSRW, align 4
  %50 = call i32 @FSDBG_CODE(i32 %49, i32 51)
  %51 = load i32, i32* @DBG_FUNC_START, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.cl_extent*, %struct.cl_extent** %10, align 8
  %54 = getelementptr inbounds %struct.cl_extent, %struct.cl_extent* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.cl_extent*, %struct.cl_extent** %10, align 8
  %57 = getelementptr inbounds %struct.cl_extent, %struct.cl_extent* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @KERNEL_DEBUG(i32 %52, i32 %55, i32 %59, i32 %60, i32 %61, i32 0)
  %63 = load %struct.cl_extent*, %struct.cl_extent** %10, align 8
  %64 = getelementptr inbounds %struct.cl_extent, %struct.cl_extent* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.cl_extent*, %struct.cl_extent** %10, align 8
  %67 = getelementptr inbounds %struct.cl_extent, %struct.cl_extent* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %65, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %21, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %48
  %74 = load i32, i32* @DBG_FSRW, align 4
  %75 = call i32 @FSDBG_CODE(i32 %74, i32 51)
  %76 = load i32, i32* @DBG_FUNC_END, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @KERNEL_DEBUG(i32 %77, i32 1, i32 0, i32 0, i32 0, i32 0)
  store i32 0, i32* %8, align 4
  br label %356

79:                                               ; preds = %48
  %80 = load i32, i32* %21, align 4
  %81 = load i32, i32* @PAGE_SIZE, align 4
  %82 = mul nsw i32 %80, %81
  store i32 %82, i32* %19, align 4
  %83 = load %struct.cl_extent*, %struct.cl_extent** %10, align 8
  %84 = getelementptr inbounds %struct.cl_extent, %struct.cl_extent* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @PAGE_SIZE_64, align 4
  %87 = mul nsw i32 %85, %86
  store i32 %87, i32* %20, align 4
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %19, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %11, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %117

93:                                               ; preds = %79
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load i32, i32* @DBG_FSRW, align 4
  %99 = call i32 @FSDBG_CODE(i32 %98, i32 51)
  %100 = load i32, i32* @DBG_FUNC_END, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @KERNEL_DEBUG(i32 %101, i32 1, i32 1, i32 0, i32 0, i32 0)
  store i32 0, i32* %8, align 4
  br label %356

103:                                              ; preds = %93
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %20, align 4
  %106 = sub nsw i32 %104, %105
  store i32 %106, i32* %28, align 4
  %107 = load i32, i32* %28, align 4
  %108 = load i32, i32* @PAGE_SIZE, align 4
  %109 = sub nsw i32 %108, 1
  %110 = add nsw i32 %107, %109
  %111 = load i32, i32* @PAGE_MASK, align 4
  %112 = xor i32 %111, -1
  %113 = and i32 %110, %112
  store i32 %113, i32* %19, align 4
  %114 = load i32, i32* %19, align 4
  %115 = load i32, i32* @PAGE_SIZE, align 4
  %116 = sdiv i32 %114, %115
  store i32 %116, i32* %21, align 4
  br label %119

117:                                              ; preds = %79
  %118 = load i32, i32* %19, align 4
  store i32 %118, i32* %28, align 4
  br label %119

119:                                              ; preds = %117, %103
  %120 = load i64, i64* %15, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %119
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* @UPL_MSYNC, align 4
  %127 = load i32, i32* @UPL_VNODE_PAGER, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @UPL_KEEPCACHED, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @vnode_pageout(%struct.TYPE_6__* %123, i32* null, i32 0, i32 %124, i32 %125, i32 %130, i32* %29)
  %132 = load i32, i32* %29, align 4
  store i32 %132, i32* %8, align 4
  br label %356

133:                                              ; preds = %119
  %134 = load i32, i32* @DBG_FSRW, align 4
  %135 = call i32 @FSDBG_CODE(i32 %134, i32 41)
  %136 = load i32, i32* @DBG_FUNC_START, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %19, align 4
  %139 = load i32, i32* %28, align 4
  %140 = call i32 @KERNEL_DEBUG(i32 %137, i32 %138, i32 %139, i32 0, i32 0, i32 0)
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @VNOCACHE_DATA, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %133
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* @IO_NOCACHE, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %147, %133
  %153 = load i32, i32* @UPL_COPYOUT_FROM, align 4
  %154 = load i32, i32* @UPL_RET_ONLY_DIRTY, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @UPL_SET_LITE, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @UPL_WILL_BE_DUMPED, align 4
  %159 = or i32 %157, %158
  store i32 %159, i32* %26, align 4
  br label %166

160:                                              ; preds = %147
  %161 = load i32, i32* @UPL_COPYOUT_FROM, align 4
  %162 = load i32, i32* @UPL_RET_ONLY_DIRTY, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @UPL_SET_LITE, align 4
  %165 = or i32 %163, %164
  store i32 %165, i32* %26, align 4
  br label %166

166:                                              ; preds = %160, %152
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %168 = load i32, i32* %20, align 4
  %169 = load i32, i32* %19, align 4
  %170 = load i32, i32* %26, align 4
  %171 = load i32, i32* @VM_KERN_MEMORY_FILE, align 4
  %172 = call i64 @ubc_create_upl_kernel(%struct.TYPE_6__* %167, i32 %168, i32 %169, i32* %17, i32** %16, i32 %170, i32 %171)
  store i64 %172, i64* %31, align 8
  %173 = load i64, i64* %31, align 8
  %174 = load i64, i64* @KERN_SUCCESS, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %166
  %177 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %166
  %179 = load i32, i32* @DBG_FSRW, align 4
  %180 = call i32 @FSDBG_CODE(i32 %179, i32 41)
  %181 = load i32, i32* @DBG_FUNC_END, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* %17, align 4
  %184 = load i32, i32* %20, align 4
  %185 = call i32 @KERNEL_DEBUG(i32 %182, i32 %183, i32 %184, i32 0, i32 0, i32 0)
  %186 = load i32, i32* %21, align 4
  %187 = sub nsw i32 %186, 1
  store i32 %187, i32* %23, align 4
  br label %188

188:                                              ; preds = %198, %178
  %189 = load i32, i32* %23, align 4
  %190 = icmp sge i32 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %188
  %192 = load i32*, i32** %16, align 8
  %193 = load i32, i32* %23, align 4
  %194 = call i64 @upl_page_present(i32* %192, i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %191
  br label %201

197:                                              ; preds = %191
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %23, align 4
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %23, align 4
  br label %188

201:                                              ; preds = %196, %188
  %202 = load i32, i32* %23, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %21, align 4
  %204 = load i32, i32* %21, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %201
  %207 = load i32, i32* %17, align 4
  %208 = call i32 @ubc_upl_abort(i32 %207, i32 0)
  %209 = load i32, i32* @DBG_FSRW, align 4
  %210 = call i32 @FSDBG_CODE(i32 %209, i32 51)
  %211 = load i32, i32* @DBG_FUNC_END, align 4
  %212 = or i32 %210, %211
  %213 = call i32 @KERNEL_DEBUG(i32 %212, i32 1, i32 2, i32 0, i32 0, i32 0)
  store i32 0, i32* %8, align 4
  br label %356

214:                                              ; preds = %201
  store i32 0, i32* %23, align 4
  br label %215

215:                                              ; preds = %344, %214
  %216 = load i32, i32* %23, align 4
  %217 = load i32, i32* %21, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %348

219:                                              ; preds = %215
  %220 = load i32, i32* %23, align 4
  store i32 %220, i32* %22, align 4
  br label %221

221:                                              ; preds = %245, %219
  %222 = load i32, i32* %22, align 4
  %223 = load i32, i32* %21, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %248

225:                                              ; preds = %221
  %226 = load i32*, i32** %16, align 8
  %227 = load i32, i32* %22, align 4
  %228 = call i64 @upl_dirty_page(i32* %226, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %225
  br label %248

231:                                              ; preds = %225
  %232 = load i32*, i32** %16, align 8
  %233 = load i32, i32* %22, align 4
  %234 = call i64 @upl_page_present(i32* %232, i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %231
  %237 = load i32, i32* %17, align 4
  %238 = load i32, i32* %22, align 4
  %239 = load i32, i32* @PAGE_SIZE, align 4
  %240 = mul nsw i32 %238, %239
  %241 = load i32, i32* @PAGE_SIZE, align 4
  %242 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %243 = call i32 @ubc_upl_abort_range(i32 %237, i32 %240, i32 %241, i32 %242)
  br label %244

244:                                              ; preds = %236, %231
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %22, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %22, align 4
  br label %221

248:                                              ; preds = %230, %221
  %249 = load i32, i32* %22, align 4
  %250 = load i32, i32* %21, align 4
  %251 = icmp sge i32 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %248
  br label %348

253:                                              ; preds = %248
  %254 = load i32, i32* %22, align 4
  %255 = load i32, i32* %23, align 4
  %256 = icmp sgt i32 %254, %255
  br i1 %256, label %257, label %265

257:                                              ; preds = %253
  %258 = load i32, i32* %22, align 4
  %259 = load i32, i32* %23, align 4
  %260 = sub nsw i32 %258, %259
  %261 = load i32, i32* @PAGE_SIZE, align 4
  %262 = mul nsw i32 %260, %261
  %263 = load i32, i32* %28, align 4
  %264 = sub nsw i32 %263, %262
  store i32 %264, i32* %28, align 4
  br label %265

265:                                              ; preds = %257, %253
  %266 = load i32, i32* %22, align 4
  store i32 %266, i32* %23, align 4
  br label %267

267:                                              ; preds = %278, %265
  %268 = load i32, i32* %23, align 4
  %269 = load i32, i32* %21, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %281

271:                                              ; preds = %267
  %272 = load i32*, i32** %16, align 8
  %273 = load i32, i32* %23, align 4
  %274 = call i64 @upl_dirty_page(i32* %272, i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %271
  br label %281

277:                                              ; preds = %271
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %23, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %23, align 4
  br label %267

281:                                              ; preds = %276, %267
  %282 = load i32, i32* %22, align 4
  %283 = load i32, i32* @PAGE_SIZE, align 4
  %284 = mul nsw i32 %282, %283
  store i32 %284, i32* %18, align 4
  %285 = load i32, i32* %28, align 4
  %286 = load i32, i32* %23, align 4
  %287 = load i32, i32* %22, align 4
  %288 = sub nsw i32 %286, %287
  %289 = load i32, i32* @PAGE_SIZE, align 4
  %290 = mul nsw i32 %288, %289
  %291 = call i32 @min(i32 %285, i32 %290)
  store i32 %291, i32* %24, align 4
  %292 = load i32, i32* @CL_THROTTLE, align 4
  %293 = load i32, i32* @CL_COMMIT, align 4
  %294 = or i32 %292, %293
  %295 = load i32, i32* @CL_AGE, align 4
  %296 = or i32 %294, %295
  %297 = load i32, i32* %27, align 4
  %298 = or i32 %296, %297
  store i32 %298, i32* %25, align 4
  %299 = load i32, i32* %12, align 4
  %300 = load i32, i32* @IO_SYNC, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %307, label %303

303:                                              ; preds = %281
  %304 = load i32, i32* @CL_ASYNC, align 4
  %305 = load i32, i32* %25, align 4
  %306 = or i32 %305, %304
  store i32 %306, i32* %25, align 4
  br label %307

307:                                              ; preds = %303, %281
  %308 = load i32, i32* %12, align 4
  %309 = load i32, i32* @IO_CLOSE, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %307
  %313 = load i32, i32* @CL_CLOSE, align 4
  %314 = load i32, i32* %25, align 4
  %315 = or i32 %314, %313
  store i32 %315, i32* %25, align 4
  br label %316

316:                                              ; preds = %312, %307
  %317 = load i32, i32* %12, align 4
  %318 = load i32, i32* @IO_NOCACHE, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %325

321:                                              ; preds = %316
  %322 = load i32, i32* @CL_NOCACHE, align 4
  %323 = load i32, i32* %25, align 4
  %324 = or i32 %323, %322
  store i32 %324, i32* %25, align 4
  br label %325

325:                                              ; preds = %321, %316
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %327 = load i32, i32* %17, align 4
  %328 = load i32, i32* %18, align 4
  %329 = load i32, i32* %20, align 4
  %330 = load i32, i32* %18, align 4
  %331 = add nsw i32 %329, %330
  %332 = load i32, i32* %24, align 4
  %333 = load i32, i32* %25, align 4
  %334 = load i32 (i32, i8*)*, i32 (i32, i8*)** %13, align 8
  %335 = load i8*, i8** %14, align 8
  %336 = call i32 @cluster_io(%struct.TYPE_6__* %326, i32 %327, i32 %328, i32 %331, i32 %332, i32 %333, i32 0, %struct.clios* null, i32 (i32, i8*)* %334, i8* %335)
  store i32 %336, i32* %30, align 4
  %337 = load i32, i32* %29, align 4
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %325
  %340 = load i32, i32* %30, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %339
  %343 = load i32, i32* %30, align 4
  store i32 %343, i32* %29, align 4
  br label %344

344:                                              ; preds = %342, %339, %325
  %345 = load i32, i32* %24, align 4
  %346 = load i32, i32* %28, align 4
  %347 = sub nsw i32 %346, %345
  store i32 %347, i32* %28, align 4
  br label %215

348:                                              ; preds = %252, %215
  %349 = load i32, i32* @DBG_FSRW, align 4
  %350 = call i32 @FSDBG_CODE(i32 %349, i32 51)
  %351 = load i32, i32* @DBG_FUNC_END, align 4
  %352 = or i32 %350, %351
  %353 = load i32, i32* %29, align 4
  %354 = call i32 @KERNEL_DEBUG(i32 %352, i32 1, i32 3, i32 %353, i32 0, i32 0)
  %355 = load i32, i32* %29, align 4
  store i32 %355, i32* %8, align 4
  br label %356

356:                                              ; preds = %348, %206, %122, %97, %73
  %357 = load i32, i32* %8, align 4
  ret i32 %357
}

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FSDBG_CODE(i32, i32) #1

declare dso_local i32 @vnode_pageout(%struct.TYPE_6__*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @ubc_create_upl_kernel(%struct.TYPE_6__*, i32, i32, i32*, i32**, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @upl_page_present(i32*, i32) #1

declare dso_local i32 @ubc_upl_abort(i32, i32) #1

declare dso_local i64 @upl_dirty_page(i32*, i32) #1

declare dso_local i32 @ubc_upl_abort_range(i32, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @cluster_io(%struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, %struct.clios*, i32 (i32, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
