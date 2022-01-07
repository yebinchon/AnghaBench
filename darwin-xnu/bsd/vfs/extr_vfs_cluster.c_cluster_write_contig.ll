; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_write_contig.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_write_contig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.uio = type { i32, i32 }
%struct.clios = type { i32, i32, i64, i64, i64 }

@MAX_VECTS = common dso_local global i32 0, align 4
@PUSH_SYNC = common dso_local global i32 0, align 4
@cl_mtx_grp = common dso_local global i32 0, align 4
@cl_mtx_attr = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@UPL_FILE_IO = common dso_local global i32 0, align 4
@UPL_COPYOUT_FROM = common dso_local global i32 0, align 4
@UPL_NO_SYNC = common dso_local global i32 0, align 4
@UPL_CLEAN_IN_PLACE = common dso_local global i32 0, align 4
@UPL_SET_INTERNAL = common dso_local global i32 0, align 4
@UPL_SET_LITE = common dso_local global i32 0, align 4
@UPL_SET_IO_WIRE = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_FILE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@MAX_IO_CONTIG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cluster_write_contig\00", align 1
@CL_DEV_MEMORY = common dso_local global i32 0, align 4
@CL_ASYNC = common dso_local global i32 0, align 4
@IO_CONTIG = common dso_local global i32 0, align 4
@IO_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.uio*, i32, i32*, i32*, i32 (i32, i8*)*, i8*, i32)* @cluster_write_contig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cluster_write_contig(%struct.TYPE_9__* %0, %struct.uio* %1, i32 %2, i32* %3, i32* %4, i32 (i32, i8*)* %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.uio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32 (i32, i8*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca %struct.clios, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store %struct.uio* %1, %struct.uio** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 (i32, i8*)* %5, i32 (i32, i8*)** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %40 = load i32, i32* @MAX_VECTS, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %19, align 8
  %43 = alloca i32, i64 %41, align 16
  store i64 %41, i64* %20, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32 (i32, i8*)*, i32 (i32, i8*)** %14, align 8
  %47 = load i8*, i8** %15, align 8
  %48 = load i32 (i32, i8*)*, i32 (i32, i8*)** %14, align 8
  %49 = icmp ne i32 (i32, i8*)* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %8
  %51 = load i32, i32* @PUSH_SYNC, align 4
  br label %53

52:                                               ; preds = %8
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 0, %52 ]
  %55 = call i32 @cluster_syncup(%struct.TYPE_9__* %44, i32 %45, i32 (i32, i8*)* %46, i8* %47, i32 %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %36, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %37, align 4
  %68 = getelementptr inbounds %struct.clios, %struct.clios* %30, i32 0, i32 4
  store i64 0, i64* %68, align 8
  %69 = getelementptr inbounds %struct.clios, %struct.clios* %30, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = getelementptr inbounds %struct.clios, %struct.clios* %30, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = getelementptr inbounds %struct.clios, %struct.clios* %30, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = getelementptr inbounds %struct.clios, %struct.clios* %30, i32 0, i32 1
  %73 = load i32, i32* @cl_mtx_grp, align 4
  %74 = load i32, i32* @cl_mtx_attr, align 4
  %75 = call i32 @lck_mtx_init(i32* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %310, %53
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %23, align 4
  %79 = load %struct.uio*, %struct.uio** %10, align 8
  %80 = call i32 @uio_curriovbase(%struct.uio* %79)
  store i32 %80, i32* %35, align 4
  %81 = load i32, i32* %35, align 4
  %82 = load i32, i32* @PAGE_MASK, align 4
  %83 = and i32 %81, %82
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %21, align 8
  %85 = load i64, i64* %21, align 8
  %86 = load i32, i32* %23, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  store i64 %88, i64* %26, align 8
  store i64 0, i64* %27, align 8
  %89 = load i64, i64* %26, align 8
  store i64 %89, i64* %25, align 8
  %90 = load i32, i32* @UPL_FILE_IO, align 4
  %91 = load i32, i32* @UPL_COPYOUT_FROM, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @UPL_NO_SYNC, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @UPL_CLEAN_IN_PLACE, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @UPL_SET_INTERNAL, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @UPL_SET_LITE, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @UPL_SET_IO_WIRE, align 4
  %102 = or i32 %100, %101
  store i32 %102, i32* %28, align 4
  %103 = load %struct.uio*, %struct.uio** %10, align 8
  %104 = getelementptr inbounds %struct.uio, %struct.uio* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @UIO_SEG_IS_USER_SPACE(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %76
  %109 = call i32 (...) @current_map()
  br label %112

110:                                              ; preds = %76
  %111 = load i32, i32* @kernel_map, align 4
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  store i32 %113, i32* %38, align 4
  %114 = load i32, i32* %38, align 4
  %115 = load i32, i32* %35, align 4
  %116 = load i32, i32* @PAGE_MASK, align 4
  %117 = xor i32 %116, -1
  %118 = and i32 %115, %117
  %119 = load i32, i32* %32, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %43, i64 %120
  %122 = load i32, i32* @VM_KERN_MEMORY_FILE, align 4
  %123 = call i64 @vm_map_get_upl(i32 %114, i32 %118, i64* %25, i32* %121, i32* null, i64* %27, i32* %28, i32 %122, i32 0)
  store i64 %123, i64* %29, align 8
  %124 = load i64, i64* %29, align 8
  %125 = load i64, i64* @KERN_SUCCESS, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %112
  %128 = load i32, i32* @EINVAL, align 4
  store i32 %128, i32* %31, align 4
  br label %318

129:                                              ; preds = %112
  %130 = load i32, i32* %33, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %33, align 4
  %132 = load i64, i64* %25, align 8
  %133 = load i64, i64* %26, align 8
  %134 = icmp slt i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* @EINVAL, align 4
  store i32 %136, i32* %31, align 4
  br label %318

137:                                              ; preds = %129
  %138 = load i32, i32* %32, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %43, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32* @ubc_upl_pageinfo(i32 %141)
  store i32* %142, i32** %17, align 8
  %143 = load i32*, i32** %17, align 8
  %144 = call i64 @upl_phys_page(i32* %143, i32 0)
  %145 = trunc i64 %144 to i32
  %146 = load i32, i32* @PAGE_SHIFT, align 4
  %147 = shl i32 %145, %146
  %148 = load i64, i64* %21, align 8
  %149 = trunc i64 %148 to i32
  %150 = add nsw i32 %147, %149
  store i32 %150, i32* %18, align 4
  br label %151

151:                                              ; preds = %193, %137
  %152 = load %struct.uio*, %struct.uio** %10, align 8
  %153 = getelementptr inbounds %struct.uio, %struct.uio* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %36, align 4
  %156 = sub nsw i32 %155, 1
  %157 = and i32 %154, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %151
  %160 = load i32, i32* %23, align 4
  %161 = load i32, i32* %36, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %159, %151
  %164 = load i32, i32* %23, align 4
  %165 = icmp ne i32 %164, 0
  br label %166

166:                                              ; preds = %163, %159
  %167 = phi i1 [ false, %159 ], [ %165, %163 ]
  br i1 %167, label %168, label %207

168:                                              ; preds = %166
  %169 = load i32, i32* %36, align 4
  %170 = load %struct.uio*, %struct.uio** %10, align 8
  %171 = getelementptr inbounds %struct.uio, %struct.uio* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %36, align 4
  %174 = sub nsw i32 %173, 1
  %175 = and i32 %172, %174
  %176 = sub nsw i32 %169, %175
  store i32 %176, i32* %39, align 4
  %177 = load i32, i32* %39, align 4
  %178 = load i32, i32* %23, align 4
  %179 = icmp sgt i32 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %168
  %181 = load i32, i32* %23, align 4
  store i32 %181, i32* %39, align 4
  br label %182

182:                                              ; preds = %180, %168
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %184 = load %struct.uio*, %struct.uio** %10, align 8
  %185 = load i32, i32* %18, align 4
  %186 = load i32, i32* %39, align 4
  %187 = load i32 (i32, i8*)*, i32 (i32, i8*)** %14, align 8
  %188 = load i8*, i8** %15, align 8
  %189 = call i32 @cluster_align_phys_io(%struct.TYPE_9__* %183, %struct.uio* %184, i32 %185, i32 %186, i32 0, i32 (i32, i8*)* %187, i8* %188)
  store i32 %189, i32* %31, align 4
  %190 = load i32, i32* %31, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %182
  br label %318

193:                                              ; preds = %182
  %194 = load i32, i32* %39, align 4
  %195 = sext i32 %194 to i64
  %196 = load i64, i64* %21, align 8
  %197 = add nsw i64 %196, %195
  store i64 %197, i64* %21, align 8
  %198 = load i32, i32* %39, align 4
  %199 = load i32, i32* %18, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %18, align 4
  %201 = load i32, i32* %39, align 4
  %202 = load i32, i32* %23, align 4
  %203 = sub nsw i32 %202, %201
  store i32 %203, i32* %23, align 4
  %204 = load i32, i32* %39, align 4
  %205 = load i32, i32* %35, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %35, align 4
  br label %151

207:                                              ; preds = %166
  %208 = load i32, i32* %35, align 4
  %209 = load i32, i32* %37, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = load i32, i32* @EINVAL, align 4
  store i32 %213, i32* %31, align 4
  br label %318

214:                                              ; preds = %207
  %215 = load i32, i32* %23, align 4
  %216 = load i32, i32* %36, align 4
  %217 = sub nsw i32 %216, 1
  %218 = and i32 %215, %217
  store i32 %218, i32* %22, align 4
  %219 = load i32, i32* %22, align 4
  %220 = load i32, i32* %23, align 4
  %221 = sub nsw i32 %220, %219
  store i32 %221, i32* %23, align 4
  br label %222

222:                                              ; preds = %283, %214
  %223 = load i32, i32* %23, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load i32, i32* %31, align 4
  %227 = icmp eq i32 %226, 0
  br label %228

228:                                              ; preds = %225, %222
  %229 = phi i1 [ false, %222 ], [ %227, %225 ]
  br i1 %229, label %230, label %284

230:                                              ; preds = %228
  %231 = load i32, i32* %23, align 4
  %232 = load i32, i32* @MAX_IO_CONTIG_SIZE, align 4
  %233 = icmp sgt i32 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %230
  %235 = load i32, i32* @MAX_IO_CONTIG_SIZE, align 4
  store i32 %235, i32* %24, align 4
  br label %238

236:                                              ; preds = %230
  %237 = load i32, i32* %23, align 4
  store i32 %237, i32* %24, align 4
  br label %238

238:                                              ; preds = %236, %234
  %239 = load i32, i32* @MAX_IO_CONTIG_SIZE, align 4
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %241 = call i32 @IO_SCALE(%struct.TYPE_9__* %240, i32 2)
  %242 = mul nsw i32 %239, %241
  %243 = call i32 @cluster_iostate_wait(%struct.clios* %30, i32 %242, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %244 = getelementptr inbounds %struct.clios, %struct.clios* %30, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %238
  br label %318

248:                                              ; preds = %238
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %250 = load i32, i32* %32, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %43, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = load i64, i64* %21, align 8
  %255 = load %struct.uio*, %struct.uio** %10, align 8
  %256 = getelementptr inbounds %struct.uio, %struct.uio* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %24, align 4
  %259 = load i32, i32* @CL_DEV_MEMORY, align 4
  %260 = load i32, i32* @CL_ASYNC, align 4
  %261 = or i32 %259, %260
  %262 = load i32, i32* %16, align 4
  %263 = or i32 %261, %262
  %264 = load i32 (i32, i8*)*, i32 (i32, i8*)** %14, align 8
  %265 = load i8*, i8** %15, align 8
  %266 = call i32 @cluster_io(%struct.TYPE_9__* %249, i32 %253, i64 %254, i32 %257, i32 %258, i32 %263, i32 0, %struct.clios* %30, i32 (i32, i8*)* %264, i8* %265)
  store i32 %266, i32* %31, align 4
  %267 = load i32, i32* %31, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %283

269:                                              ; preds = %248
  %270 = load %struct.uio*, %struct.uio** %10, align 8
  %271 = load i32, i32* %24, align 4
  %272 = call i32 @uio_update(%struct.uio* %270, i32 %271)
  %273 = load i32, i32* %24, align 4
  %274 = sext i32 %273 to i64
  %275 = load i64, i64* %21, align 8
  %276 = add nsw i64 %275, %274
  store i64 %276, i64* %21, align 8
  %277 = load i32, i32* %24, align 4
  %278 = load i32, i32* %18, align 4
  %279 = add nsw i32 %278, %277
  store i32 %279, i32* %18, align 4
  %280 = load i32, i32* %24, align 4
  %281 = load i32, i32* %23, align 4
  %282 = sub nsw i32 %281, %280
  store i32 %282, i32* %23, align 4
  br label %283

283:                                              ; preds = %269, %248
  br label %222

284:                                              ; preds = %228
  %285 = load i32, i32* %31, align 4
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %314

287:                                              ; preds = %284
  %288 = getelementptr inbounds %struct.clios, %struct.clios* %30, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %314

291:                                              ; preds = %287
  %292 = load i32, i32* %22, align 4
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %314

294:                                              ; preds = %291
  %295 = load i32, i32* %33, align 4
  %296 = load i32, i32* @MAX_VECTS, align 4
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %298, label %314

298:                                              ; preds = %294
  %299 = load %struct.uio*, %struct.uio** %10, align 8
  %300 = load i32*, i32** %12, align 8
  %301 = load i32*, i32** %13, align 8
  %302 = call i32 @cluster_io_type(%struct.uio* %299, i32* %300, i32* %301, i32 0)
  store i32 %302, i32* %31, align 4
  %303 = load i32, i32* %31, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %313

305:                                              ; preds = %298
  %306 = load i32*, i32** %12, align 8
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @IO_CONTIG, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %313

310:                                              ; preds = %305
  %311 = load i32, i32* %32, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %32, align 4
  br label %76

313:                                              ; preds = %305, %298
  br label %317

314:                                              ; preds = %294, %291, %287, %284
  %315 = load i32, i32* @IO_UNKNOWN, align 4
  %316 = load i32*, i32** %12, align 8
  store i32 %315, i32* %316, align 4
  br label %317

317:                                              ; preds = %314, %313
  br label %318

318:                                              ; preds = %317, %247, %212, %192, %135, %127
  %319 = call i32 @cluster_iostate_wait(%struct.clios* %30, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %320 = getelementptr inbounds %struct.clios, %struct.clios* %30, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %318
  %324 = getelementptr inbounds %struct.clios, %struct.clios* %30, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  store i32 %325, i32* %31, align 4
  br label %326

326:                                              ; preds = %323, %318
  %327 = getelementptr inbounds %struct.clios, %struct.clios* %30, i32 0, i32 1
  %328 = load i32, i32* @cl_mtx_grp, align 4
  %329 = call i32 @lck_mtx_destroy(i32* %327, i32 %328)
  %330 = load i32, i32* %31, align 4
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %343

332:                                              ; preds = %326
  %333 = load i32, i32* %22, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %343

335:                                              ; preds = %332
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %337 = load %struct.uio*, %struct.uio** %10, align 8
  %338 = load i32, i32* %18, align 4
  %339 = load i32, i32* %22, align 4
  %340 = load i32 (i32, i8*)*, i32 (i32, i8*)** %14, align 8
  %341 = load i8*, i8** %15, align 8
  %342 = call i32 @cluster_align_phys_io(%struct.TYPE_9__* %336, %struct.uio* %337, i32 %338, i32 %339, i32 0, i32 (i32, i8*)* %340, i8* %341)
  store i32 %342, i32* %31, align 4
  br label %343

343:                                              ; preds = %335, %332, %326
  store i32 0, i32* %34, align 4
  br label %344

344:                                              ; preds = %354, %343
  %345 = load i32, i32* %34, align 4
  %346 = load i32, i32* %33, align 4
  %347 = icmp slt i32 %345, %346
  br i1 %347, label %348, label %357

348:                                              ; preds = %344
  %349 = load i32, i32* %34, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %43, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @ubc_upl_abort(i32 %352, i32 0)
  br label %354

354:                                              ; preds = %348
  %355 = load i32, i32* %34, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %34, align 4
  br label %344

357:                                              ; preds = %344
  %358 = load i32, i32* %31, align 4
  %359 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %359)
  ret i32 %358
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cluster_syncup(%struct.TYPE_9__*, i32, i32 (i32, i8*)*, i8*, i32) #2

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #2

declare dso_local i32 @uio_curriovbase(%struct.uio*) #2

declare dso_local i64 @UIO_SEG_IS_USER_SPACE(i32) #2

declare dso_local i32 @current_map(...) #2

declare dso_local i64 @vm_map_get_upl(i32, i32, i64*, i32*, i32*, i64*, i32*, i32, i32) #2

declare dso_local i32* @ubc_upl_pageinfo(i32) #2

declare dso_local i64 @upl_phys_page(i32*, i32) #2

declare dso_local i32 @cluster_align_phys_io(%struct.TYPE_9__*, %struct.uio*, i32, i32, i32, i32 (i32, i8*)*, i8*) #2

declare dso_local i32 @cluster_iostate_wait(%struct.clios*, i32, i8*) #2

declare dso_local i32 @IO_SCALE(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @cluster_io(%struct.TYPE_9__*, i32, i64, i32, i32, i32, i32, %struct.clios*, i32 (i32, i8*)*, i8*) #2

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
