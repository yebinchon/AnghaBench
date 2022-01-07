; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_read_copy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_read_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.uio = type { i32 }
%struct.cl_readahead = type { i32, i32, i32, i64 }
%struct.clios = type { i32, i32, i64, i64, i64 }
%struct.cl_extent = type { i32, i32 }

@IOPOL_DEFAULT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@DBG_FSRW = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@IO_ENCRYPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"encrypted blocks will hit UBC!\00", align 1
@THROTTLE_LEVEL_TIER3 = common dso_local global i32 0, align 4
@THROTTLE_LEVEL_TIER2 = common dso_local global i32 0, align 4
@IO_NOCACHE = common dso_local global i32 0, align 4
@IO_PASSIVE = common dso_local global i32 0, align 4
@CL_PASSIVE = common dso_local global i32 0, align 4
@CL_NOCACHE = common dso_local global i32 0, align 4
@IO_SKIP_ENCRYPTION = common dso_local global i32 0, align 4
@CL_ENCRYPTED = common dso_local global i32 0, align 4
@CL_READ = common dso_local global i32 0, align 4
@IO_RAOFF = common dso_local global i32 0, align 4
@PAGE_MASK_64 = common dso_local global i32 0, align 4
@THROTTLE_MAX_IOSIZE = common dso_local global i32 0, align 4
@PAGE_SIZE_64 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@IO_RETURN_ON_THROTTLE = common dso_local global i32 0, align 4
@THROTTLE_NOW = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@UPL_FILE_IO = common dso_local global i32 0, align 4
@UPL_SET_LITE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_FILE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"cluster_read_copy: failed to get pagelist\00", align 1
@DBG_FUNC_END = common dso_local global i32 0, align 4
@cl_mtx_grp = common dso_local global i32 0, align 4
@cl_mtx_attr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@CL_ASYNC = common dso_local global i32 0, align 4
@UPL_ABORT_FREE_ON_EMPTY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"cluster_read_copy\00", align 1
@UPL_ABORT_DUMP_PAGES = common dso_local global i32 0, align 4
@UPL_COMMIT_CLEAR_DIRTY = common dso_local global i32 0, align 4
@UPL_COMMIT_FREE_ON_EMPTY = common dso_local global i32 0, align 4
@UPL_COMMIT_INACTIVATE = common dso_local global i32 0, align 4
@UPL_COMMIT_SPECULATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.uio*, i32, i32, i32, i32 (i32, i8*)*, i8*)* @cluster_read_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cluster_read_copy(%struct.TYPE_12__* %0, %struct.uio* %1, i32 %2, i32 %3, i32 %4, i32 (i32, i8*)* %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.uio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32 (i32, i8*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
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
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca %struct.cl_readahead*, align 8
  %40 = alloca %struct.clios, align 8
  %41 = alloca %struct.cl_extent, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i64, align 8
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store %struct.uio* %1, %struct.uio** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 (i32, i8*)* %5, i32 (i32, i8*)** %13, align 8
  store i8* %6, i8** %14, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 1, i32* %37, align 4
  store i32 1, i32* %38, align 4
  store i32 1, i32* %43, align 4
  %51 = load i32, i32* @IOPOL_DEFAULT, align 4
  store i32 %51, i32* %44, align 4
  %52 = load i64, i64* @FALSE, align 8
  store i64 %52, i64* %45, align 8
  %53 = load i32, i32* @DBG_FSRW, align 4
  %54 = call i32 @FSDBG_CODE(i32 %53, i32 32)
  %55 = load i32, i32* @DBG_FUNC_START, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.uio*, %struct.uio** %9, align 8
  %58 = getelementptr inbounds %struct.uio, %struct.uio* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @KERNEL_DEBUG(i32 %56, i32 %59, i32 %60, i32 %61, i32 %62, i32 0)
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @IO_ENCRYPTED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %7
  %69 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %7
  %71 = call i32 @throttle_get_io_policy(i32* null)
  store i32 %71, i32* %44, align 4
  %72 = load i32, i32* %44, align 4
  %73 = load i32, i32* @THROTTLE_LEVEL_TIER3, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %84, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %44, align 4
  %77 = load i32, i32* @THROTTLE_LEVEL_TIER2, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @IO_NOCACHE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79, %75, %70
  store i32 0, i32* %43, align 4
  br label %85

85:                                               ; preds = %84, %79
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @IO_PASSIVE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @CL_PASSIVE, align 4
  store i32 %91, i32* %42, align 4
  br label %93

92:                                               ; preds = %85
  store i32 0, i32* %42, align 4
  br label %93

93:                                               ; preds = %92, %90
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @IO_NOCACHE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* @CL_NOCACHE, align 4
  %100 = load i32, i32* %42, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %42, align 4
  br label %102

102:                                              ; preds = %98, %93
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @IO_SKIP_ENCRYPTION, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i32, i32* @CL_ENCRYPTED, align 4
  %109 = load i32, i32* %42, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %42, align 4
  br label %111

111:                                              ; preds = %107, %102
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @CL_READ, align 4
  %116 = call i32 @cluster_max_io_size(i32 %114, i32 %115)
  store i32 %116, i32* %35, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %118 = load i32, i32* %35, align 4
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @disk_conditioner_mount_is_ssd(i32 %121)
  %123 = call i32 @MAX_PREFETCH(%struct.TYPE_12__* %117, i32 %118, i32 %122)
  store i32 %123, i32* %36, align 4
  %124 = load i32, i32* %36, align 4
  store i32 %124, i32* %34, align 4
  %125 = load %struct.uio*, %struct.uio** %9, align 8
  %126 = getelementptr inbounds %struct.uio, %struct.uio* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %127, %128
  store i32 %129, i32* %27, align 4
  %130 = load i32, i32* %27, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %111
  %134 = load i32, i32* %11, align 4
  store i32 %134, i32* %27, align 4
  br label %135

135:                                              ; preds = %133, %111
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* @IO_RAOFF, align 4
  %138 = load i32, i32* @IO_NOCACHE, align 4
  %139 = or i32 %137, %138
  %140 = and i32 %136, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %154, label %142

142:                                              ; preds = %135
  %143 = load i32, i32* %27, align 4
  %144 = load i32, i32* @PAGE_MASK_64, align 4
  %145 = xor i32 %144, -1
  %146 = and i32 %143, %145
  %147 = load %struct.uio*, %struct.uio** %9, align 8
  %148 = getelementptr inbounds %struct.uio, %struct.uio* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @PAGE_MASK_64, align 4
  %151 = xor i32 %150, -1
  %152 = and i32 %149, %151
  %153 = icmp eq i32 %146, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %142, %135
  store i32 0, i32* %37, align 4
  store %struct.cl_readahead* null, %struct.cl_readahead** %39, align 8
  br label %179

155:                                              ; preds = %142
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %157 = call i64 @cluster_is_throttled(%struct.TYPE_12__* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  store i32 0, i32* %37, align 4
  store i32 0, i32* %38, align 4
  %160 = load i32, i32* @THROTTLE_MAX_IOSIZE, align 4
  store i32 %160, i32* %34, align 4
  br label %161

161:                                              ; preds = %159, %155
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %163 = call %struct.cl_readahead* @cluster_get_rap(%struct.TYPE_12__* %162)
  store %struct.cl_readahead* %163, %struct.cl_readahead** %39, align 8
  %164 = icmp eq %struct.cl_readahead* %163, null
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  store i32 0, i32* %37, align 4
  br label %178

166:                                              ; preds = %161
  %167 = load %struct.uio*, %struct.uio** %9, align 8
  %168 = getelementptr inbounds %struct.uio, %struct.uio* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @PAGE_SIZE_64, align 4
  %171 = sdiv i32 %169, %170
  %172 = getelementptr inbounds %struct.cl_extent, %struct.cl_extent* %41, i32 0, i32 0
  store i32 %171, i32* %172, align 4
  %173 = load i32, i32* %27, align 4
  %174 = sub nsw i32 %173, 1
  %175 = load i32, i32* @PAGE_SIZE_64, align 4
  %176 = sdiv i32 %174, %175
  %177 = getelementptr inbounds %struct.cl_extent, %struct.cl_extent* %41, i32 0, i32 1
  store i32 %176, i32* %177, align 4
  br label %178

178:                                              ; preds = %166, %165
  br label %179

179:                                              ; preds = %178, %154
  %180 = load %struct.cl_readahead*, %struct.cl_readahead** %39, align 8
  %181 = icmp ne %struct.cl_readahead* %180, null
  br i1 %181, label %182, label %224

182:                                              ; preds = %179
  %183 = load %struct.cl_readahead*, %struct.cl_readahead** %39, align 8
  %184 = getelementptr inbounds %struct.cl_readahead, %struct.cl_readahead* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %224

187:                                              ; preds = %182
  %188 = load %struct.cl_readahead*, %struct.cl_readahead** %39, align 8
  %189 = getelementptr inbounds %struct.cl_readahead, %struct.cl_readahead* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = getelementptr inbounds %struct.cl_extent, %struct.cl_extent* %41, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %190, %192
  br i1 %193, label %202, label %194

194:                                              ; preds = %187
  %195 = load %struct.cl_readahead*, %struct.cl_readahead** %39, align 8
  %196 = getelementptr inbounds %struct.cl_readahead, %struct.cl_readahead* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, 1
  %199 = getelementptr inbounds %struct.cl_extent, %struct.cl_extent* %41, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %198, %200
  br i1 %201, label %202, label %224

202:                                              ; preds = %194, %187
  %203 = load %struct.cl_readahead*, %struct.cl_readahead** %39, align 8
  %204 = getelementptr inbounds %struct.cl_readahead, %struct.cl_readahead* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @PAGE_SIZE_64, align 4
  %207 = mul nsw i32 %205, %206
  %208 = load i32, i32* @PAGE_SIZE_64, align 4
  %209 = add nsw i32 %207, %208
  store i32 %209, i32* %26, align 4
  %210 = load i32, i32* %26, align 4
  %211 = load %struct.uio*, %struct.uio** %9, align 8
  %212 = getelementptr inbounds %struct.uio, %struct.uio* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %202
  store i32 0, i32* %26, align 4
  br label %223

216:                                              ; preds = %202
  %217 = load i32, i32* %26, align 4
  %218 = load i32, i32* %27, align 4
  %219 = icmp sgt i32 %217, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %216
  %221 = load i32, i32* %27, align 4
  store i32 %221, i32* %26, align 4
  br label %222

222:                                              ; preds = %220, %216
  br label %223

223:                                              ; preds = %222, %215
  br label %225

224:                                              ; preds = %194, %182, %179
  store i32 0, i32* %26, align 4
  br label %225

225:                                              ; preds = %224, %223
  br label %226

226:                                              ; preds = %943, %225
  %227 = load i32, i32* %10, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %238

229:                                              ; preds = %226
  %230 = load %struct.uio*, %struct.uio** %9, align 8
  %231 = getelementptr inbounds %struct.uio, %struct.uio* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %11, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %229
  %236 = load i32, i32* %30, align 4
  %237 = icmp eq i32 %236, 0
  br label %238

238:                                              ; preds = %235, %229, %226
  %239 = phi i1 [ false, %229 ], [ false, %226 ], [ %237, %235 ]
  br i1 %239, label %240, label %944

240:                                              ; preds = %238
  %241 = load i32, i32* %11, align 4
  %242 = load %struct.uio*, %struct.uio** %9, align 8
  %243 = getelementptr inbounds %struct.uio, %struct.uio* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = sub nsw i32 %241, %244
  store i32 %245, i32* %25, align 4
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* %25, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %240
  %250 = load i32, i32* %10, align 4
  store i32 %250, i32* %33, align 4
  br label %253

251:                                              ; preds = %240
  %252 = load i32, i32* %25, align 4
  store i32 %252, i32* %33, align 4
  br label %253

253:                                              ; preds = %251, %249
  %254 = load i32, i32* %12, align 4
  %255 = load i32, i32* @IO_NOCACHE, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %396, label %258

258:                                              ; preds = %253
  br label %259

259:                                              ; preds = %363, %258
  %260 = load i32, i32* %33, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %364

262:                                              ; preds = %259
  %263 = load i32, i32* %27, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %311

265:                                              ; preds = %262
  %266 = load i32, i32* %26, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %311

268:                                              ; preds = %265
  %269 = load i32, i32* %27, align 4
  %270 = load i32, i32* %26, align 4
  %271 = sub nsw i32 %269, %270
  store i32 %271, i32* %31, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %311

273:                                              ; preds = %268
  %274 = load i32, i32* %26, align 4
  %275 = load %struct.uio*, %struct.uio** %9, align 8
  %276 = getelementptr inbounds %struct.uio, %struct.uio* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = sub nsw i32 %274, %277
  %279 = load i32, i32* %34, align 4
  %280 = icmp sle i32 %278, %279
  br i1 %280, label %281, label %310

281:                                              ; preds = %273
  %282 = load i32, i32* %38, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %310

284:                                              ; preds = %281
  %285 = load i32, i32* %31, align 4
  %286 = load i32, i32* %34, align 4
  %287 = icmp sgt i32 %285, %286
  br i1 %287, label %288, label %290

288:                                              ; preds = %284
  %289 = load i32, i32* %34, align 4
  store i32 %289, i32* %31, align 4
  br label %290

290:                                              ; preds = %288, %284
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %292 = load i32, i32* %26, align 4
  %293 = load i32, i32* %31, align 4
  %294 = load i32, i32* %11, align 4
  %295 = load i32 (i32, i8*)*, i32 (i32, i8*)** %13, align 8
  %296 = load i8*, i8** %14, align 8
  %297 = load i32, i32* %42, align 4
  %298 = call i32 @cluster_read_prefetch(%struct.TYPE_12__* %291, i32 %292, i32 %293, i32 %294, i32 (i32, i8*)* %295, i8* %296, i32 %297)
  store i32 %298, i32* %31, align 4
  %299 = load i32, i32* %31, align 4
  %300 = load i32, i32* @PAGE_SIZE, align 4
  %301 = mul nsw i32 %299, %300
  %302 = load i32, i32* %26, align 4
  %303 = add nsw i32 %302, %301
  store i32 %303, i32* %26, align 4
  %304 = load i32, i32* %26, align 4
  %305 = load i32, i32* %27, align 4
  %306 = icmp sgt i32 %304, %305
  br i1 %306, label %307, label %309

307:                                              ; preds = %290
  %308 = load i32, i32* %27, align 4
  store i32 %308, i32* %26, align 4
  br label %309

309:                                              ; preds = %307, %290
  br label %310

310:                                              ; preds = %309, %281, %273
  br label %311

311:                                              ; preds = %310, %268, %265, %262
  %312 = load i32, i32* %26, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %322

314:                                              ; preds = %311
  %315 = load i32, i32* %33, align 4
  %316 = load i32, i32* %35, align 4
  %317 = sdiv i32 %316, 4
  %318 = icmp sgt i32 %315, %317
  br i1 %318, label %319, label %322

319:                                              ; preds = %314
  %320 = load i32, i32* %35, align 4
  %321 = sdiv i32 %320, 4
  store i32 %321, i32* %46, align 4
  br label %324

322:                                              ; preds = %314, %311
  %323 = load i32, i32* %33, align 4
  store i32 %323, i32* %46, align 4
  br label %324

324:                                              ; preds = %322, %319
  %325 = load i32, i32* %46, align 4
  store i32 %325, i32* %47, align 4
  %326 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %327 = load %struct.uio*, %struct.uio** %9, align 8
  %328 = load i32, i32* %43, align 4
  %329 = call i32 @cluster_copy_ubc_data_internal(%struct.TYPE_12__* %326, %struct.uio* %327, i32* %46, i32 0, i32 %328)
  store i32 %329, i32* %30, align 4
  %330 = load i32, i32* %47, align 4
  %331 = load i32, i32* %46, align 4
  %332 = sub nsw i32 %330, %331
  store i32 %332, i32* %32, align 4
  %333 = load i32, i32* %32, align 4
  %334 = load i32, i32* %33, align 4
  %335 = sub nsw i32 %334, %333
  store i32 %335, i32* %33, align 4
  %336 = load i32, i32* %32, align 4
  %337 = load i32, i32* %10, align 4
  %338 = sub nsw i32 %337, %336
  store i32 %338, i32* %10, align 4
  %339 = load i32, i32* %30, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %344, label %341

341:                                              ; preds = %324
  %342 = load i32, i32* %46, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %341, %324
  br label %364

345:                                              ; preds = %341
  %346 = load i32, i32* %37, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %363

348:                                              ; preds = %345
  %349 = load i32, i32* %33, align 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %355, label %351

351:                                              ; preds = %348
  %352 = load i32, i32* %26, align 4
  %353 = load i32, i32* %27, align 4
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %355, label %363

355:                                              ; preds = %351, %348
  %356 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %357 = load i32, i32* %11, align 4
  %358 = load %struct.cl_readahead*, %struct.cl_readahead** %39, align 8
  %359 = load i32 (i32, i8*)*, i32 (i32, i8*)** %13, align 8
  %360 = load i8*, i8** %14, align 8
  %361 = load i32, i32* %42, align 4
  %362 = call i32 @cluster_read_ahead(%struct.TYPE_12__* %356, %struct.cl_extent* %41, i32 %357, %struct.cl_readahead* %358, i32 (i32, i8*)* %359, i8* %360, i32 %361)
  br label %363

363:                                              ; preds = %355, %351, %345
  br label %259

364:                                              ; preds = %344, %259
  %365 = load i32, i32* %30, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %364
  br label %944

368:                                              ; preds = %364
  %369 = load i32, i32* %33, align 4
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %390

371:                                              ; preds = %368
  %372 = load %struct.cl_readahead*, %struct.cl_readahead** %39, align 8
  %373 = icmp ne %struct.cl_readahead* %372, null
  br i1 %373, label %374, label %389

374:                                              ; preds = %371
  %375 = getelementptr inbounds %struct.cl_extent, %struct.cl_extent* %41, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.cl_readahead*, %struct.cl_readahead** %39, align 8
  %378 = getelementptr inbounds %struct.cl_readahead, %struct.cl_readahead* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = icmp slt i32 %376, %379
  br i1 %380, label %381, label %384

381:                                              ; preds = %374
  %382 = load %struct.cl_readahead*, %struct.cl_readahead** %39, align 8
  %383 = getelementptr inbounds %struct.cl_readahead, %struct.cl_readahead* %382, i32 0, i32 1
  store i32 0, i32* %383, align 4
  br label %384

384:                                              ; preds = %381, %374
  %385 = getelementptr inbounds %struct.cl_extent, %struct.cl_extent* %41, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.cl_readahead*, %struct.cl_readahead** %39, align 8
  %388 = getelementptr inbounds %struct.cl_readahead, %struct.cl_readahead* %387, i32 0, i32 0
  store i32 %386, i32* %388, align 8
  br label %389

389:                                              ; preds = %384, %371
  br label %944

390:                                              ; preds = %368
  %391 = load i32, i32* %11, align 4
  %392 = load %struct.uio*, %struct.uio** %9, align 8
  %393 = getelementptr inbounds %struct.uio, %struct.uio* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = sub nsw i32 %391, %394
  store i32 %395, i32* %25, align 4
  br label %396

396:                                              ; preds = %390, %253
  %397 = getelementptr inbounds %struct.clios, %struct.clios* %40, i32 0, i32 4
  store i64 0, i64* %397, align 8
  %398 = getelementptr inbounds %struct.clios, %struct.clios* %40, i32 0, i32 3
  store i64 0, i64* %398, align 8
  %399 = getelementptr inbounds %struct.clios, %struct.clios* %40, i32 0, i32 0
  store i32 0, i32* %399, align 8
  %400 = getelementptr inbounds %struct.clios, %struct.clios* %40, i32 0, i32 2
  store i64 0, i64* %400, align 8
  %401 = load i32, i32* %12, align 4
  %402 = load i32, i32* @IO_RETURN_ON_THROTTLE, align 4
  %403 = and i32 %401, %402
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %425

405:                                              ; preds = %396
  %406 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %407 = call i64 @cluster_is_throttled(%struct.TYPE_12__* %406)
  %408 = load i64, i64* @THROTTLE_NOW, align 8
  %409 = icmp eq i64 %407, %408
  br i1 %409, label %410, label %424

410:                                              ; preds = %405
  %411 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %412 = load %struct.uio*, %struct.uio** %9, align 8
  %413 = getelementptr inbounds %struct.uio, %struct.uio* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = call i32 @cluster_io_present_in_BC(%struct.TYPE_12__* %411, i32 %414)
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %423, label %417

417:                                              ; preds = %410
  %418 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %419 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = call i32 @throttle_info_update_by_mount(i32 %420)
  %422 = load i32, i32* @EAGAIN, align 4
  store i32 %422, i32* %30, align 4
  br label %944

423:                                              ; preds = %410
  br label %424

424:                                              ; preds = %423, %405
  br label %425

425:                                              ; preds = %424, %396
  %426 = load %struct.uio*, %struct.uio** %9, align 8
  %427 = getelementptr inbounds %struct.uio, %struct.uio* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 4
  %429 = load i32, i32* @PAGE_MASK_64, align 4
  %430 = and i32 %428, %429
  store i32 %430, i32* %20, align 4
  %431 = load %struct.uio*, %struct.uio** %9, align 8
  %432 = getelementptr inbounds %struct.uio, %struct.uio* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 4
  %434 = load i32, i32* %20, align 4
  %435 = sub nsw i32 %433, %434
  store i32 %435, i32* %19, align 4
  %436 = load i32, i32* %33, align 4
  %437 = load i32, i32* %34, align 4
  %438 = icmp sgt i32 %436, %437
  br i1 %438, label %439, label %441

439:                                              ; preds = %425
  %440 = load i32, i32* %34, align 4
  store i32 %440, i32* %33, align 4
  br label %441

441:                                              ; preds = %439, %425
  %442 = load i32, i32* %20, align 4
  %443 = load i32, i32* %33, align 4
  %444 = add nsw i32 %442, %443
  %445 = load i32, i32* @PAGE_SIZE, align 4
  %446 = sub nsw i32 %445, 1
  %447 = add nsw i32 %444, %446
  %448 = load i32, i32* @PAGE_MASK, align 4
  %449 = xor i32 %448, -1
  %450 = and i32 %447, %449
  store i32 %450, i32* %18, align 4
  %451 = load i32, i32* %12, align 4
  %452 = load i32, i32* @IO_NOCACHE, align 4
  %453 = and i32 %451, %452
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %462

455:                                              ; preds = %441
  %456 = load i32, i32* %18, align 4
  %457 = load i32, i32* %35, align 4
  %458 = icmp sgt i32 %456, %457
  br i1 %458, label %459, label %461

459:                                              ; preds = %455
  %460 = load i32, i32* %35, align 4
  store i32 %460, i32* %18, align 4
  br label %461

461:                                              ; preds = %459, %455
  br label %480

462:                                              ; preds = %441
  %463 = load i32, i32* %18, align 4
  %464 = load i32, i32* %35, align 4
  %465 = sdiv i32 %464, 4
  %466 = icmp sgt i32 %463, %465
  br i1 %466, label %467, label %479

467:                                              ; preds = %462
  %468 = load i32, i32* %35, align 4
  %469 = sdiv i32 %468, 4
  store i32 %469, i32* %18, align 4
  %470 = load i32, i32* @PAGE_MASK, align 4
  %471 = xor i32 %470, -1
  %472 = load i32, i32* %18, align 4
  %473 = and i32 %472, %471
  store i32 %473, i32* %18, align 4
  %474 = load i32, i32* %18, align 4
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %478

476:                                              ; preds = %467
  %477 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %477, i32* %18, align 4
  br label %478

478:                                              ; preds = %476, %467
  br label %479

479:                                              ; preds = %478, %462
  br label %480

480:                                              ; preds = %479, %461
  %481 = load i32, i32* %18, align 4
  %482 = load i32, i32* @PAGE_SIZE, align 4
  %483 = sdiv i32 %481, %482
  store i32 %483, i32* %24, align 4
  %484 = load i32, i32* @DBG_FSRW, align 4
  %485 = call i32 @FSDBG_CODE(i32 %484, i32 33)
  %486 = load i32, i32* @DBG_FUNC_START, align 4
  %487 = or i32 %485, %486
  %488 = load i32, i32* %16, align 4
  %489 = load i32, i32* %19, align 4
  %490 = load i32, i32* %18, align 4
  %491 = load i32, i32* %20, align 4
  %492 = call i32 @KERNEL_DEBUG(i32 %487, i32 %488, i32 %489, i32 %490, i32 %491, i32 0)
  %493 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %494 = load i32, i32* %19, align 4
  %495 = load i32, i32* %18, align 4
  %496 = load i32, i32* @UPL_FILE_IO, align 4
  %497 = load i32, i32* @UPL_SET_LITE, align 4
  %498 = or i32 %496, %497
  %499 = load i32, i32* @VM_KERN_MEMORY_FILE, align 4
  %500 = call i64 @ubc_create_upl_kernel(%struct.TYPE_12__* %493, i32 %494, i32 %495, i32* %16, i32** %15, i32 %498, i32 %499)
  store i64 %500, i64* %28, align 8
  %501 = load i64, i64* %28, align 8
  %502 = load i64, i64* @KERN_SUCCESS, align 8
  %503 = icmp ne i64 %501, %502
  br i1 %503, label %504, label %506

504:                                              ; preds = %480
  %505 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %506

506:                                              ; preds = %504, %480
  %507 = load i32, i32* @DBG_FSRW, align 4
  %508 = call i32 @FSDBG_CODE(i32 %507, i32 33)
  %509 = load i32, i32* @DBG_FUNC_END, align 4
  %510 = or i32 %508, %509
  %511 = load i32, i32* %16, align 4
  %512 = load i32, i32* %19, align 4
  %513 = load i32, i32* %18, align 4
  %514 = load i32, i32* %20, align 4
  %515 = call i32 @KERNEL_DEBUG(i32 %510, i32 %511, i32 %512, i32 %513, i32 %514, i32 0)
  store i32 0, i32* %21, align 4
  br label %516

516:                                              ; preds = %527, %506
  %517 = load i32, i32* %21, align 4
  %518 = load i32, i32* %24, align 4
  %519 = icmp slt i32 %517, %518
  br i1 %519, label %520, label %530

520:                                              ; preds = %516
  %521 = load i32*, i32** %15, align 8
  %522 = load i32, i32* %21, align 4
  %523 = call i64 @upl_valid_page(i32* %521, i32 %522)
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %526, label %525

525:                                              ; preds = %520
  br label %530

526:                                              ; preds = %520
  br label %527

527:                                              ; preds = %526
  %528 = load i32, i32* %21, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %21, align 4
  br label %516

530:                                              ; preds = %525, %516
  %531 = load i32, i32* %21, align 4
  store i32 %531, i32* %22, align 4
  br label %532

532:                                              ; preds = %543, %530
  %533 = load i32, i32* %22, align 4
  %534 = load i32, i32* %24, align 4
  %535 = icmp slt i32 %533, %534
  br i1 %535, label %536, label %546

536:                                              ; preds = %532
  %537 = load i32*, i32** %15, align 8
  %538 = load i32, i32* %22, align 4
  %539 = call i64 @upl_valid_page(i32* %537, i32 %538)
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %541, label %542

541:                                              ; preds = %536
  br label %546

542:                                              ; preds = %536
  br label %543

543:                                              ; preds = %542
  %544 = load i32, i32* %22, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %22, align 4
  br label %532

546:                                              ; preds = %541, %532
  %547 = load i32, i32* %21, align 4
  %548 = load i32, i32* %22, align 4
  %549 = icmp slt i32 %547, %548
  br i1 %549, label %550, label %612

550:                                              ; preds = %546
  %551 = load i64, i64* %45, align 8
  %552 = load i64, i64* @FALSE, align 8
  %553 = icmp eq i64 %551, %552
  br i1 %553, label %554, label %560

554:                                              ; preds = %550
  %555 = getelementptr inbounds %struct.clios, %struct.clios* %40, i32 0, i32 1
  %556 = load i32, i32* @cl_mtx_grp, align 4
  %557 = load i32, i32* @cl_mtx_attr, align 4
  %558 = call i32 @lck_mtx_init(i32* %555, i32 %556, i32 %557)
  %559 = load i64, i64* @TRUE, align 8
  store i64 %559, i64* %45, align 8
  br label %560

560:                                              ; preds = %554, %550
  %561 = load i32, i32* %21, align 4
  %562 = load i32, i32* @PAGE_SIZE, align 4
  %563 = mul nsw i32 %561, %562
  store i32 %563, i32* %17, align 4
  %564 = load i32, i32* %22, align 4
  %565 = load i32, i32* %21, align 4
  %566 = sub nsw i32 %564, %565
  %567 = load i32, i32* @PAGE_SIZE, align 4
  %568 = mul nsw i32 %566, %567
  store i32 %568, i32* %33, align 4
  %569 = load i32, i32* %19, align 4
  %570 = load i32, i32* %17, align 4
  %571 = add nsw i32 %569, %570
  %572 = load i32, i32* %33, align 4
  %573 = add nsw i32 %571, %572
  %574 = load i32, i32* %11, align 4
  %575 = icmp sgt i32 %573, %574
  br i1 %575, label %576, label %582

576:                                              ; preds = %560
  %577 = load i32, i32* %11, align 4
  %578 = load i32, i32* %19, align 4
  %579 = load i32, i32* %17, align 4
  %580 = add nsw i32 %578, %579
  %581 = sub nsw i32 %577, %580
  store i32 %581, i32* %33, align 4
  br label %582

582:                                              ; preds = %576, %560
  %583 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %584 = load i32, i32* %16, align 4
  %585 = load i32, i32* %17, align 4
  %586 = load i32, i32* %19, align 4
  %587 = load i32, i32* %17, align 4
  %588 = add nsw i32 %586, %587
  %589 = load i32, i32* %33, align 4
  %590 = load i32, i32* @CL_READ, align 4
  %591 = load i32, i32* @CL_ASYNC, align 4
  %592 = or i32 %590, %591
  %593 = load i32, i32* %42, align 4
  %594 = or i32 %592, %593
  %595 = load i32 (i32, i8*)*, i32 (i32, i8*)** %13, align 8
  %596 = load i8*, i8** %14, align 8
  %597 = call i32 @cluster_io(%struct.TYPE_12__* %583, i32 %584, i32 %585, i32 %588, i32 %589, i32 %594, i32 0, %struct.clios* %40, i32 (i32, i8*)* %595, i8* %596)
  store i32 %597, i32* %29, align 4
  %598 = load %struct.cl_readahead*, %struct.cl_readahead** %39, align 8
  %599 = icmp ne %struct.cl_readahead* %598, null
  br i1 %599, label %600, label %611

600:                                              ; preds = %582
  %601 = getelementptr inbounds %struct.cl_extent, %struct.cl_extent* %41, i32 0, i32 1
  %602 = load i32, i32* %601, align 4
  %603 = load %struct.cl_readahead*, %struct.cl_readahead** %39, align 8
  %604 = getelementptr inbounds %struct.cl_readahead, %struct.cl_readahead* %603, i32 0, i32 1
  %605 = load i32, i32* %604, align 4
  %606 = icmp slt i32 %602, %605
  br i1 %606, label %607, label %610

607:                                              ; preds = %600
  %608 = load %struct.cl_readahead*, %struct.cl_readahead** %39, align 8
  %609 = getelementptr inbounds %struct.cl_readahead, %struct.cl_readahead* %608, i32 0, i32 1
  store i32 0, i32* %609, align 4
  br label %610

610:                                              ; preds = %607, %600
  br label %611

611:                                              ; preds = %610, %582
  br label %612

612:                                              ; preds = %611, %546
  %613 = load i32, i32* %29, align 4
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %615, label %787

615:                                              ; preds = %612
  %616 = load i32, i32* %22, align 4
  store i32 %616, i32* %23, align 4
  br label %617

617:                                              ; preds = %628, %615
  %618 = load i32, i32* %23, align 4
  %619 = load i32, i32* %24, align 4
  %620 = icmp slt i32 %618, %619
  br i1 %620, label %621, label %631

621:                                              ; preds = %617
  %622 = load i32*, i32** %15, align 8
  %623 = load i32, i32* %23, align 4
  %624 = call i64 @upl_valid_page(i32* %622, i32 %623)
  %625 = icmp ne i64 %624, 0
  br i1 %625, label %627, label %626

626:                                              ; preds = %621
  br label %631

627:                                              ; preds = %621
  br label %628

628:                                              ; preds = %627
  %629 = load i32, i32* %23, align 4
  %630 = add nsw i32 %629, 1
  store i32 %630, i32* %23, align 4
  br label %617

631:                                              ; preds = %626, %617
  %632 = load i32, i32* %23, align 4
  %633 = load i32, i32* %24, align 4
  %634 = icmp slt i32 %632, %633
  br i1 %634, label %635, label %647

635:                                              ; preds = %631
  %636 = load i32, i32* %16, align 4
  %637 = load i32, i32* %23, align 4
  %638 = load i32, i32* @PAGE_SIZE, align 4
  %639 = mul nsw i32 %637, %638
  %640 = load i32, i32* %24, align 4
  %641 = load i32, i32* %23, align 4
  %642 = sub nsw i32 %640, %641
  %643 = load i32, i32* @PAGE_SIZE, align 4
  %644 = mul nsw i32 %642, %643
  %645 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %646 = call i32 @ubc_upl_abort_range(i32 %636, i32 %639, i32 %644, i32 %645)
  br label %647

647:                                              ; preds = %635, %631
  %648 = load i32, i32* %23, align 4
  %649 = load i32, i32* @PAGE_SIZE, align 4
  %650 = mul nsw i32 %648, %649
  %651 = load i32, i32* %20, align 4
  %652 = sub nsw i32 %650, %651
  store i32 %652, i32* %48, align 4
  %653 = load i32, i32* %48, align 4
  %654 = load i32, i32* %25, align 4
  %655 = icmp sgt i32 %653, %654
  br i1 %655, label %656, label %658

656:                                              ; preds = %647
  %657 = load i32, i32* %25, align 4
  store i32 %657, i32* %48, align 4
  br label %658

658:                                              ; preds = %656, %647
  %659 = load i32, i32* %48, align 4
  %660 = load i32, i32* %10, align 4
  %661 = icmp sgt i32 %659, %660
  br i1 %661, label %662, label %664

662:                                              ; preds = %658
  %663 = load i32, i32* %10, align 4
  store i32 %663, i32* %48, align 4
  br label %664

664:                                              ; preds = %662, %658
  %665 = load %struct.uio*, %struct.uio** %9, align 8
  %666 = getelementptr inbounds %struct.uio, %struct.uio* %665, i32 0, i32 0
  %667 = load i32, i32* %666, align 4
  %668 = load i32, i32* %48, align 4
  %669 = add nsw i32 %667, %668
  %670 = load i32, i32* %26, align 4
  %671 = icmp sgt i32 %669, %670
  br i1 %671, label %672, label %678

672:                                              ; preds = %664
  %673 = load %struct.uio*, %struct.uio** %9, align 8
  %674 = getelementptr inbounds %struct.uio, %struct.uio* %673, i32 0, i32 0
  %675 = load i32, i32* %674, align 4
  %676 = load i32, i32* %48, align 4
  %677 = add nsw i32 %675, %676
  store i32 %677, i32* %26, align 4
  br label %678

678:                                              ; preds = %672, %664
  %679 = load i32, i32* %27, align 4
  %680 = load i32, i32* %26, align 4
  %681 = sub nsw i32 %679, %680
  store i32 %681, i32* %31, align 4
  %682 = icmp ne i32 %681, 0
  br i1 %682, label %683, label %723

683:                                              ; preds = %678
  %684 = load i32, i32* %38, align 4
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %686, label %723

686:                                              ; preds = %683
  %687 = load i32, i32* %26, align 4
  %688 = load %struct.uio*, %struct.uio** %9, align 8
  %689 = getelementptr inbounds %struct.uio, %struct.uio* %688, i32 0, i32 0
  %690 = load i32, i32* %689, align 4
  %691 = load i32, i32* %48, align 4
  %692 = add nsw i32 %690, %691
  %693 = sub nsw i32 %687, %692
  %694 = load i32, i32* %18, align 4
  %695 = icmp sle i32 %693, %694
  br i1 %695, label %696, label %722

696:                                              ; preds = %686
  %697 = load i32, i32* %31, align 4
  %698 = load i32, i32* %34, align 4
  %699 = icmp sgt i32 %697, %698
  br i1 %699, label %700, label %702

700:                                              ; preds = %696
  %701 = load i32, i32* %34, align 4
  store i32 %701, i32* %31, align 4
  br label %702

702:                                              ; preds = %700, %696
  %703 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %704 = load i32, i32* %26, align 4
  %705 = load i32, i32* %31, align 4
  %706 = load i32, i32* %11, align 4
  %707 = load i32 (i32, i8*)*, i32 (i32, i8*)** %13, align 8
  %708 = load i8*, i8** %14, align 8
  %709 = load i32, i32* %42, align 4
  %710 = call i32 @cluster_read_prefetch(%struct.TYPE_12__* %703, i32 %704, i32 %705, i32 %706, i32 (i32, i8*)* %707, i8* %708, i32 %709)
  store i32 %710, i32* %31, align 4
  %711 = load i32, i32* %31, align 4
  %712 = load i32, i32* @PAGE_SIZE, align 4
  %713 = mul nsw i32 %711, %712
  %714 = load i32, i32* %26, align 4
  %715 = add nsw i32 %714, %713
  store i32 %715, i32* %26, align 4
  %716 = load i32, i32* %26, align 4
  %717 = load i32, i32* %27, align 4
  %718 = icmp sgt i32 %716, %717
  br i1 %718, label %719, label %721

719:                                              ; preds = %702
  %720 = load i32, i32* %27, align 4
  store i32 %720, i32* %26, align 4
  br label %721

721:                                              ; preds = %719, %702
  br label %722

722:                                              ; preds = %721, %686
  br label %762

723:                                              ; preds = %683, %678
  %724 = load %struct.uio*, %struct.uio** %9, align 8
  %725 = getelementptr inbounds %struct.uio, %struct.uio* %724, i32 0, i32 0
  %726 = load i32, i32* %725, align 4
  %727 = load i32, i32* %48, align 4
  %728 = add nsw i32 %726, %727
  %729 = load i32, i32* %27, align 4
  %730 = icmp eq i32 %728, %729
  br i1 %730, label %731, label %761

731:                                              ; preds = %723
  %732 = load i32, i32* %37, align 4
  %733 = icmp ne i32 %732, 0
  br i1 %733, label %734, label %742

734:                                              ; preds = %731
  %735 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %736 = load i32, i32* %11, align 4
  %737 = load %struct.cl_readahead*, %struct.cl_readahead** %39, align 8
  %738 = load i32 (i32, i8*)*, i32 (i32, i8*)** %13, align 8
  %739 = load i8*, i8** %14, align 8
  %740 = load i32, i32* %42, align 4
  %741 = call i32 @cluster_read_ahead(%struct.TYPE_12__* %735, %struct.cl_extent* %41, i32 %736, %struct.cl_readahead* %737, i32 (i32, i8*)* %738, i8* %739, i32 %740)
  br label %742

742:                                              ; preds = %734, %731
  %743 = load %struct.cl_readahead*, %struct.cl_readahead** %39, align 8
  %744 = icmp ne %struct.cl_readahead* %743, null
  br i1 %744, label %745, label %760

745:                                              ; preds = %742
  %746 = getelementptr inbounds %struct.cl_extent, %struct.cl_extent* %41, i32 0, i32 1
  %747 = load i32, i32* %746, align 4
  %748 = load %struct.cl_readahead*, %struct.cl_readahead** %39, align 8
  %749 = getelementptr inbounds %struct.cl_readahead, %struct.cl_readahead* %748, i32 0, i32 0
  %750 = load i32, i32* %749, align 8
  %751 = icmp slt i32 %747, %750
  br i1 %751, label %752, label %755

752:                                              ; preds = %745
  %753 = load %struct.cl_readahead*, %struct.cl_readahead** %39, align 8
  %754 = getelementptr inbounds %struct.cl_readahead, %struct.cl_readahead* %753, i32 0, i32 1
  store i32 0, i32* %754, align 4
  br label %755

755:                                              ; preds = %752, %745
  %756 = getelementptr inbounds %struct.cl_extent, %struct.cl_extent* %41, i32 0, i32 1
  %757 = load i32, i32* %756, align 4
  %758 = load %struct.cl_readahead*, %struct.cl_readahead** %39, align 8
  %759 = getelementptr inbounds %struct.cl_readahead, %struct.cl_readahead* %758, i32 0, i32 0
  store i32 %757, i32* %759, align 8
  br label %760

760:                                              ; preds = %755, %742
  br label %761

761:                                              ; preds = %760, %723
  br label %762

762:                                              ; preds = %761, %722
  %763 = load i64, i64* %45, align 8
  %764 = load i64, i64* @TRUE, align 8
  %765 = icmp eq i64 %763, %764
  br i1 %765, label %766, label %768

766:                                              ; preds = %762
  %767 = call i32 @cluster_iostate_wait(%struct.clios* %40, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %768

768:                                              ; preds = %766, %762
  %769 = getelementptr inbounds %struct.clios, %struct.clios* %40, i32 0, i32 0
  %770 = load i32, i32* %769, align 8
  %771 = icmp ne i32 %770, 0
  br i1 %771, label %772, label %775

772:                                              ; preds = %768
  %773 = getelementptr inbounds %struct.clios, %struct.clios* %40, i32 0, i32 0
  %774 = load i32, i32* %773, align 8
  store i32 %774, i32* %29, align 4
  br label %786

775:                                              ; preds = %768
  %776 = load i32, i32* %48, align 4
  store i32 %776, i32* %49, align 4
  %777 = load %struct.uio*, %struct.uio** %9, align 8
  %778 = load i32, i32* %16, align 4
  %779 = load i32, i32* %20, align 4
  %780 = call i32 @cluster_copy_upl_data(%struct.uio* %777, i32 %778, i32 %779, i32* %49)
  store i32 %780, i32* %30, align 4
  %781 = load i32, i32* %48, align 4
  %782 = load i32, i32* %49, align 4
  %783 = sub nsw i32 %781, %782
  %784 = load i32, i32* %10, align 4
  %785 = sub nsw i32 %784, %783
  store i32 %785, i32* %10, align 4
  br label %786

786:                                              ; preds = %775, %772
  br label %794

787:                                              ; preds = %612
  %788 = load i64, i64* %45, align 8
  %789 = load i64, i64* @TRUE, align 8
  %790 = icmp eq i64 %788, %789
  br i1 %790, label %791, label %793

791:                                              ; preds = %787
  %792 = call i32 @cluster_iostate_wait(%struct.clios* %40, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %793

793:                                              ; preds = %791, %787
  br label %794

794:                                              ; preds = %793, %786
  %795 = load i32, i32* %21, align 4
  %796 = load i32, i32* %22, align 4
  %797 = icmp slt i32 %795, %796
  br i1 %797, label %798, label %866

798:                                              ; preds = %794
  %799 = load i32, i32* %22, align 4
  %800 = load i32, i32* %21, align 4
  %801 = sub nsw i32 %799, %800
  %802 = load i32, i32* @PAGE_SIZE, align 4
  %803 = mul nsw i32 %801, %802
  store i32 %803, i32* %33, align 4
  %804 = load i32, i32* @DBG_FSRW, align 4
  %805 = call i32 @FSDBG_CODE(i32 %804, i32 35)
  %806 = load i32, i32* @DBG_FUNC_START, align 4
  %807 = or i32 %805, %806
  %808 = load i32, i32* %16, align 4
  %809 = load i32, i32* %21, align 4
  %810 = load i32, i32* @PAGE_SIZE, align 4
  %811 = mul nsw i32 %809, %810
  %812 = load i32, i32* %33, align 4
  %813 = load i32, i32* %29, align 4
  %814 = call i32 @KERNEL_DEBUG(i32 %807, i32 %808, i32 %811, i32 %812, i32 %813, i32 0)
  %815 = load i32, i32* %29, align 4
  %816 = icmp ne i32 %815, 0
  br i1 %816, label %822, label %817

817:                                              ; preds = %798
  %818 = load i32, i32* %12, align 4
  %819 = load i32, i32* @IO_NOCACHE, align 4
  %820 = and i32 %818, %819
  %821 = icmp ne i32 %820, 0
  br i1 %821, label %822, label %832

822:                                              ; preds = %817, %798
  %823 = load i32, i32* %16, align 4
  %824 = load i32, i32* %21, align 4
  %825 = load i32, i32* @PAGE_SIZE, align 4
  %826 = mul nsw i32 %824, %825
  %827 = load i32, i32* %33, align 4
  %828 = load i32, i32* @UPL_ABORT_DUMP_PAGES, align 4
  %829 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %830 = or i32 %828, %829
  %831 = call i32 @ubc_upl_abort_range(i32 %823, i32 %826, i32 %827, i32 %830)
  br label %854

832:                                              ; preds = %817
  %833 = load i32, i32* @UPL_COMMIT_CLEAR_DIRTY, align 4
  %834 = load i32, i32* @UPL_COMMIT_FREE_ON_EMPTY, align 4
  %835 = or i32 %833, %834
  store i32 %835, i32* %50, align 4
  %836 = load i32, i32* %43, align 4
  %837 = icmp ne i32 %836, 0
  br i1 %837, label %838, label %842

838:                                              ; preds = %832
  %839 = load i32, i32* @UPL_COMMIT_INACTIVATE, align 4
  %840 = load i32, i32* %50, align 4
  %841 = or i32 %840, %839
  store i32 %841, i32* %50, align 4
  br label %846

842:                                              ; preds = %832
  %843 = load i32, i32* @UPL_COMMIT_SPECULATE, align 4
  %844 = load i32, i32* %50, align 4
  %845 = or i32 %844, %843
  store i32 %845, i32* %50, align 4
  br label %846

846:                                              ; preds = %842, %838
  %847 = load i32, i32* %16, align 4
  %848 = load i32, i32* %21, align 4
  %849 = load i32, i32* @PAGE_SIZE, align 4
  %850 = mul nsw i32 %848, %849
  %851 = load i32, i32* %33, align 4
  %852 = load i32, i32* %50, align 4
  %853 = call i32 @ubc_upl_commit_range(i32 %847, i32 %850, i32 %851, i32 %852)
  br label %854

854:                                              ; preds = %846, %822
  %855 = load i32, i32* @DBG_FSRW, align 4
  %856 = call i32 @FSDBG_CODE(i32 %855, i32 35)
  %857 = load i32, i32* @DBG_FUNC_END, align 4
  %858 = or i32 %856, %857
  %859 = load i32, i32* %16, align 4
  %860 = load i32, i32* %21, align 4
  %861 = load i32, i32* @PAGE_SIZE, align 4
  %862 = mul nsw i32 %860, %861
  %863 = load i32, i32* %33, align 4
  %864 = load i32, i32* %29, align 4
  %865 = call i32 @KERNEL_DEBUG(i32 %858, i32 %859, i32 %862, i32 %863, i32 %864, i32 0)
  br label %866

866:                                              ; preds = %854, %794
  %867 = load i32, i32* %22, align 4
  %868 = load i32, i32* %21, align 4
  %869 = sub nsw i32 %867, %868
  %870 = load i32, i32* %24, align 4
  %871 = icmp slt i32 %869, %870
  br i1 %871, label %872, label %908

872:                                              ; preds = %866
  %873 = load i32, i32* %29, align 4
  %874 = icmp ne i32 %873, 0
  br i1 %874, label %875, label %880

875:                                              ; preds = %872
  %876 = load i32, i32* %16, align 4
  %877 = load i32, i32* %18, align 4
  %878 = load i32, i32* @UPL_ABORT_FREE_ON_EMPTY, align 4
  %879 = call i32 @ubc_upl_abort_range(i32 %876, i32 0, i32 %877, i32 %878)
  br label %907

880:                                              ; preds = %872
  %881 = load i32, i32* @DBG_FSRW, align 4
  %882 = call i32 @FSDBG_CODE(i32 %881, i32 35)
  %883 = load i32, i32* @DBG_FUNC_START, align 4
  %884 = or i32 %882, %883
  %885 = load i32, i32* %16, align 4
  %886 = load i32, i32* %24, align 4
  %887 = load i32, i32* %22, align 4
  %888 = load i32, i32* %21, align 4
  %889 = sub nsw i32 %887, %888
  %890 = sub nsw i32 %886, %889
  %891 = call i32 @KERNEL_DEBUG(i32 %884, i32 %885, i32 -1, i32 %890, i32 0, i32 0)
  %892 = load i32, i32* %16, align 4
  %893 = load i32, i32* %21, align 4
  %894 = load i32, i32* %43, align 4
  %895 = call i32 @cluster_read_upl_release(i32 %892, i32 0, i32 %893, i32 %894)
  %896 = load i32, i32* %16, align 4
  %897 = load i32, i32* %22, align 4
  %898 = load i32, i32* %23, align 4
  %899 = load i32, i32* %43, align 4
  %900 = call i32 @cluster_read_upl_release(i32 %896, i32 %897, i32 %898, i32 %899)
  %901 = load i32, i32* @DBG_FSRW, align 4
  %902 = call i32 @FSDBG_CODE(i32 %901, i32 35)
  %903 = load i32, i32* @DBG_FUNC_END, align 4
  %904 = or i32 %902, %903
  %905 = load i32, i32* %16, align 4
  %906 = call i32 @KERNEL_DEBUG(i32 %904, i32 %905, i32 -1, i32 -1, i32 0, i32 0)
  br label %907

907:                                              ; preds = %880, %875
  br label %908

908:                                              ; preds = %907, %866
  %909 = load i32, i32* %30, align 4
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %911, label %913

911:                                              ; preds = %908
  %912 = load i32, i32* %29, align 4
  store i32 %912, i32* %30, align 4
  br label %913

913:                                              ; preds = %911, %908
  %914 = load i32, i32* %10, align 4
  %915 = icmp ne i32 %914, 0
  br i1 %915, label %916, label %943

916:                                              ; preds = %913
  %917 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %918 = call i64 @cluster_is_throttled(%struct.TYPE_12__* %917)
  %919 = icmp ne i64 %918, 0
  br i1 %919, label %920, label %922

920:                                              ; preds = %916
  store i32 0, i32* %37, align 4
  store i32 0, i32* %38, align 4
  %921 = load i32, i32* @THROTTLE_MAX_IOSIZE, align 4
  store i32 %921, i32* %34, align 4
  br label %942

922:                                              ; preds = %916
  %923 = load i32, i32* %34, align 4
  %924 = load i32, i32* @THROTTLE_MAX_IOSIZE, align 4
  %925 = icmp eq i32 %923, %924
  br i1 %925, label %926, label %941

926:                                              ; preds = %922
  %927 = load i32, i32* %44, align 4
  %928 = load i32, i32* @THROTTLE_LEVEL_TIER3, align 4
  %929 = icmp ne i32 %927, %928
  br i1 %929, label %930, label %939

930:                                              ; preds = %926
  %931 = load i32, i32* %44, align 4
  %932 = load i32, i32* @THROTTLE_LEVEL_TIER2, align 4
  %933 = icmp ne i32 %931, %932
  br i1 %933, label %934, label %939

934:                                              ; preds = %930
  %935 = load %struct.cl_readahead*, %struct.cl_readahead** %39, align 8
  %936 = icmp ne %struct.cl_readahead* %935, null
  br i1 %936, label %937, label %938

937:                                              ; preds = %934
  store i32 1, i32* %37, align 4
  br label %938

938:                                              ; preds = %937, %934
  store i32 1, i32* %38, align 4
  br label %939

939:                                              ; preds = %938, %930, %926
  %940 = load i32, i32* %36, align 4
  store i32 %940, i32* %34, align 4
  store i32 0, i32* %26, align 4
  br label %941

941:                                              ; preds = %939, %922
  br label %942

942:                                              ; preds = %941, %920
  br label %943

943:                                              ; preds = %942, %913
  br label %226

944:                                              ; preds = %417, %389, %367, %238
  %945 = load i64, i64* %45, align 8
  %946 = load i64, i64* @TRUE, align 8
  %947 = icmp eq i64 %945, %946
  br i1 %947, label %948, label %953

948:                                              ; preds = %944
  %949 = call i32 @cluster_iostate_wait(%struct.clios* %40, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %950 = getelementptr inbounds %struct.clios, %struct.clios* %40, i32 0, i32 1
  %951 = load i32, i32* @cl_mtx_grp, align 4
  %952 = call i32 @lck_mtx_destroy(i32* %950, i32 %951)
  br label %953

953:                                              ; preds = %948, %944
  %954 = load %struct.cl_readahead*, %struct.cl_readahead** %39, align 8
  %955 = icmp ne %struct.cl_readahead* %954, null
  br i1 %955, label %956, label %973

956:                                              ; preds = %953
  %957 = load i32, i32* @DBG_FSRW, align 4
  %958 = call i32 @FSDBG_CODE(i32 %957, i32 32)
  %959 = load i32, i32* @DBG_FUNC_END, align 4
  %960 = or i32 %958, %959
  %961 = load %struct.uio*, %struct.uio** %9, align 8
  %962 = getelementptr inbounds %struct.uio, %struct.uio* %961, i32 0, i32 0
  %963 = load i32, i32* %962, align 4
  %964 = load i32, i32* %10, align 4
  %965 = load %struct.cl_readahead*, %struct.cl_readahead** %39, align 8
  %966 = getelementptr inbounds %struct.cl_readahead, %struct.cl_readahead* %965, i32 0, i32 0
  %967 = load i32, i32* %966, align 8
  %968 = load i32, i32* %30, align 4
  %969 = call i32 @KERNEL_DEBUG(i32 %960, i32 %963, i32 %964, i32 %967, i32 %968, i32 0)
  %970 = load %struct.cl_readahead*, %struct.cl_readahead** %39, align 8
  %971 = getelementptr inbounds %struct.cl_readahead, %struct.cl_readahead* %970, i32 0, i32 2
  %972 = call i32 @lck_mtx_unlock(i32* %971)
  br label %984

973:                                              ; preds = %953
  %974 = load i32, i32* @DBG_FSRW, align 4
  %975 = call i32 @FSDBG_CODE(i32 %974, i32 32)
  %976 = load i32, i32* @DBG_FUNC_END, align 4
  %977 = or i32 %975, %976
  %978 = load %struct.uio*, %struct.uio** %9, align 8
  %979 = getelementptr inbounds %struct.uio, %struct.uio* %978, i32 0, i32 0
  %980 = load i32, i32* %979, align 4
  %981 = load i32, i32* %10, align 4
  %982 = load i32, i32* %30, align 4
  %983 = call i32 @KERNEL_DEBUG(i32 %977, i32 %980, i32 %981, i32 0, i32 %982, i32 0)
  br label %984

984:                                              ; preds = %973, %956
  %985 = load i32, i32* %30, align 4
  ret i32 %985
}

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FSDBG_CODE(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @throttle_get_io_policy(i32*) #1

declare dso_local i32 @cluster_max_io_size(i32, i32) #1

declare dso_local i32 @MAX_PREFETCH(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @disk_conditioner_mount_is_ssd(i32) #1

declare dso_local i64 @cluster_is_throttled(%struct.TYPE_12__*) #1

declare dso_local %struct.cl_readahead* @cluster_get_rap(%struct.TYPE_12__*) #1

declare dso_local i32 @cluster_read_prefetch(%struct.TYPE_12__*, i32, i32, i32, i32 (i32, i8*)*, i8*, i32) #1

declare dso_local i32 @cluster_copy_ubc_data_internal(%struct.TYPE_12__*, %struct.uio*, i32*, i32, i32) #1

declare dso_local i32 @cluster_read_ahead(%struct.TYPE_12__*, %struct.cl_extent*, i32, %struct.cl_readahead*, i32 (i32, i8*)*, i8*, i32) #1

declare dso_local i32 @cluster_io_present_in_BC(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @throttle_info_update_by_mount(i32) #1

declare dso_local i64 @ubc_create_upl_kernel(%struct.TYPE_12__*, i32, i32, i32*, i32**, i32, i32) #1

declare dso_local i64 @upl_valid_page(i32*, i32) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

declare dso_local i32 @cluster_io(%struct.TYPE_12__*, i32, i32, i32, i32, i32, i32, %struct.clios*, i32 (i32, i8*)*, i8*) #1

declare dso_local i32 @ubc_upl_abort_range(i32, i32, i32, i32) #1

declare dso_local i32 @cluster_iostate_wait(%struct.clios*, i32, i8*) #1

declare dso_local i32 @cluster_copy_upl_data(%struct.uio*, i32, i32, i32*) #1

declare dso_local i32 @ubc_upl_commit_range(i32, i32, i32, i32) #1

declare dso_local i32 @cluster_read_upl_release(i32, i32, i32, i32) #1

declare dso_local i32 @lck_mtx_destroy(i32*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
