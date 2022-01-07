; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_read_contig.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_read_contig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.uio = type { i32, i32 }
%struct.clios = type { i32, i32, i64, i64, i64 }

@MAX_VECTS = common dso_local global i32 0, align 4
@IO_PASSIVE = common dso_local global i32 0, align 4
@CL_PASSIVE = common dso_local global i32 0, align 4
@IO_NOCACHE = common dso_local global i32 0, align 4
@CL_NOCACHE = common dso_local global i32 0, align 4
@PUSH_SYNC = common dso_local global i32 0, align 4
@cl_mtx_grp = common dso_local global i32 0, align 4
@cl_mtx_attr = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@UPL_FILE_IO = common dso_local global i32 0, align 4
@UPL_NO_SYNC = common dso_local global i32 0, align 4
@UPL_CLEAN_IN_PLACE = common dso_local global i32 0, align 4
@UPL_SET_INTERNAL = common dso_local global i32 0, align 4
@UPL_SET_LITE = common dso_local global i32 0, align 4
@UPL_SET_IO_WIRE = common dso_local global i32 0, align 4
@DBG_FSRW = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_FILE = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@CL_READ = common dso_local global i32 0, align 4
@MAX_IO_CONTIG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"cluster_read_contig\00", align 1
@CL_NOZERO = common dso_local global i32 0, align 4
@CL_DEV_MEMORY = common dso_local global i32 0, align 4
@CL_ASYNC = common dso_local global i32 0, align 4
@IO_CONTIG = common dso_local global i32 0, align 4
@IO_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.uio*, i32, i32*, i32*, i32 (i32, i8*)*, i8*, i32)* @cluster_read_contig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cluster_read_contig(%struct.TYPE_9__* %0, %struct.uio* %1, i32 %2, i32* %3, i32* %4, i32 (i32, i8*)* %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.uio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32 (i32, i8*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca %struct.clios, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store %struct.uio* %1, %struct.uio** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 (i32, i8*)* %5, i32 (i32, i8*)** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %42 = load i32, i32* @MAX_VECTS, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %18, align 8
  %45 = alloca i32, i64 %43, align 16
  store i64 %43, i64* %19, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %38, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* @IO_PASSIVE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %8
  %51 = load i32, i32* @CL_PASSIVE, align 4
  store i32 %51, i32* %39, align 4
  br label %53

52:                                               ; preds = %8
  store i32 0, i32* %39, align 4
  br label %53

53:                                               ; preds = %52, %50
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* @IO_NOCACHE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @CL_NOCACHE, align 4
  %60 = load i32, i32* %39, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %39, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32 (i32, i8*)*, i32 (i32, i8*)** %14, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = load i32, i32* @PUSH_SYNC, align 4
  %68 = call i32 @cluster_syncup(%struct.TYPE_9__* %63, i32 %64, i32 (i32, i8*)* %65, i8* %66, i32 %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %36, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %37, align 4
  %81 = getelementptr inbounds %struct.clios, %struct.clios* %29, i32 0, i32 4
  store i64 0, i64* %81, align 8
  %82 = getelementptr inbounds %struct.clios, %struct.clios* %29, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = getelementptr inbounds %struct.clios, %struct.clios* %29, i32 0, i32 0
  store i32 0, i32* %83, align 8
  %84 = getelementptr inbounds %struct.clios, %struct.clios* %29, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = getelementptr inbounds %struct.clios, %struct.clios* %29, i32 0, i32 1
  %86 = load i32, i32* @cl_mtx_grp, align 4
  %87 = load i32, i32* @cl_mtx_attr, align 4
  %88 = call i32 @lck_mtx_init(i32* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %357, %62
  %90 = load i32*, i32** %13, align 8
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %35, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.uio*, %struct.uio** %10, align 8
  %94 = getelementptr inbounds %struct.uio, %struct.uio* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %92, %95
  store i32 %96, i32* %23, align 4
  %97 = load i32, i32* %35, align 4
  %98 = load i32, i32* %23, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %89
  %101 = load i32, i32* %23, align 4
  store i32 %101, i32* %35, align 4
  br label %102

102:                                              ; preds = %100, %89
  %103 = load %struct.uio*, %struct.uio** %10, align 8
  %104 = call i32 @uio_curriovbase(%struct.uio* %103)
  store i32 %104, i32* %22, align 4
  %105 = load i32, i32* %22, align 4
  %106 = load i32, i32* @PAGE_MASK, align 4
  %107 = and i32 %105, %106
  store i32 %107, i32* %20, align 4
  %108 = load i32, i32* %20, align 4
  %109 = load i32, i32* %35, align 4
  %110 = add nsw i32 %108, %109
  store i32 %110, i32* %25, align 4
  store i64 0, i64* %26, align 8
  %111 = load i32, i32* %25, align 4
  store i32 %111, i32* %24, align 4
  %112 = load i32, i32* @UPL_FILE_IO, align 4
  %113 = load i32, i32* @UPL_NO_SYNC, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @UPL_CLEAN_IN_PLACE, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @UPL_SET_INTERNAL, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @UPL_SET_LITE, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @UPL_SET_IO_WIRE, align 4
  %122 = or i32 %120, %121
  store i32 %122, i32* %27, align 4
  %123 = load i32, i32* @DBG_FSRW, align 4
  %124 = call i32 @FSDBG_CODE(i32 %123, i32 92)
  %125 = load i32, i32* @DBG_FUNC_START, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* %20, align 4
  %128 = load i32, i32* %24, align 4
  %129 = load i32, i32* %22, align 4
  %130 = load i32, i32* %35, align 4
  %131 = sext i32 %130 to i64
  %132 = call i32 @KERNEL_DEBUG(i32 %126, i32 %127, i32 %128, i32 %129, i64 %131, i32 0)
  %133 = load %struct.uio*, %struct.uio** %10, align 8
  %134 = getelementptr inbounds %struct.uio, %struct.uio* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @UIO_SEG_IS_USER_SPACE(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %102
  %139 = call i32 (...) @current_map()
  br label %142

140:                                              ; preds = %102
  %141 = load i32, i32* @kernel_map, align 4
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi i32 [ %139, %138 ], [ %141, %140 ]
  store i32 %143, i32* %40, align 4
  %144 = load i32, i32* %40, align 4
  %145 = load i32, i32* %22, align 4
  %146 = load i32, i32* @PAGE_MASK, align 4
  %147 = xor i32 %146, -1
  %148 = and i32 %145, %147
  %149 = load i32, i32* %31, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %45, i64 %150
  %152 = load i32, i32* @VM_KERN_MEMORY_FILE, align 4
  %153 = call i64 @vm_map_get_upl(i32 %144, i32 %148, i32* %24, i32* %151, i32* null, i64* %26, i32* %27, i32 %152, i32 0)
  store i64 %153, i64* %28, align 8
  %154 = load i32, i32* @DBG_FSRW, align 4
  %155 = call i32 @FSDBG_CODE(i32 %154, i32 92)
  %156 = load i32, i32* @DBG_FUNC_END, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* %24, align 4
  %160 = load i32, i32* %35, align 4
  %161 = load i64, i64* %28, align 8
  %162 = call i32 @KERNEL_DEBUG(i32 %157, i32 %158, i32 %159, i32 %160, i64 %161, i32 0)
  %163 = load i64, i64* %28, align 8
  %164 = load i64, i64* @KERN_SUCCESS, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %142
  %167 = load i32, i32* @EINVAL, align 4
  store i32 %167, i32* %30, align 4
  br label %365

168:                                              ; preds = %142
  %169 = load i32, i32* %32, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %32, align 4
  %171 = load i32, i32* %24, align 4
  %172 = load i32, i32* %25, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load i32, i32* @EINVAL, align 4
  store i32 %175, i32* %30, align 4
  br label %365

176:                                              ; preds = %168
  %177 = load i32, i32* %31, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %45, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i32* @ubc_upl_pageinfo(i32 %180)
  store i32* %181, i32** %17, align 8
  %182 = load i32*, i32** %17, align 8
  %183 = call i64 @upl_phys_page(i32* %182, i32 0)
  %184 = trunc i64 %183 to i32
  %185 = load i32, i32* @PAGE_SHIFT, align 4
  %186 = shl i32 %184, %185
  %187 = load i32, i32* %20, align 4
  %188 = add nsw i32 %186, %187
  store i32 %188, i32* %21, align 4
  br label %189

189:                                              ; preds = %232, %176
  %190 = load %struct.uio*, %struct.uio** %10, align 8
  %191 = getelementptr inbounds %struct.uio, %struct.uio* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %36, align 4
  %194 = sub nsw i32 %193, 1
  %195 = and i32 %192, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %189
  %198 = load i32, i32* %35, align 4
  %199 = load i32, i32* %36, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %197, %189
  %202 = load i32, i32* %35, align 4
  %203 = icmp ne i32 %202, 0
  br label %204

204:                                              ; preds = %201, %197
  %205 = phi i1 [ false, %197 ], [ %203, %201 ]
  br i1 %205, label %206, label %245

206:                                              ; preds = %204
  %207 = load i32, i32* %36, align 4
  %208 = load %struct.uio*, %struct.uio** %10, align 8
  %209 = getelementptr inbounds %struct.uio, %struct.uio* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %36, align 4
  %212 = sub nsw i32 %211, 1
  %213 = and i32 %210, %212
  %214 = sub nsw i32 %207, %213
  store i32 %214, i32* %41, align 4
  %215 = load i32, i32* %41, align 4
  %216 = load i32, i32* %35, align 4
  %217 = icmp sgt i32 %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %206
  %219 = load i32, i32* %35, align 4
  store i32 %219, i32* %41, align 4
  br label %220

220:                                              ; preds = %218, %206
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %222 = load %struct.uio*, %struct.uio** %10, align 8
  %223 = load i32, i32* %21, align 4
  %224 = load i32, i32* %41, align 4
  %225 = load i32, i32* @CL_READ, align 4
  %226 = load i32 (i32, i8*)*, i32 (i32, i8*)** %14, align 8
  %227 = load i8*, i8** %15, align 8
  %228 = call i32 @cluster_align_phys_io(%struct.TYPE_9__* %221, %struct.uio* %222, i32 %223, i32 %224, i32 %225, i32 (i32, i8*)* %226, i8* %227)
  store i32 %228, i32* %30, align 4
  %229 = load i32, i32* %30, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %220
  br label %365

232:                                              ; preds = %220
  %233 = load i32, i32* %41, align 4
  %234 = load i32, i32* %20, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %20, align 4
  %236 = load i32, i32* %41, align 4
  %237 = load i32, i32* %21, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* %21, align 4
  %239 = load i32, i32* %41, align 4
  %240 = load i32, i32* %35, align 4
  %241 = sub nsw i32 %240, %239
  store i32 %241, i32* %35, align 4
  %242 = load i32, i32* %41, align 4
  %243 = load i32, i32* %22, align 4
  %244 = add nsw i32 %243, %242
  store i32 %244, i32* %22, align 4
  br label %189

245:                                              ; preds = %204
  %246 = load i32, i32* %22, align 4
  %247 = load i32, i32* %37, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %245
  %251 = load i32, i32* @EINVAL, align 4
  store i32 %251, i32* %30, align 4
  br label %365

252:                                              ; preds = %245
  %253 = load i32, i32* %35, align 4
  %254 = load i32, i32* %36, align 4
  %255 = sub nsw i32 %254, 1
  %256 = and i32 %253, %255
  store i32 %256, i32* %38, align 4
  %257 = load i32, i32* %38, align 4
  %258 = load i32, i32* %35, align 4
  %259 = sub nsw i32 %258, %257
  store i32 %259, i32* %35, align 4
  br label %260

260:                                              ; preds = %324, %252
  %261 = load i32, i32* %35, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %260
  %264 = load i32, i32* %30, align 4
  %265 = icmp eq i32 %264, 0
  br label %266

266:                                              ; preds = %263, %260
  %267 = phi i1 [ false, %260 ], [ %265, %263 ]
  br i1 %267, label %268, label %325

268:                                              ; preds = %266
  %269 = load i32, i32* %35, align 4
  %270 = load i32, i32* @MAX_IO_CONTIG_SIZE, align 4
  %271 = icmp sgt i32 %269, %270
  br i1 %271, label %272, label %274

272:                                              ; preds = %268
  %273 = load i32, i32* @MAX_IO_CONTIG_SIZE, align 4
  store i32 %273, i32* %34, align 4
  br label %276

274:                                              ; preds = %268
  %275 = load i32, i32* %35, align 4
  store i32 %275, i32* %34, align 4
  br label %276

276:                                              ; preds = %274, %272
  %277 = load i32, i32* @MAX_IO_CONTIG_SIZE, align 4
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %279 = call i32 @IO_SCALE(%struct.TYPE_9__* %278, i32 2)
  %280 = mul nsw i32 %277, %279
  %281 = call i32 @cluster_iostate_wait(%struct.clios* %29, i32 %280, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %282 = getelementptr inbounds %struct.clios, %struct.clios* %29, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %276
  br label %365

286:                                              ; preds = %276
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %288 = load i32, i32* %31, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %45, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* %20, align 4
  %293 = load %struct.uio*, %struct.uio** %10, align 8
  %294 = getelementptr inbounds %struct.uio, %struct.uio* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* %34, align 4
  %297 = load i32, i32* @CL_READ, align 4
  %298 = load i32, i32* @CL_NOZERO, align 4
  %299 = or i32 %297, %298
  %300 = load i32, i32* @CL_DEV_MEMORY, align 4
  %301 = or i32 %299, %300
  %302 = load i32, i32* @CL_ASYNC, align 4
  %303 = or i32 %301, %302
  %304 = load i32, i32* %39, align 4
  %305 = or i32 %303, %304
  %306 = load i32 (i32, i8*)*, i32 (i32, i8*)** %14, align 8
  %307 = load i8*, i8** %15, align 8
  %308 = call i32 @cluster_io(%struct.TYPE_9__* %287, i32 %291, i32 %292, i32 %295, i32 %296, i32 %305, i32 0, %struct.clios* %29, i32 (i32, i8*)* %306, i8* %307)
  store i32 %308, i32* %30, align 4
  %309 = load i32, i32* %30, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %324

311:                                              ; preds = %286
  %312 = load %struct.uio*, %struct.uio** %10, align 8
  %313 = load i32, i32* %34, align 4
  %314 = call i32 @uio_update(%struct.uio* %312, i32 %313)
  %315 = load i32, i32* %34, align 4
  %316 = load i32, i32* %21, align 4
  %317 = add nsw i32 %316, %315
  store i32 %317, i32* %21, align 4
  %318 = load i32, i32* %34, align 4
  %319 = load i32, i32* %20, align 4
  %320 = add nsw i32 %319, %318
  store i32 %320, i32* %20, align 4
  %321 = load i32, i32* %34, align 4
  %322 = load i32, i32* %35, align 4
  %323 = sub nsw i32 %322, %321
  store i32 %323, i32* %35, align 4
  br label %324

324:                                              ; preds = %311, %286
  br label %260

325:                                              ; preds = %266
  %326 = load i32, i32* %30, align 4
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %361

328:                                              ; preds = %325
  %329 = getelementptr inbounds %struct.clios, %struct.clios* %29, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %361

332:                                              ; preds = %328
  %333 = load i32, i32* %38, align 4
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %361

335:                                              ; preds = %332
  %336 = load i32, i32* %32, align 4
  %337 = load i32, i32* @MAX_VECTS, align 4
  %338 = icmp slt i32 %336, %337
  br i1 %338, label %339, label %361

339:                                              ; preds = %335
  %340 = load %struct.uio*, %struct.uio** %10, align 8
  %341 = getelementptr inbounds %struct.uio, %struct.uio* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* %11, align 4
  %344 = icmp slt i32 %342, %343
  br i1 %344, label %345, label %361

345:                                              ; preds = %339
  %346 = load %struct.uio*, %struct.uio** %10, align 8
  %347 = load i32*, i32** %12, align 8
  %348 = load i32*, i32** %13, align 8
  %349 = call i32 @cluster_io_type(%struct.uio* %346, i32* %347, i32* %348, i32 0)
  store i32 %349, i32* %30, align 4
  %350 = load i32, i32* %30, align 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %360

352:                                              ; preds = %345
  %353 = load i32*, i32** %12, align 8
  %354 = load i32, i32* %353, align 4
  %355 = load i32, i32* @IO_CONTIG, align 4
  %356 = icmp eq i32 %354, %355
  br i1 %356, label %357, label %360

357:                                              ; preds = %352
  %358 = load i32, i32* %31, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %31, align 4
  br label %89

360:                                              ; preds = %352, %345
  br label %364

361:                                              ; preds = %339, %335, %332, %328, %325
  %362 = load i32, i32* @IO_UNKNOWN, align 4
  %363 = load i32*, i32** %12, align 8
  store i32 %362, i32* %363, align 4
  br label %364

364:                                              ; preds = %361, %360
  br label %365

365:                                              ; preds = %364, %285, %250, %231, %174, %166
  %366 = call i32 @cluster_iostate_wait(%struct.clios* %29, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %367 = getelementptr inbounds %struct.clios, %struct.clios* %29, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %373

370:                                              ; preds = %365
  %371 = getelementptr inbounds %struct.clios, %struct.clios* %29, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  store i32 %372, i32* %30, align 4
  br label %373

373:                                              ; preds = %370, %365
  %374 = getelementptr inbounds %struct.clios, %struct.clios* %29, i32 0, i32 1
  %375 = load i32, i32* @cl_mtx_grp, align 4
  %376 = call i32 @lck_mtx_destroy(i32* %374, i32 %375)
  %377 = load i32, i32* %30, align 4
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %391

379:                                              ; preds = %373
  %380 = load i32, i32* %38, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %391

382:                                              ; preds = %379
  %383 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %384 = load %struct.uio*, %struct.uio** %10, align 8
  %385 = load i32, i32* %21, align 4
  %386 = load i32, i32* %38, align 4
  %387 = load i32, i32* @CL_READ, align 4
  %388 = load i32 (i32, i8*)*, i32 (i32, i8*)** %14, align 8
  %389 = load i8*, i8** %15, align 8
  %390 = call i32 @cluster_align_phys_io(%struct.TYPE_9__* %383, %struct.uio* %384, i32 %385, i32 %386, i32 %387, i32 (i32, i8*)* %388, i8* %389)
  store i32 %390, i32* %30, align 4
  br label %391

391:                                              ; preds = %382, %379, %373
  store i32 0, i32* %33, align 4
  br label %392

392:                                              ; preds = %402, %391
  %393 = load i32, i32* %33, align 4
  %394 = load i32, i32* %32, align 4
  %395 = icmp slt i32 %393, %394
  br i1 %395, label %396, label %405

396:                                              ; preds = %392
  %397 = load i32, i32* %33, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %45, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = call i32 @ubc_upl_abort(i32 %400, i32 0)
  br label %402

402:                                              ; preds = %396
  %403 = load i32, i32* %33, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %33, align 4
  br label %392

405:                                              ; preds = %392
  %406 = load i32, i32* %30, align 4
  %407 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %407)
  ret i32 %406
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cluster_syncup(%struct.TYPE_9__*, i32, i32 (i32, i8*)*, i8*, i32) #2

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #2

declare dso_local i32 @uio_curriovbase(%struct.uio*) #2

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i64, i32) #2

declare dso_local i32 @FSDBG_CODE(i32, i32) #2

declare dso_local i64 @UIO_SEG_IS_USER_SPACE(i32) #2

declare dso_local i32 @current_map(...) #2

declare dso_local i64 @vm_map_get_upl(i32, i32, i32*, i32*, i32*, i64*, i32*, i32, i32) #2

declare dso_local i32* @ubc_upl_pageinfo(i32) #2

declare dso_local i64 @upl_phys_page(i32*, i32) #2

declare dso_local i32 @cluster_align_phys_io(%struct.TYPE_9__*, %struct.uio*, i32, i32, i32, i32 (i32, i8*)*, i8*) #2

declare dso_local i32 @cluster_iostate_wait(%struct.clios*, i32, i8*) #2

declare dso_local i32 @IO_SCALE(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @cluster_io(%struct.TYPE_9__*, i32, i32, i32, i32, i32, i32, %struct.clios*, i32 (i32, i8*)*, i8*) #2

declare dso_local i32 @uio_update(%struct.uio*, i32) #2

declare dso_local i32 @cluster_io_type(%struct.uio*, i32*, i32*, i32) #2

declare dso_local i32 @lck_mtx_destroy(i32*, i32) #2

declare dso_local i32 @ubc_upl_abort(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
