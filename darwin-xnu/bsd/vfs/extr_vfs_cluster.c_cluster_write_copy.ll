; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_write_copy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_write_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.uio = type { i64, i32 }
%struct.cl_extent = type { i8*, i8* }
%struct.clios = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@DBG_FSRW = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@IO_PASSIVE = common dso_local global i32 0, align 4
@CL_PASSIVE = common dso_local global i32 0, align 4
@IO_NOCACHE = common dso_local global i32 0, align 4
@CL_NOCACHE = common dso_local global i32 0, align 4
@IO_SKIP_ENCRYPTION = common dso_local global i32 0, align 4
@CL_ENCRYPTED = common dso_local global i32 0, align 4
@CL_WRITE = common dso_local global i32 0, align 4
@IO_HEADZEROFILL = common dso_local global i32 0, align 4
@PAGE_MASK_64 = common dso_local global i64 0, align 8
@IO_TAILZEROFILL = common dso_local global i32 0, align 4
@PAGE_SIZE_64 = common dso_local global i64 0, align 8
@DBG_FUNC_END = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@IO_SYNC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@UPL_SET_LITE = common dso_local global i32 0, align 4
@UIO_FLAGS_IS_COMPRESSED_FILE = common dso_local global i32 0, align 4
@UPL_WILL_MODIFY = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_FILE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"cluster_write_copy: failed to get pagelist\00", align 1
@CL_READ = common dso_local global i32 0, align 4
@UPL_ABORT_DUMP_PAGES = common dso_local global i32 0, align 4
@UPL_ABORT_FREE_ON_EMPTY = common dso_local global i32 0, align 4
@VT_APFS = common dso_local global i64 0, align 8
@UPL_COMMIT_SET_DIRTY = common dso_local global i32 0, align 4
@UPL_COMMIT_INACTIVATE = common dso_local global i32 0, align 4
@UPL_COMMIT_FREE_ON_EMPTY = common dso_local global i32 0, align 4
@MNT_DEFWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.uio*, i32, i64, i64, i64, i64, i32, i32 (i32, i8*)*, i8*)* @cluster_write_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cluster_write_copy(%struct.TYPE_9__* %0, %struct.uio* %1, i32 %2, i64 %3, i64 %4, i64 %5, i64 %6, i32 %7, i32 (i32, i8*)* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.uio*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32 (i32, i8*)*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca %struct.cl_extent, align 8
  %46 = alloca i32, align 4
  %47 = alloca i64, align 8
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %12, align 8
  store %struct.uio* %1, %struct.uio** %13, align 8
  store i32 %2, i32* %14, align 4
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i64 %6, i64* %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 (i32, i8*)* %8, i32 (i32, i8*)** %20, align 8
  store i8* %9, i8** %21, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %35, align 4
  store i64 0, i64* %42, align 8
  store i32 0, i32* %43, align 4
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %44, align 4
  %54 = load %struct.uio*, %struct.uio** %13, align 8
  %55 = icmp ne %struct.uio* %54, null
  br i1 %55, label %56, label %72

56:                                               ; preds = %10
  %57 = load i32, i32* @DBG_FSRW, align 4
  %58 = call i32 @FSDBG_CODE(i32 %57, i32 40)
  %59 = load i32, i32* @DBG_FUNC_START, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.uio*, %struct.uio** %13, align 8
  %62 = getelementptr inbounds %struct.uio, %struct.uio* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* %14, align 4
  %66 = load i64, i64* %15, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i64, i64* %16, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @KERNEL_DEBUG(i32 %60, i32 %64, i32 %65, i32 %67, i32 %69, i32 0)
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %36, align 4
  br label %82

72:                                               ; preds = %10
  %73 = load i32, i32* @DBG_FSRW, align 4
  %74 = call i32 @FSDBG_CODE(i32 %73, i32 40)
  %75 = load i32, i32* @DBG_FUNC_START, align 4
  %76 = or i32 %74, %75
  %77 = load i64, i64* %15, align 8
  %78 = trunc i64 %77 to i32
  %79 = load i64, i64* %16, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @KERNEL_DEBUG(i32 %76, i32 0, i32 0, i32 %78, i32 %80, i32 0)
  store i32 0, i32* %36, align 4
  br label %82

82:                                               ; preds = %72, %56
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* @IO_PASSIVE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @CL_PASSIVE, align 4
  store i32 %88, i32* %46, align 4
  br label %90

89:                                               ; preds = %82
  store i32 0, i32* %46, align 4
  br label %90

90:                                               ; preds = %89, %87
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* @IO_NOCACHE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* @CL_NOCACHE, align 4
  %97 = load i32, i32* %46, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %46, align 4
  br label %99

99:                                               ; preds = %95, %90
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* @IO_SKIP_ENCRYPTION, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* @CL_ENCRYPTED, align 4
  %106 = load i32, i32* %46, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %46, align 4
  br label %108

108:                                              ; preds = %104, %99
  store i64 0, i64* %38, align 8
  store i64 0, i64* %40, align 8
  store i64 0, i64* %39, align 8
  store i64 0, i64* %41, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @CL_WRITE, align 4
  %113 = call i64 @cluster_max_io_size(i32 %111, i32 %112)
  store i64 %113, i64* %47, align 8
  %114 = load i32, i32* %19, align 4
  %115 = load i32, i32* @IO_HEADZEROFILL, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %146

118:                                              ; preds = %108
  %119 = load %struct.uio*, %struct.uio** %13, align 8
  %120 = icmp ne %struct.uio* %119, null
  br i1 %120, label %121, label %135

121:                                              ; preds = %118
  %122 = load i64, i64* %17, align 8
  %123 = load %struct.uio*, %struct.uio** %13, align 8
  %124 = getelementptr inbounds %struct.uio, %struct.uio* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp slt i64 %122, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %121
  %128 = load %struct.uio*, %struct.uio** %13, align 8
  %129 = getelementptr inbounds %struct.uio, %struct.uio* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %17, align 8
  %132 = sub nsw i64 %130, %131
  store i64 %132, i64* %38, align 8
  %133 = load i64, i64* %17, align 8
  store i64 %133, i64* %39, align 8
  br label %134

134:                                              ; preds = %127, %121
  br label %145

135:                                              ; preds = %118
  %136 = load i64, i64* %17, align 8
  %137 = load i64, i64* %16, align 8
  %138 = icmp slt i64 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load i64, i64* %16, align 8
  %141 = load i64, i64* %17, align 8
  %142 = sub nsw i64 %140, %141
  store i64 %142, i64* %38, align 8
  %143 = load i64, i64* %17, align 8
  store i64 %143, i64* %39, align 8
  br label %144

144:                                              ; preds = %139, %135
  br label %145

145:                                              ; preds = %144, %134
  br label %176

146:                                              ; preds = %108
  %147 = load %struct.uio*, %struct.uio** %13, align 8
  %148 = icmp ne %struct.uio* %147, null
  br i1 %148, label %149, label %175

149:                                              ; preds = %146
  %150 = load %struct.uio*, %struct.uio** %13, align 8
  %151 = getelementptr inbounds %struct.uio, %struct.uio* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %15, align 8
  %154 = icmp sgt i64 %152, %153
  br i1 %154, label %155, label %175

155:                                              ; preds = %149
  %156 = load %struct.uio*, %struct.uio** %13, align 8
  %157 = getelementptr inbounds %struct.uio, %struct.uio* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @PAGE_MASK_64, align 8
  %160 = xor i64 %159, -1
  %161 = and i64 %158, %160
  store i64 %161, i64* %39, align 8
  %162 = load i64, i64* %39, align 8
  %163 = load i64, i64* %15, align 8
  %164 = icmp sge i64 %162, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %155
  %166 = load %struct.uio*, %struct.uio** %13, align 8
  %167 = getelementptr inbounds %struct.uio, %struct.uio* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %39, align 8
  %170 = sub nsw i64 %168, %169
  store i64 %170, i64* %38, align 8
  %171 = load i32, i32* @IO_HEADZEROFILL, align 4
  %172 = load i32, i32* %19, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %19, align 4
  br label %174

174:                                              ; preds = %165, %155
  br label %175

175:                                              ; preds = %174, %149, %146
  br label %176

176:                                              ; preds = %175, %145
  %177 = load i32, i32* %19, align 4
  %178 = load i32, i32* @IO_TAILZEROFILL, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %200

181:                                              ; preds = %176
  %182 = load %struct.uio*, %struct.uio** %13, align 8
  %183 = icmp ne %struct.uio* %182, null
  br i1 %183, label %184, label %199

184:                                              ; preds = %181
  %185 = load %struct.uio*, %struct.uio** %13, align 8
  %186 = getelementptr inbounds %struct.uio, %struct.uio* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* %14, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %187, %189
  store i64 %190, i64* %41, align 8
  %191 = load i64, i64* %41, align 8
  %192 = load i64, i64* %18, align 8
  %193 = icmp slt i64 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %184
  %195 = load i64, i64* %18, align 8
  %196 = load i64, i64* %41, align 8
  %197 = sub nsw i64 %195, %196
  store i64 %197, i64* %40, align 8
  br label %198

198:                                              ; preds = %194, %184
  br label %199

199:                                              ; preds = %198, %181
  br label %233

200:                                              ; preds = %176
  %201 = load %struct.uio*, %struct.uio** %13, align 8
  %202 = icmp ne %struct.uio* %201, null
  br i1 %202, label %203, label %232

203:                                              ; preds = %200
  %204 = load i64, i64* %16, align 8
  %205 = load i64, i64* %15, align 8
  %206 = icmp sgt i64 %204, %205
  br i1 %206, label %207, label %232

207:                                              ; preds = %203
  %208 = load %struct.uio*, %struct.uio** %13, align 8
  %209 = getelementptr inbounds %struct.uio, %struct.uio* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i32, i32* %14, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %210, %212
  store i64 %213, i64* %41, align 8
  %214 = load i64, i64* %41, align 8
  %215 = load i64, i64* %16, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %231

217:                                              ; preds = %207
  %218 = load i64, i64* %41, align 8
  %219 = load i64, i64* @PAGE_MASK_64, align 8
  %220 = and i64 %218, %219
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %217
  %223 = load i64, i64* @PAGE_SIZE_64, align 8
  %224 = load i64, i64* %41, align 8
  %225 = load i64, i64* @PAGE_MASK_64, align 8
  %226 = and i64 %224, %225
  %227 = sub nsw i64 %223, %226
  store i64 %227, i64* %40, align 8
  %228 = load i32, i32* @IO_TAILZEROFILL, align 4
  %229 = load i32, i32* %19, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %19, align 4
  br label %231

231:                                              ; preds = %222, %217, %207
  br label %232

232:                                              ; preds = %231, %203, %200
  br label %233

233:                                              ; preds = %232, %199
  %234 = load i64, i64* %38, align 8
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %233
  %237 = load %struct.uio*, %struct.uio** %13, align 8
  %238 = icmp eq %struct.uio* %237, null
  br i1 %238, label %239, label %246

239:                                              ; preds = %236
  %240 = load i32, i32* @DBG_FSRW, align 4
  %241 = call i32 @FSDBG_CODE(i32 %240, i32 40)
  %242 = load i32, i32* @DBG_FUNC_END, align 4
  %243 = or i32 %241, %242
  %244 = load i32, i32* %35, align 4
  %245 = call i32 @KERNEL_DEBUG(i32 %243, i32 %244, i32 0, i32 0, i32 0, i32 0)
  store i32 0, i32* %11, align 4
  br label %875

246:                                              ; preds = %236, %233
  %247 = load %struct.uio*, %struct.uio** %13, align 8
  %248 = icmp ne %struct.uio* %247, null
  br i1 %248, label %249, label %256

249:                                              ; preds = %246
  %250 = load %struct.uio*, %struct.uio** %13, align 8
  %251 = getelementptr inbounds %struct.uio, %struct.uio* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %42, align 8
  %253 = load %struct.uio*, %struct.uio** %13, align 8
  %254 = call i32 @uio_resid(%struct.uio* %253)
  store i32 %254, i32* %43, align 4
  %255 = load i32, i32* @TRUE, align 4
  store i32 %255, i32* %44, align 4
  br label %256

256:                                              ; preds = %249, %246
  br label %257

257:                                              ; preds = %865, %256
  %258 = load i32, i32* %36, align 4
  %259 = sext i32 %258 to i64
  %260 = load i64, i64* %38, align 8
  %261 = add nsw i64 %259, %260
  %262 = load i64, i64* %40, align 8
  %263 = add nsw i64 %261, %262
  store i64 %263, i64* %37, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %257
  %266 = load i32, i32* %35, align 4
  %267 = icmp eq i32 %266, 0
  br label %268

268:                                              ; preds = %265, %257
  %269 = phi i1 [ false, %257 ], [ %267, %265 ]
  br i1 %269, label %270, label %866

270:                                              ; preds = %268
  %271 = load i64, i64* %38, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %282

273:                                              ; preds = %270
  %274 = load i64, i64* %39, align 8
  %275 = load i64, i64* @PAGE_MASK_64, align 8
  %276 = and i64 %274, %275
  %277 = trunc i64 %276 to i32
  store i32 %277, i32* %28, align 4
  %278 = load i64, i64* %39, align 8
  %279 = load i32, i32* %28, align 4
  %280 = sext i32 %279 to i64
  %281 = sub nsw i64 %278, %280
  store i64 %281, i64* %26, align 8
  br label %308

282:                                              ; preds = %270
  %283 = load i32, i32* %36, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %298

285:                                              ; preds = %282
  %286 = load %struct.uio*, %struct.uio** %13, align 8
  %287 = getelementptr inbounds %struct.uio, %struct.uio* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @PAGE_MASK_64, align 8
  %290 = and i64 %288, %289
  %291 = trunc i64 %290 to i32
  store i32 %291, i32* %28, align 4
  %292 = load %struct.uio*, %struct.uio** %13, align 8
  %293 = getelementptr inbounds %struct.uio, %struct.uio* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i32, i32* %28, align 4
  %296 = sext i32 %295 to i64
  %297 = sub nsw i64 %294, %296
  store i64 %297, i64* %26, align 8
  br label %307

298:                                              ; preds = %282
  %299 = load i64, i64* %41, align 8
  %300 = load i64, i64* @PAGE_MASK_64, align 8
  %301 = and i64 %299, %300
  %302 = trunc i64 %301 to i32
  store i32 %302, i32* %28, align 4
  %303 = load i64, i64* %41, align 8
  %304 = load i32, i32* %28, align 4
  %305 = sext i32 %304 to i64
  %306 = sub nsw i64 %303, %305
  store i64 %306, i64* %26, align 8
  br label %307

307:                                              ; preds = %298, %285
  br label %308

308:                                              ; preds = %307, %273
  %309 = load i32, i32* @DBG_FSRW, align 4
  %310 = call i32 @FSDBG_CODE(i32 %309, i32 46)
  %311 = load i32, i32* @DBG_FUNC_NONE, align 4
  %312 = or i32 %310, %311
  %313 = load i64, i64* %39, align 8
  %314 = trunc i64 %313 to i32
  %315 = load i64, i64* %38, align 8
  %316 = trunc i64 %315 to i32
  %317 = load i64, i64* %41, align 8
  %318 = trunc i64 %317 to i32
  %319 = load i64, i64* %40, align 8
  %320 = trunc i64 %319 to i32
  %321 = call i32 @KERNEL_DEBUG(i32 %312, i32 %314, i32 %316, i32 %318, i32 %320, i32 0)
  %322 = load i64, i64* %37, align 8
  %323 = load i64, i64* %47, align 8
  %324 = icmp sgt i64 %322, %323
  br i1 %324, label %325, label %327

325:                                              ; preds = %308
  %326 = load i64, i64* %47, align 8
  store i64 %326, i64* %37, align 8
  br label %327

327:                                              ; preds = %325, %308
  %328 = load i64, i64* %26, align 8
  %329 = load i64, i64* @PAGE_SIZE_64, align 8
  %330 = sdiv i64 %328, %329
  %331 = inttoptr i64 %330 to i8*
  %332 = getelementptr inbounds %struct.cl_extent, %struct.cl_extent* %45, i32 0, i32 1
  store i8* %331, i8** %332, align 8
  %333 = load %struct.uio*, %struct.uio** %13, align 8
  %334 = icmp ne %struct.uio* %333, null
  br i1 %334, label %335, label %399

335:                                              ; preds = %327
  %336 = load i32, i32* %19, align 4
  %337 = load i32, i32* @IO_SYNC, align 4
  %338 = load i32, i32* @IO_HEADZEROFILL, align 4
  %339 = or i32 %337, %338
  %340 = load i32, i32* @IO_TAILZEROFILL, align 4
  %341 = or i32 %339, %340
  %342 = and i32 %336, %341
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %399

344:                                              ; preds = %335
  %345 = load i32, i32* %28, align 4
  %346 = sext i32 %345 to i64
  %347 = load i64, i64* %37, align 8
  %348 = add nsw i64 %346, %347
  %349 = load i64, i64* %47, align 8
  %350 = icmp sgt i64 %348, %349
  br i1 %350, label %351, label %356

351:                                              ; preds = %344
  %352 = load i64, i64* %47, align 8
  %353 = load i32, i32* %28, align 4
  %354 = sext i32 %353 to i64
  %355 = sub nsw i64 %352, %354
  store i64 %355, i64* %37, align 8
  br label %356

356:                                              ; preds = %351, %344
  %357 = load i64, i64* %37, align 8
  %358 = trunc i64 %357 to i32
  store i32 %358, i32* %29, align 4
  %359 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %360 = load %struct.uio*, %struct.uio** %13, align 8
  %361 = call i32 @cluster_copy_ubc_data_internal(%struct.TYPE_9__* %359, %struct.uio* %360, i32* %29, i32 1, i32 1)
  store i32 %361, i32* %35, align 4
  %362 = load i32, i32* %35, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %356
  br label %866

365:                                              ; preds = %356
  %366 = load i64, i64* %37, align 8
  %367 = load i32, i32* %29, align 4
  %368 = sext i32 %367 to i64
  %369 = sub nsw i64 %366, %368
  %370 = load i32, i32* %36, align 4
  %371 = sext i32 %370 to i64
  %372 = sub nsw i64 %371, %369
  %373 = trunc i64 %372 to i32
  store i32 %373, i32* %36, align 4
  %374 = load i32, i32* %29, align 4
  %375 = sext i32 %374 to i64
  store i64 %375, i64* %37, align 8
  %376 = load %struct.uio*, %struct.uio** %13, align 8
  %377 = getelementptr inbounds %struct.uio, %struct.uio* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @PAGE_MASK_64, align 8
  %380 = and i64 %378, %379
  %381 = trunc i64 %380 to i32
  store i32 %381, i32* %28, align 4
  %382 = load %struct.uio*, %struct.uio** %13, align 8
  %383 = getelementptr inbounds %struct.uio, %struct.uio* %382, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = load i32, i32* %28, align 4
  %386 = sext i32 %385 to i64
  %387 = sub nsw i64 %384, %386
  store i64 %387, i64* %26, align 8
  %388 = load i64, i64* %37, align 8
  %389 = icmp eq i64 %388, 0
  br i1 %389, label %390, label %398

390:                                              ; preds = %365
  %391 = load i32, i32* %28, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %397

393:                                              ; preds = %390
  %394 = load i64, i64* @PAGE_SIZE_64, align 8
  %395 = load i64, i64* %26, align 8
  %396 = add nsw i64 %395, %394
  store i64 %396, i64* %26, align 8
  br label %397

397:                                              ; preds = %393, %390
  store i64 0, i64* %25, align 8
  br label %822

398:                                              ; preds = %365
  br label %399

399:                                              ; preds = %398, %335, %327
  %400 = load i32, i32* %28, align 4
  %401 = sext i32 %400 to i64
  %402 = load i64, i64* %37, align 8
  %403 = add nsw i64 %401, %402
  %404 = load i32, i32* @PAGE_SIZE, align 4
  %405 = sub nsw i32 %404, 1
  %406 = sext i32 %405 to i64
  %407 = add nsw i64 %403, %406
  %408 = load i32, i32* @PAGE_MASK, align 4
  %409 = xor i32 %408, -1
  %410 = sext i32 %409 to i64
  %411 = and i64 %407, %410
  store i64 %411, i64* %25, align 8
  %412 = load i64, i64* %25, align 8
  %413 = load i64, i64* %47, align 8
  %414 = icmp sgt i64 %412, %413
  br i1 %414, label %415, label %417

415:                                              ; preds = %399
  %416 = load i64, i64* %47, align 8
  store i64 %416, i64* %25, align 8
  br label %417

417:                                              ; preds = %415, %399
  %418 = load i64, i64* %25, align 8
  %419 = load i32, i32* @PAGE_SIZE, align 4
  %420 = sext i32 %419 to i64
  %421 = sdiv i64 %418, %420
  %422 = trunc i64 %421 to i32
  store i32 %422, i32* %27, align 4
  %423 = load i64, i64* %25, align 8
  %424 = load i32, i32* %28, align 4
  %425 = sext i32 %424 to i64
  %426 = sub nsw i64 %423, %425
  %427 = trunc i64 %426 to i32
  store i32 %427, i32* %30, align 4
  %428 = load i32, i32* %30, align 4
  %429 = sext i32 %428 to i64
  %430 = load i64, i64* %37, align 8
  %431 = icmp sgt i64 %429, %430
  br i1 %431, label %432, label %435

432:                                              ; preds = %417
  %433 = load i64, i64* %37, align 8
  %434 = trunc i64 %433 to i32
  store i32 %434, i32* %30, align 4
  br label %435

435:                                              ; preds = %432, %417
  %436 = load i32, i32* @DBG_FSRW, align 4
  %437 = call i32 @FSDBG_CODE(i32 %436, i32 41)
  %438 = load i32, i32* @DBG_FUNC_START, align 4
  %439 = or i32 %437, %438
  %440 = load i64, i64* %25, align 8
  %441 = trunc i64 %440 to i32
  %442 = load i32, i32* %30, align 4
  %443 = load i64, i64* %37, align 8
  %444 = trunc i64 %443 to i32
  %445 = call i32 @KERNEL_DEBUG(i32 %439, i32 %441, i32 %442, i32 %444, i32 0, i32 0)
  %446 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %447 = load i64, i64* %26, align 8
  %448 = load i64, i64* %25, align 8
  %449 = load i32, i32* @UPL_SET_LITE, align 4
  %450 = load %struct.uio*, %struct.uio** %13, align 8
  %451 = icmp ne %struct.uio* %450, null
  br i1 %451, label %452, label %460

452:                                              ; preds = %435
  %453 = load %struct.uio*, %struct.uio** %13, align 8
  %454 = getelementptr inbounds %struct.uio, %struct.uio* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 8
  %456 = load i32, i32* @UIO_FLAGS_IS_COMPRESSED_FILE, align 4
  %457 = and i32 %455, %456
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %460

459:                                              ; preds = %452
  br label %462

460:                                              ; preds = %452, %435
  %461 = load i32, i32* @UPL_WILL_MODIFY, align 4
  br label %462

462:                                              ; preds = %460, %459
  %463 = phi i32 [ 0, %459 ], [ %461, %460 ]
  %464 = or i32 %449, %463
  %465 = load i32, i32* @VM_KERN_MEMORY_FILE, align 4
  %466 = call i64 @ubc_create_upl_kernel(%struct.TYPE_9__* %446, i64 %447, i64 %448, i32* %23, i32** %22, i32 %464, i32 %465)
  store i64 %466, i64* %34, align 8
  %467 = load i64, i64* %34, align 8
  %468 = load i64, i64* @KERN_SUCCESS, align 8
  %469 = icmp ne i64 %467, %468
  br i1 %469, label %470, label %472

470:                                              ; preds = %462
  %471 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %472

472:                                              ; preds = %470, %462
  %473 = load i32, i32* @DBG_FSRW, align 4
  %474 = call i32 @FSDBG_CODE(i32 %473, i32 41)
  %475 = load i32, i32* @DBG_FUNC_END, align 4
  %476 = or i32 %474, %475
  %477 = load i32, i32* %23, align 4
  %478 = load i64, i64* %26, align 8
  %479 = trunc i64 %478 to i32
  %480 = load i32, i32* %28, align 4
  %481 = call i32 @KERNEL_DEBUG(i32 %476, i32 %477, i32 %479, i32 %480, i32 0, i32 0)
  %482 = load i32, i32* %28, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %544

484:                                              ; preds = %472
  %485 = load i64, i64* %26, align 8
  %486 = load i64, i64* %15, align 8
  %487 = icmp slt i64 %485, %486
  br i1 %487, label %488, label %544

488:                                              ; preds = %484
  %489 = load i32*, i32** %22, align 8
  %490 = call i32 @upl_valid_page(i32* %489, i32 0)
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %544, label %492

492:                                              ; preds = %488
  %493 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %493, i32* %48, align 4
  %494 = load i64, i64* %26, align 8
  %495 = load i32, i32* %48, align 4
  %496 = sext i32 %495 to i64
  %497 = add nsw i64 %494, %496
  %498 = load i64, i64* %15, align 8
  %499 = icmp sgt i64 %497, %498
  br i1 %499, label %500, label %505

500:                                              ; preds = %492
  %501 = load i64, i64* %15, align 8
  %502 = load i64, i64* %26, align 8
  %503 = sub nsw i64 %501, %502
  %504 = trunc i64 %503 to i32
  store i32 %504, i32* %48, align 4
  br label %505

505:                                              ; preds = %500, %492
  %506 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %507 = load i32, i32* %23, align 4
  %508 = load i64, i64* %26, align 8
  %509 = load i32, i32* %48, align 4
  %510 = load i32, i32* @CL_READ, align 4
  %511 = load i32, i32* %46, align 4
  %512 = or i32 %510, %511
  %513 = load i32 (i32, i8*)*, i32 (i32, i8*)** %20, align 8
  %514 = load i8*, i8** %21, align 8
  %515 = call i32 @cluster_io(%struct.TYPE_9__* %506, i32 %507, i32 0, i64 %508, i32 %509, i32 %512, i32 0, %struct.clios* null, i32 (i32, i8*)* %513, i8* %514)
  store i32 %515, i32* %35, align 4
  %516 = load i32, i32* %35, align 4
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %543

518:                                              ; preds = %505
  %519 = load i32, i32* %23, align 4
  %520 = load i32, i32* @PAGE_SIZE, align 4
  %521 = sext i32 %520 to i64
  %522 = load i32, i32* @UPL_ABORT_DUMP_PAGES, align 4
  %523 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %524 = or i32 %522, %523
  %525 = call i32 @ubc_upl_abort_range(i32 %519, i32 0, i64 %521, i32 %524)
  %526 = load i64, i64* %25, align 8
  %527 = load i32, i32* @PAGE_SIZE, align 4
  %528 = sext i32 %527 to i64
  %529 = icmp sgt i64 %526, %528
  br i1 %529, label %530, label %535

530:                                              ; preds = %518
  %531 = load i32, i32* %23, align 4
  %532 = load i64, i64* %25, align 8
  %533 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %534 = call i32 @ubc_upl_abort_range(i32 %531, i32 0, i64 %532, i32 %533)
  br label %535

535:                                              ; preds = %530, %518
  %536 = load i32, i32* @DBG_FSRW, align 4
  %537 = call i32 @FSDBG_CODE(i32 %536, i32 45)
  %538 = load i32, i32* @DBG_FUNC_NONE, align 4
  %539 = or i32 %537, %538
  %540 = load i32, i32* %23, align 4
  %541 = load i32, i32* %35, align 4
  %542 = call i32 @KERNEL_DEBUG(i32 %539, i32 %540, i32 0, i32 0, i32 %541, i32 0)
  br label %866

543:                                              ; preds = %505
  br label %544

544:                                              ; preds = %543, %488, %484, %472
  %545 = load i32, i32* %28, align 4
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %552, label %547

547:                                              ; preds = %544
  %548 = load i64, i64* %25, align 8
  %549 = load i32, i32* @PAGE_SIZE, align 4
  %550 = sext i32 %549 to i64
  %551 = icmp sgt i64 %548, %550
  br i1 %551, label %552, label %645

552:                                              ; preds = %547, %544
  %553 = load i32, i32* %28, align 4
  %554 = load i32, i32* %30, align 4
  %555 = add nsw i32 %553, %554
  %556 = load i32, i32* @PAGE_MASK, align 4
  %557 = and i32 %555, %556
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %645

559:                                              ; preds = %552
  %560 = load i64, i64* %25, align 8
  %561 = load i32, i32* @PAGE_SIZE, align 4
  %562 = sext i32 %561 to i64
  %563 = sub nsw i64 %560, %562
  %564 = trunc i64 %563 to i32
  store i32 %564, i32* %24, align 4
  %565 = load i64, i64* %26, align 8
  %566 = load i32, i32* %28, align 4
  %567 = sext i32 %566 to i64
  %568 = add nsw i64 %565, %567
  %569 = load i32, i32* %30, align 4
  %570 = sext i32 %569 to i64
  %571 = add nsw i64 %568, %570
  %572 = load i64, i64* %15, align 8
  %573 = icmp slt i64 %571, %572
  br i1 %573, label %574, label %644

574:                                              ; preds = %559
  %575 = load i32*, i32** %22, align 8
  %576 = load i32, i32* %24, align 4
  %577 = load i32, i32* @PAGE_SIZE, align 4
  %578 = sdiv i32 %576, %577
  %579 = call i32 @upl_valid_page(i32* %575, i32 %578)
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %644, label %581

581:                                              ; preds = %574
  %582 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %582, i32* %49, align 4
  %583 = load i64, i64* %26, align 8
  %584 = load i32, i32* %24, align 4
  %585 = sext i32 %584 to i64
  %586 = add nsw i64 %583, %585
  %587 = load i32, i32* %49, align 4
  %588 = sext i32 %587 to i64
  %589 = add nsw i64 %586, %588
  %590 = load i64, i64* %15, align 8
  %591 = icmp sgt i64 %589, %590
  br i1 %591, label %592, label %600

592:                                              ; preds = %581
  %593 = load i64, i64* %15, align 8
  %594 = load i64, i64* %26, align 8
  %595 = load i32, i32* %24, align 4
  %596 = sext i32 %595 to i64
  %597 = add nsw i64 %594, %596
  %598 = sub nsw i64 %593, %597
  %599 = trunc i64 %598 to i32
  store i32 %599, i32* %49, align 4
  br label %600

600:                                              ; preds = %592, %581
  %601 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %602 = load i32, i32* %23, align 4
  %603 = load i32, i32* %24, align 4
  %604 = load i64, i64* %26, align 8
  %605 = load i32, i32* %24, align 4
  %606 = sext i32 %605 to i64
  %607 = add nsw i64 %604, %606
  %608 = load i32, i32* %49, align 4
  %609 = load i32, i32* @CL_READ, align 4
  %610 = load i32, i32* %46, align 4
  %611 = or i32 %609, %610
  %612 = load i32 (i32, i8*)*, i32 (i32, i8*)** %20, align 8
  %613 = load i8*, i8** %21, align 8
  %614 = call i32 @cluster_io(%struct.TYPE_9__* %601, i32 %602, i32 %603, i64 %607, i32 %608, i32 %611, i32 0, %struct.clios* null, i32 (i32, i8*)* %612, i8* %613)
  store i32 %614, i32* %35, align 4
  %615 = load i32, i32* %35, align 4
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %643

617:                                              ; preds = %600
  %618 = load i32, i32* %23, align 4
  %619 = load i32, i32* %24, align 4
  %620 = load i32, i32* @PAGE_SIZE, align 4
  %621 = sext i32 %620 to i64
  %622 = load i32, i32* @UPL_ABORT_DUMP_PAGES, align 4
  %623 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %624 = or i32 %622, %623
  %625 = call i32 @ubc_upl_abort_range(i32 %618, i32 %619, i64 %621, i32 %624)
  %626 = load i64, i64* %25, align 8
  %627 = load i32, i32* @PAGE_SIZE, align 4
  %628 = sext i32 %627 to i64
  %629 = icmp sgt i64 %626, %628
  br i1 %629, label %630, label %635

630:                                              ; preds = %617
  %631 = load i32, i32* %23, align 4
  %632 = load i64, i64* %25, align 8
  %633 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %634 = call i32 @ubc_upl_abort_range(i32 %631, i32 0, i64 %632, i32 %633)
  br label %635

635:                                              ; preds = %630, %617
  %636 = load i32, i32* @DBG_FSRW, align 4
  %637 = call i32 @FSDBG_CODE(i32 %636, i32 45)
  %638 = load i32, i32* @DBG_FUNC_NONE, align 4
  %639 = or i32 %637, %638
  %640 = load i32, i32* %23, align 4
  %641 = load i32, i32* %35, align 4
  %642 = call i32 @KERNEL_DEBUG(i32 %639, i32 %640, i32 0, i32 0, i32 %641, i32 0)
  br label %866

643:                                              ; preds = %600
  br label %644

644:                                              ; preds = %643, %574, %559
  br label %645

645:                                              ; preds = %644, %552, %547
  %646 = load i32, i32* %30, align 4
  store i32 %646, i32* %29, align 4
  %647 = load i32, i32* %28, align 4
  store i32 %647, i32* %31, align 4
  br label %648

648:                                              ; preds = %666, %645
  %649 = load i64, i64* %38, align 8
  %650 = icmp ne i64 %649, 0
  br i1 %650, label %651, label %654

651:                                              ; preds = %648
  %652 = load i32, i32* %29, align 4
  %653 = icmp ne i32 %652, 0
  br label %654

654:                                              ; preds = %651, %648
  %655 = phi i1 [ false, %648 ], [ %653, %651 ]
  br i1 %655, label %656, label %689

656:                                              ; preds = %654
  %657 = load i64, i64* %38, align 8
  %658 = load i32, i32* %29, align 4
  %659 = sext i32 %658 to i64
  %660 = icmp slt i64 %657, %659
  br i1 %660, label %661, label %664

661:                                              ; preds = %656
  %662 = load i64, i64* %38, align 8
  %663 = trunc i64 %662 to i32
  store i32 %663, i32* %32, align 4
  br label %666

664:                                              ; preds = %656
  %665 = load i32, i32* %29, align 4
  store i32 %665, i32* %32, align 4
  br label %666

666:                                              ; preds = %664, %661
  %667 = load i32, i32* %23, align 4
  %668 = load i32*, i32** %22, align 8
  %669 = load i32, i32* %19, align 4
  %670 = load i32, i32* %31, align 4
  %671 = load i64, i64* %39, align 8
  %672 = load i64, i64* %26, align 8
  %673 = load i32, i32* %32, align 4
  %674 = call i32 @cluster_zero_range(i32 %667, i32* %668, i32 %669, i32 %670, i64 %671, i64 %672, i32 %673)
  store i32 %674, i32* %32, align 4
  %675 = load i32, i32* %32, align 4
  %676 = load i32, i32* %29, align 4
  %677 = sub nsw i32 %676, %675
  store i32 %677, i32* %29, align 4
  %678 = load i32, i32* %32, align 4
  %679 = sext i32 %678 to i64
  %680 = load i64, i64* %38, align 8
  %681 = sub nsw i64 %680, %679
  store i64 %681, i64* %38, align 8
  %682 = load i32, i32* %32, align 4
  %683 = sext i32 %682 to i64
  %684 = load i64, i64* %39, align 8
  %685 = add nsw i64 %684, %683
  store i64 %685, i64* %39, align 8
  %686 = load i32, i32* %32, align 4
  %687 = load i32, i32* %31, align 4
  %688 = add nsw i32 %687, %686
  store i32 %688, i32* %31, align 4
  br label %648

689:                                              ; preds = %654
  %690 = load i32, i32* %29, align 4
  %691 = icmp ne i32 %690, 0
  br i1 %691, label %692, label %729

692:                                              ; preds = %689
  %693 = load i32, i32* %36, align 4
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %729

695:                                              ; preds = %692
  %696 = load i32, i32* %36, align 4
  %697 = load i32, i32* %29, align 4
  %698 = call i32 @min(i32 %696, i32 %697)
  store i32 %698, i32* %33, align 4
  %699 = load i32, i32* %33, align 4
  store i32 %699, i32* %50, align 4
  %700 = load %struct.uio*, %struct.uio** %13, align 8
  %701 = load i32, i32* %23, align 4
  %702 = load i32, i32* %31, align 4
  %703 = call i32 @cluster_copy_upl_data(%struct.uio* %700, i32 %701, i32 %702, i32* %50)
  store i32 %703, i32* %35, align 4
  %704 = load i32, i32* %35, align 4
  %705 = icmp ne i32 %704, 0
  br i1 %705, label %706, label %718

706:                                              ; preds = %695
  %707 = load i32, i32* %23, align 4
  %708 = load i64, i64* %25, align 8
  %709 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %710 = call i32 @ubc_upl_abort_range(i32 %707, i32 0, i64 %708, i32 %709)
  %711 = load i32, i32* @DBG_FSRW, align 4
  %712 = call i32 @FSDBG_CODE(i32 %711, i32 45)
  %713 = load i32, i32* @DBG_FUNC_NONE, align 4
  %714 = or i32 %712, %713
  %715 = load i32, i32* %23, align 4
  %716 = load i32, i32* %35, align 4
  %717 = call i32 @KERNEL_DEBUG(i32 %714, i32 %715, i32 0, i32 0, i32 %716, i32 0)
  br label %728

718:                                              ; preds = %695
  %719 = load i32, i32* %33, align 4
  %720 = load i32, i32* %36, align 4
  %721 = sub nsw i32 %720, %719
  store i32 %721, i32* %36, align 4
  %722 = load i32, i32* %33, align 4
  %723 = load i32, i32* %29, align 4
  %724 = sub nsw i32 %723, %722
  store i32 %724, i32* %29, align 4
  %725 = load i32, i32* %33, align 4
  %726 = load i32, i32* %31, align 4
  %727 = add nsw i32 %726, %725
  store i32 %727, i32* %31, align 4
  br label %728

728:                                              ; preds = %718, %706
  br label %729

729:                                              ; preds = %728, %692, %689
  br label %730

730:                                              ; preds = %751, %729
  %731 = load i32, i32* %29, align 4
  %732 = icmp ne i32 %731, 0
  br i1 %732, label %733, label %739

733:                                              ; preds = %730
  %734 = load i64, i64* %40, align 8
  %735 = icmp ne i64 %734, 0
  br i1 %735, label %736, label %739

736:                                              ; preds = %733
  %737 = load i32, i32* %35, align 4
  %738 = icmp eq i32 %737, 0
  br label %739

739:                                              ; preds = %736, %733, %730
  %740 = phi i1 [ false, %733 ], [ false, %730 ], [ %738, %736 ]
  br i1 %740, label %741, label %774

741:                                              ; preds = %739
  %742 = load i64, i64* %40, align 8
  %743 = load i32, i32* %29, align 4
  %744 = sext i32 %743 to i64
  %745 = icmp slt i64 %742, %744
  br i1 %745, label %746, label %749

746:                                              ; preds = %741
  %747 = load i64, i64* %40, align 8
  %748 = trunc i64 %747 to i32
  store i32 %748, i32* %32, align 4
  br label %751

749:                                              ; preds = %741
  %750 = load i32, i32* %29, align 4
  store i32 %750, i32* %32, align 4
  br label %751

751:                                              ; preds = %749, %746
  %752 = load i32, i32* %23, align 4
  %753 = load i32*, i32** %22, align 8
  %754 = load i32, i32* %19, align 4
  %755 = load i32, i32* %31, align 4
  %756 = load i64, i64* %41, align 8
  %757 = load i64, i64* %26, align 8
  %758 = load i32, i32* %32, align 4
  %759 = call i32 @cluster_zero_range(i32 %752, i32* %753, i32 %754, i32 %755, i64 %756, i64 %757, i32 %758)
  store i32 %759, i32* %32, align 4
  %760 = load i32, i32* %32, align 4
  %761 = load i32, i32* %29, align 4
  %762 = sub nsw i32 %761, %760
  store i32 %762, i32* %29, align 4
  %763 = load i32, i32* %32, align 4
  %764 = sext i32 %763 to i64
  %765 = load i64, i64* %40, align 8
  %766 = sub nsw i64 %765, %764
  store i64 %766, i64* %40, align 8
  %767 = load i32, i32* %32, align 4
  %768 = sext i32 %767 to i64
  %769 = load i64, i64* %41, align 8
  %770 = add nsw i64 %769, %768
  store i64 %770, i64* %41, align 8
  %771 = load i32, i32* %32, align 4
  %772 = load i32, i32* %31, align 4
  %773 = add nsw i32 %772, %771
  store i32 %773, i32* %31, align 4
  br label %730

774:                                              ; preds = %739
  %775 = load i32, i32* %35, align 4
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %777, label %865

777:                                              ; preds = %774
  store i32 1, i32* %51, align 4
  %778 = load i32, i32* %28, align 4
  %779 = load i32, i32* %30, align 4
  %780 = add nsw i32 %779, %778
  store i32 %780, i32* %30, align 4
  %781 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %782 = call i64 @vnode_tag(%struct.TYPE_9__* %781)
  %783 = load i64, i64* @VT_APFS, align 8
  %784 = icmp eq i64 %782, %783
  br i1 %784, label %785, label %790

785:                                              ; preds = %777
  %786 = load i64, i64* %16, align 8
  %787 = load i64, i64* %15, align 8
  %788 = icmp slt i64 %786, %787
  br i1 %788, label %789, label %790

789:                                              ; preds = %785
  store i32 0, i32* %51, align 4
  br label %790

790:                                              ; preds = %789, %785, %777
  %791 = load i32, i32* %51, align 4
  %792 = icmp ne i32 %791, 0
  br i1 %792, label %793, label %813

793:                                              ; preds = %790
  %794 = load i64, i64* %26, align 8
  %795 = load i32, i32* %30, align 4
  %796 = sext i32 %795 to i64
  %797 = add nsw i64 %794, %796
  %798 = load i64, i64* %16, align 8
  %799 = icmp sge i64 %797, %798
  br i1 %799, label %800, label %813

800:                                              ; preds = %793
  %801 = load i32, i32* %30, align 4
  %802 = sext i32 %801 to i64
  %803 = load i64, i64* %25, align 8
  %804 = icmp slt i64 %802, %803
  br i1 %804, label %805, label %813

805:                                              ; preds = %800
  %806 = load i32, i32* %23, align 4
  %807 = load i32, i32* %30, align 4
  %808 = load i64, i64* %25, align 8
  %809 = load i32, i32* %30, align 4
  %810 = sext i32 %809 to i64
  %811 = sub nsw i64 %808, %810
  %812 = call i32 @cluster_zero(i32 %806, i32 %807, i64 %811, i32* null)
  br label %813

813:                                              ; preds = %805, %800, %793, %790
  %814 = load i32, i32* %23, align 4
  %815 = load i64, i64* %25, align 8
  %816 = load i32, i32* @UPL_COMMIT_SET_DIRTY, align 4
  %817 = load i32, i32* @UPL_COMMIT_INACTIVATE, align 4
  %818 = or i32 %816, %817
  %819 = load i32, i32* @UPL_COMMIT_FREE_ON_EMPTY, align 4
  %820 = or i32 %818, %819
  %821 = call i32 @ubc_upl_commit_range(i32 %814, i32 0, i64 %815, i32 %820)
  br label %822

822:                                              ; preds = %813, %397
  %823 = load i64, i64* %26, align 8
  %824 = load i64, i64* %25, align 8
  %825 = add nsw i64 %823, %824
  %826 = load i64, i64* @PAGE_SIZE_64, align 8
  %827 = sdiv i64 %825, %826
  %828 = inttoptr i64 %827 to i8*
  %829 = getelementptr inbounds %struct.cl_extent, %struct.cl_extent* %45, i32 0, i32 0
  store i8* %828, i8** %829, align 8
  %830 = load i32, i32* %19, align 4
  %831 = load i32, i32* @IO_SYNC, align 4
  %832 = and i32 %830, %831
  %833 = icmp ne i32 %832, 0
  br i1 %833, label %834, label %842

834:                                              ; preds = %822
  %835 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %836 = load i64, i64* %16, align 8
  %837 = load i32, i32* %19, align 4
  %838 = load i32 (i32, i8*)*, i32 (i32, i8*)** %20, align 8
  %839 = load i8*, i8** %21, align 8
  %840 = load i32, i32* @FALSE, align 4
  %841 = call i32 @cluster_push_now(%struct.TYPE_9__* %835, %struct.cl_extent* %45, i64 %836, i32 %837, i32 (i32, i8*)* %838, i8* %839, i32 %840)
  store i32 %841, i32* %35, align 4
  br label %864

842:                                              ; preds = %822
  %843 = load i32, i32* @FALSE, align 4
  store i32 %843, i32* %52, align 4
  %844 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %845 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %844, i32 0, i32 0
  %846 = load i32, i32* %845, align 4
  %847 = call i32 @vfs_flags(i32 %846)
  %848 = load i32, i32* @MNT_DEFWRITE, align 4
  %849 = and i32 %847, %848
  %850 = icmp ne i32 %849, 0
  br i1 %850, label %851, label %853

851:                                              ; preds = %842
  %852 = load i32, i32* @TRUE, align 4
  store i32 %852, i32* %52, align 4
  br label %853

853:                                              ; preds = %851, %842
  %854 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %855 = load i32, i32* %19, align 4
  %856 = load i32, i32* %52, align 4
  %857 = load i64, i64* %42, align 8
  %858 = load i32, i32* %43, align 4
  %859 = load i64, i64* %16, align 8
  %860 = load i32 (i32, i8*)*, i32 (i32, i8*)** %20, align 8
  %861 = load i8*, i8** %21, align 8
  %862 = load i32, i32* @FALSE, align 4
  %863 = call i32 @cluster_update_state_internal(%struct.TYPE_9__* %854, %struct.cl_extent* %45, i32 %855, i32 %856, i32* %44, i64 %857, i32 %858, i64 %859, i32 (i32, i8*)* %860, i8* %861, i32 %862)
  br label %864

864:                                              ; preds = %853, %834
  br label %865

865:                                              ; preds = %864, %774
  br label %257

866:                                              ; preds = %635, %535, %364, %268
  %867 = load i32, i32* @DBG_FSRW, align 4
  %868 = call i32 @FSDBG_CODE(i32 %867, i32 40)
  %869 = load i32, i32* @DBG_FUNC_END, align 4
  %870 = or i32 %868, %869
  %871 = load i32, i32* %35, align 4
  %872 = load i32, i32* %36, align 4
  %873 = call i32 @KERNEL_DEBUG(i32 %870, i32 %871, i32 0, i32 %872, i32 0, i32 0)
  %874 = load i32, i32* %35, align 4
  store i32 %874, i32* %11, align 4
  br label %875

875:                                              ; preds = %866, %239
  %876 = load i32, i32* %11, align 4
  ret i32 %876
}

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FSDBG_CODE(i32, i32) #1

declare dso_local i64 @cluster_max_io_size(i32, i32) #1

declare dso_local i32 @uio_resid(%struct.uio*) #1

declare dso_local i32 @cluster_copy_ubc_data_internal(%struct.TYPE_9__*, %struct.uio*, i32*, i32, i32) #1

declare dso_local i64 @ubc_create_upl_kernel(%struct.TYPE_9__*, i64, i64, i32*, i32**, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @upl_valid_page(i32*, i32) #1

declare dso_local i32 @cluster_io(%struct.TYPE_9__*, i32, i32, i64, i32, i32, i32, %struct.clios*, i32 (i32, i8*)*, i8*) #1

declare dso_local i32 @ubc_upl_abort_range(i32, i32, i64, i32) #1

declare dso_local i32 @cluster_zero_range(i32, i32*, i32, i32, i64, i64, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @cluster_copy_upl_data(%struct.uio*, i32, i32, i32*) #1

declare dso_local i64 @vnode_tag(%struct.TYPE_9__*) #1

declare dso_local i32 @cluster_zero(i32, i32, i64, i32*) #1

declare dso_local i32 @ubc_upl_commit_range(i32, i32, i64, i32) #1

declare dso_local i32 @cluster_push_now(%struct.TYPE_9__*, %struct.cl_extent*, i64, i32, i32 (i32, i8*)*, i8*, i32) #1

declare dso_local i32 @vfs_flags(i32) #1

declare dso_local i32 @cluster_update_state_internal(%struct.TYPE_9__*, %struct.cl_extent*, i32, i32, i32*, i64, i32, i64, i32 (i32, i8*)*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
