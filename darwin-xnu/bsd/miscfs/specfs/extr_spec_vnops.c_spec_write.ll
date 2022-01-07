; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_spec_write.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_spec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32, %struct.uio*, i32)*, i32 }
%struct.uio = type { i64, i32, i32 }
%struct._throttle_io_info_t = type { i32 }
%struct.vnop_write_args = type { i32, %struct.uio*, %struct.vnode* }
%struct.vnode = type { i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.buf = type { i32 }

@cdevsw = common dso_local global %struct.TYPE_6__* null, align 8
@D_DISK = common dso_local global i32 0, align 4
@_throttle_io_info = common dso_local global %struct._throttle_io_info_t* null, align 8
@TRUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IO_SYNC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BLK_WRITE = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"spec_write type\00", align 1
@UIO_WRITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spec_write(%struct.vnop_write_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_write_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca %struct.buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct._throttle_io_info_t*, align 8
  %18 = alloca i32, align 4
  store %struct.vnop_write_args* %0, %struct.vnop_write_args** %3, align 8
  %19 = load %struct.vnop_write_args*, %struct.vnop_write_args** %3, align 8
  %20 = getelementptr inbounds %struct.vnop_write_args, %struct.vnop_write_args* %19, i32 0, i32 2
  %21 = load %struct.vnode*, %struct.vnode** %20, align 8
  store %struct.vnode* %21, %struct.vnode** %4, align 8
  %22 = load %struct.vnop_write_args*, %struct.vnop_write_args** %3, align 8
  %23 = getelementptr inbounds %struct.vnop_write_args, %struct.vnop_write_args* %22, i32 0, i32 1
  %24 = load %struct.uio*, %struct.uio** %23, align 8
  store %struct.uio* %24, %struct.uio** %5, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %25 = load %struct.vnode*, %struct.vnode** %4, align 8
  %26 = getelementptr inbounds %struct.vnode, %struct.vnode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %268 [
    i32 128, label %28
    i32 129, label %93
  ]

28:                                               ; preds = %1
  store %struct._throttle_io_info_t* null, %struct._throttle_io_info_t** %17, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cdevsw, align 8
  %30 = load %struct.vnode*, %struct.vnode** %4, align 8
  %31 = getelementptr inbounds %struct.vnode, %struct.vnode* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @major(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @D_DISK, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %28
  %40 = load %struct.vnode*, %struct.vnode** %4, align 8
  %41 = getelementptr inbounds %struct.vnode, %struct.vnode* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %39
  %48 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** @_throttle_io_info, align 8
  %49 = load %struct.vnode*, %struct.vnode** %4, align 8
  %50 = getelementptr inbounds %struct.vnode, %struct.vnode* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %48, i64 %54
  store %struct._throttle_io_info_t* %55, %struct._throttle_io_info_t** %17, align 8
  %56 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %17, align 8
  %57 = load %struct.vnode*, %struct.vnode** %4, align 8
  %58 = getelementptr inbounds %struct.vnode, %struct.vnode* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @TRUE, align 4
  %64 = call i32 @throttle_info_update_internal(%struct._throttle_io_info_t* %56, i32* null, i32 0, i32 %62, i32 %63, i32* null)
  store i32 %64, i32* %18, align 4
  %65 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %17, align 8
  %66 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %65, i32 0, i32 0
  %67 = call i32 @microuptime(i32* %66)
  br label %68

68:                                               ; preds = %47, %39, %28
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cdevsw, align 8
  %70 = load %struct.vnode*, %struct.vnode** %4, align 8
  %71 = getelementptr inbounds %struct.vnode, %struct.vnode* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @major(i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32 (i32, %struct.uio*, i32)*, i32 (i32, %struct.uio*, i32)** %75, align 8
  %77 = load %struct.vnode*, %struct.vnode** %4, align 8
  %78 = getelementptr inbounds %struct.vnode, %struct.vnode* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.uio*, %struct.uio** %5, align 8
  %81 = load %struct.vnop_write_args*, %struct.vnop_write_args** %3, align 8
  %82 = getelementptr inbounds %struct.vnop_write_args, %struct.vnop_write_args* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 %76(i32 %79, %struct.uio* %80, i32 %83)
  store i32 %84, i32* %15, align 4
  %85 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %17, align 8
  %86 = icmp ne %struct._throttle_io_info_t* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %68
  %88 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %17, align 8
  %89 = load i32, i32* %18, align 4
  %90 = call i32 @throttle_info_end_io_internal(%struct._throttle_io_info_t* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %68
  %92 = load i32, i32* %15, align 4
  store i32 %92, i32* %2, align 4
  br label %271

93:                                               ; preds = %1
  %94 = load %struct.uio*, %struct.uio** %5, align 8
  %95 = call i32 @uio_resid(%struct.uio* %94)
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 0, i32* %2, align 4
  br label %271

98:                                               ; preds = %93
  %99 = load %struct.uio*, %struct.uio** %5, align 8
  %100 = getelementptr inbounds %struct.uio, %struct.uio* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* @EINVAL, align 4
  store i32 %104, i32* %2, align 4
  br label %271

105:                                              ; preds = %98
  %106 = load %struct.vnop_write_args*, %struct.vnop_write_args** %3, align 8
  %107 = getelementptr inbounds %struct.vnop_write_args, %struct.vnop_write_args* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @IO_SYNC, align 4
  %110 = and i32 %108, %109
  store i32 %110, i32* %11, align 4
  %111 = load %struct.vnode*, %struct.vnode** %4, align 8
  %112 = getelementptr inbounds %struct.vnode, %struct.vnode* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %16, align 4
  %114 = load %struct.vnode*, %struct.vnode** %4, align 8
  %115 = getelementptr inbounds %struct.vnode, %struct.vnode* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @PAGE_SIZE, align 4
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %105
  %121 = load i32, i32* @EINVAL, align 4
  store i32 %121, i32* %2, align 4
  br label %271

122:                                              ; preds = %105
  %123 = load i32, i32* @PAGE_SIZE, align 4
  %124 = load i32, i32* %12, align 4
  %125 = sdiv i32 %123, %124
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = sub nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %12, align 4
  %130 = mul nsw i32 %128, %129
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %264, %122
  %132 = load %struct.uio*, %struct.uio** %5, align 8
  %133 = getelementptr inbounds %struct.uio, %struct.uio* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sdiv i32 %134, %135
  %137 = load i32, i32* %9, align 4
  %138 = xor i32 %137, -1
  %139 = and i32 %136, %138
  store i32 %139, i32* %7, align 4
  %140 = load %struct.uio*, %struct.uio** %5, align 8
  %141 = getelementptr inbounds %struct.uio, %struct.uio* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = srem i32 %142, %143
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %14, align 4
  %147 = sub nsw i32 %145, %146
  %148 = load %struct.uio*, %struct.uio** %5, align 8
  %149 = call i32 @uio_resid(%struct.uio* %148)
  %150 = call i32 @min(i32 %147, i32 %149)
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %179

154:                                              ; preds = %131
  %155 = load %struct.vnode*, %struct.vnode** %4, align 8
  %156 = getelementptr inbounds %struct.vnode, %struct.vnode* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %179

159:                                              ; preds = %154
  %160 = load %struct.uio*, %struct.uio** %5, align 8
  %161 = getelementptr inbounds %struct.uio, %struct.uio* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %162, %163
  %165 = load %struct.vnode*, %struct.vnode** %4, align 8
  %166 = getelementptr inbounds %struct.vnode, %struct.vnode* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = icmp sgt i32 %164, %167
  br i1 %168, label %169, label %179

169:                                              ; preds = %159
  %170 = load %struct.uio*, %struct.uio** %5, align 8
  %171 = getelementptr inbounds %struct.uio, %struct.uio* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %13, align 4
  %174 = add nsw i32 %172, %173
  %175 = load %struct.vnode*, %struct.vnode** %4, align 8
  %176 = getelementptr inbounds %struct.vnode, %struct.vnode* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 %174, %177
  store i32 %178, i32* %13, align 4
  br label %179

179:                                              ; preds = %169, %159, %154, %131
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %179
  %184 = load %struct.vnode*, %struct.vnode** %4, align 8
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* @BLK_WRITE, align 4
  %188 = call %struct.buf* @buf_getblk(%struct.vnode* %184, i32 %185, i32 %186, i32 0, i32 0, i32 %187)
  store %struct.buf* %188, %struct.buf** %6, align 8
  br label %196

189:                                              ; preds = %179
  %190 = load %struct.vnode*, %struct.vnode** %4, align 8
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* @NOCRED, align 4
  %194 = call i64 @buf_bread(%struct.vnode* %190, i32 %191, i32 %192, i32 %193, %struct.buf** %6)
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %15, align 4
  br label %196

196:                                              ; preds = %189, %183
  %197 = load i32, i32* %15, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %196
  %200 = load %struct.buf*, %struct.buf** %6, align 8
  %201 = call i64 @buf_error(%struct.buf* %200)
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %15, align 4
  br label %203

203:                                              ; preds = %199, %196
  %204 = load i32, i32* %15, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %203
  %207 = load %struct.buf*, %struct.buf** %6, align 8
  %208 = call i32 @buf_brelse(%struct.buf* %207)
  %209 = load i32, i32* %15, align 4
  store i32 %209, i32* %2, align 4
  br label %271

210:                                              ; preds = %203
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* %8, align 4
  %213 = load %struct.buf*, %struct.buf** %6, align 8
  %214 = call i32 @buf_resid(%struct.buf* %213)
  %215 = sub nsw i32 %212, %214
  %216 = call i32 @min(i32 %211, i32 %215)
  store i32 %216, i32* %13, align 4
  %217 = load %struct.buf*, %struct.buf** %6, align 8
  %218 = call i64 @buf_dataptr(%struct.buf* %217)
  %219 = inttoptr i64 %218 to i8*
  %220 = load i32, i32* %14, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  %223 = load i32, i32* %13, align 4
  %224 = load %struct.uio*, %struct.uio** %5, align 8
  %225 = call i32 @uiomove(i8* %222, i32 %223, %struct.uio* %224)
  store i32 %225, i32* %15, align 4
  %226 = load i32, i32* %15, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %210
  %229 = load %struct.buf*, %struct.buf** %6, align 8
  %230 = call i32 @buf_brelse(%struct.buf* %229)
  %231 = load i32, i32* %15, align 4
  store i32 %231, i32* %2, align 4
  br label %271

232:                                              ; preds = %210
  %233 = load %struct.buf*, %struct.buf** %6, align 8
  %234 = call i32 @buf_markaged(%struct.buf* %233)
  %235 = load i32, i32* %11, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %232
  %238 = load %struct.buf*, %struct.buf** %6, align 8
  %239 = call i32 @buf_bwrite(%struct.buf* %238)
  store i32 %239, i32* %15, align 4
  br label %253

240:                                              ; preds = %232
  %241 = load i32, i32* %13, align 4
  %242 = load i32, i32* %14, align 4
  %243 = add nsw i32 %241, %242
  %244 = load i32, i32* %8, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %240
  %247 = load %struct.buf*, %struct.buf** %6, align 8
  %248 = call i32 @buf_bawrite(%struct.buf* %247)
  store i32 %248, i32* %15, align 4
  br label %252

249:                                              ; preds = %240
  %250 = load %struct.buf*, %struct.buf** %6, align 8
  %251 = call i32 @buf_bdwrite(%struct.buf* %250)
  store i32 %251, i32* %15, align 4
  br label %252

252:                                              ; preds = %249, %246
  br label %253

253:                                              ; preds = %252, %237
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %15, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %254
  %258 = load %struct.uio*, %struct.uio** %5, align 8
  %259 = call i32 @uio_resid(%struct.uio* %258)
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %257
  %262 = load i32, i32* %13, align 4
  %263 = icmp ne i32 %262, 0
  br label %264

264:                                              ; preds = %261, %257, %254
  %265 = phi i1 [ false, %257 ], [ false, %254 ], [ %263, %261 ]
  br i1 %265, label %131, label %266

266:                                              ; preds = %264
  %267 = load i32, i32* %15, align 4
  store i32 %267, i32* %2, align 4
  br label %271

268:                                              ; preds = %1
  %269 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %270

270:                                              ; preds = %268
  store i32 0, i32* %2, align 4
  br label %271

271:                                              ; preds = %270, %266, %228, %206, %120, %103, %97, %91
  %272 = load i32, i32* %2, align 4
  ret i32 %272
}

declare dso_local i64 @major(i32) #1

declare dso_local i32 @throttle_info_update_internal(%struct._throttle_io_info_t*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @microuptime(i32*) #1

declare dso_local i32 @throttle_info_end_io_internal(%struct._throttle_io_info_t*, i32) #1

declare dso_local i32 @uio_resid(%struct.uio*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.buf* @buf_getblk(%struct.vnode*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @buf_bread(%struct.vnode*, i32, i32, i32, %struct.buf**) #1

declare dso_local i64 @buf_error(%struct.buf*) #1

declare dso_local i32 @buf_brelse(%struct.buf*) #1

declare dso_local i32 @buf_resid(%struct.buf*) #1

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #1

declare dso_local i64 @buf_dataptr(%struct.buf*) #1

declare dso_local i32 @buf_markaged(%struct.buf*) #1

declare dso_local i32 @buf_bwrite(%struct.buf*) #1

declare dso_local i32 @buf_bawrite(%struct.buf*) #1

declare dso_local i32 @buf_bdwrite(%struct.buf*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
