; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevcdec.c_hls_transform_tree.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevcdec.c_hls_transform_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32*, %struct.TYPE_22__, %struct.TYPE_17__, %struct.TYPE_24__* }
%struct.TYPE_22__ = type { %struct.TYPE_18__*, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_23__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_20__ = type { i32*, i32*, i32* }
%struct.TYPE_19__ = type { i32, i32, i32 }

@MODE_INTER = common dso_local global i64 0, align 8
@PART_2Nx2N = common dso_local global i64 0, align 8
@MODE_INTRA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*)* @hls_transform_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hls_transform_tree(%struct.TYPE_25__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32* %11, i32* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_25__*, align 8
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
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_24__*, align 8
  %29 = alloca i32, align 4
  %30 = alloca [2 x i32], align 4
  %31 = alloca [2 x i32], align 4
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
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %15, align 8
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32* %11, i32** %26, align 8
  store i32* %12, i32** %27, align 8
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %46, align 8
  store %struct.TYPE_24__* %47, %struct.TYPE_24__** %28, align 8
  %48 = load i32*, i32** %26, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 0
  store i32 %50, i32* %51, align 4
  %52 = load i32*, i32** %26, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 1
  store i32 %54, i32* %55, align 4
  %56 = load i32*, i32** %27, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 0
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** %27, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 1
  store i32 %62, i32* %63, align 4
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %135

69:                                               ; preds = %13
  %70 = load i32, i32* %24, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %134

72:                                               ; preds = %69
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %25, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 8
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 3
  br i1 %90, label %91, label %114

91:                                               ; preds = %72
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %25, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %25, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  br label %133

114:                                              ; preds = %72
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  store i32 %120, i32* %123, align 4
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 8
  br label %133

133:                                              ; preds = %114, %91
  br label %134

134:                                              ; preds = %133, %69
  br label %163

135:                                              ; preds = %13
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 2
  store i32 %141, i32* %144, align 8
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 4
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 8
  br label %163

163:                                              ; preds = %135, %134
  %164 = load i32, i32* %23, align 4
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp sle i32 %164, %170
  br i1 %171, label %172, label %201

172:                                              ; preds = %163
  %173 = load i32, i32* %23, align 4
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = icmp sgt i32 %173, %179
  br i1 %180, label %181, label %201

181:                                              ; preds = %172
  %182 = load i32, i32* %24, align 4
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %182, %186
  br i1 %187, label %188, label %201

188:                                              ; preds = %181
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %188
  %195 = load i32, i32* %24, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %194, %188
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %199 = load i32, i32* %23, align 4
  %200 = call i32 @ff_hevc_split_transform_flag_decode(%struct.TYPE_25__* %198, i32 %199)
  store i32 %200, i32* %29, align 4
  br label %252

201:                                              ; preds = %194, %181, %172, %163
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %226

209:                                              ; preds = %201
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @MODE_INTER, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %226

216:                                              ; preds = %209
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @PART_2Nx2N, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %216
  %224 = load i32, i32* %24, align 4
  %225 = icmp eq i32 %224, 0
  br label %226

226:                                              ; preds = %223, %216, %209, %201
  %227 = phi i1 [ false, %216 ], [ false, %209 ], [ false, %201 ], [ %225, %223 ]
  %228 = zext i1 %227 to i32
  store i32 %228, i32* %33, align 4
  %229 = load i32, i32* %23, align 4
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = icmp sgt i32 %229, %235
  br i1 %236, label %249, label %237

237:                                              ; preds = %226
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 4
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %237
  %244 = load i32, i32* %24, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %243, %237
  %247 = load i32, i32* %33, align 4
  %248 = icmp ne i32 %247, 0
  br label %249

249:                                              ; preds = %246, %243, %226
  %250 = phi i1 [ true, %243 ], [ true, %226 ], [ %248, %246 ]
  %251 = zext i1 %250 to i32
  store i32 %251, i32* %29, align 4
  br label %252

252:                                              ; preds = %249, %197
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %334

260:                                              ; preds = %252
  %261 = load i32, i32* %23, align 4
  %262 = icmp sgt i32 %261, 2
  br i1 %262, label %271, label %263

263:                                              ; preds = %260
  %264 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %265 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = icmp eq i32 %269, 3
  br i1 %270, label %271, label %334

271:                                              ; preds = %263, %260
  %272 = load i32, i32* %24, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %278, label %274

274:                                              ; preds = %271
  %275 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 0
  %276 = load i32, i32* %275, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %302

278:                                              ; preds = %274, %271
  %279 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %280 = load i32, i32* %24, align 4
  %281 = call i32 @ff_hevc_cbf_cb_cr_decode(%struct.TYPE_25__* %279, i32 %280)
  %282 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 0
  store i32 %281, i32* %282, align 4
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = icmp eq i32 %288, 2
  br i1 %289, label %290, label %301

290:                                              ; preds = %278
  %291 = load i32, i32* %29, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %290
  %294 = load i32, i32* %23, align 4
  %295 = icmp eq i32 %294, 3
  br i1 %295, label %296, label %301

296:                                              ; preds = %293, %290
  %297 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %298 = load i32, i32* %24, align 4
  %299 = call i32 @ff_hevc_cbf_cb_cr_decode(%struct.TYPE_25__* %297, i32 %298)
  %300 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 1
  store i32 %299, i32* %300, align 4
  br label %301

301:                                              ; preds = %296, %293, %278
  br label %302

302:                                              ; preds = %301, %274
  %303 = load i32, i32* %24, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %309, label %305

305:                                              ; preds = %302
  %306 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 0
  %307 = load i32, i32* %306, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %333

309:                                              ; preds = %305, %302
  %310 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %311 = load i32, i32* %24, align 4
  %312 = call i32 @ff_hevc_cbf_cb_cr_decode(%struct.TYPE_25__* %310, i32 %311)
  %313 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 0
  store i32 %312, i32* %313, align 4
  %314 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %315 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = icmp eq i32 %319, 2
  br i1 %320, label %321, label %332

321:                                              ; preds = %309
  %322 = load i32, i32* %29, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %321
  %325 = load i32, i32* %23, align 4
  %326 = icmp eq i32 %325, 3
  br i1 %326, label %327, label %332

327:                                              ; preds = %324, %321
  %328 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %329 = load i32, i32* %24, align 4
  %330 = call i32 @ff_hevc_cbf_cb_cr_decode(%struct.TYPE_25__* %328, i32 %329)
  %331 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 1
  store i32 %330, i32* %331, align 4
  br label %332

332:                                              ; preds = %327, %324, %309
  br label %333

333:                                              ; preds = %332, %305
  br label %334

334:                                              ; preds = %333, %263, %252
  %335 = load i32, i32* %29, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %435

337:                                              ; preds = %334
  %338 = load i32, i32* %23, align 4
  %339 = sub nsw i32 %338, 1
  %340 = shl i32 1, %339
  store i32 %340, i32* %34, align 4
  %341 = load i32, i32* %16, align 4
  %342 = load i32, i32* %34, align 4
  %343 = add nsw i32 %341, %342
  store i32 %343, i32* %35, align 4
  %344 = load i32, i32* %17, align 4
  %345 = load i32, i32* %34, align 4
  %346 = add nsw i32 %344, %345
  store i32 %346, i32* %36, align 4
  br label %347

347:                                              ; preds = %337
  %348 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %349 = load i32, i32* %16, align 4
  %350 = load i32, i32* %17, align 4
  %351 = load i32, i32* %16, align 4
  %352 = load i32, i32* %17, align 4
  %353 = load i32, i32* %20, align 4
  %354 = load i32, i32* %21, align 4
  %355 = load i32, i32* %22, align 4
  %356 = load i32, i32* %23, align 4
  %357 = sub nsw i32 %356, 1
  %358 = load i32, i32* %24, align 4
  %359 = add nsw i32 %358, 1
  %360 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 0
  %361 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 0
  %362 = call i32 @hls_transform_tree(%struct.TYPE_25__* %348, i32 %349, i32 %350, i32 %351, i32 %352, i32 %353, i32 %354, i32 %355, i32 %357, i32 %359, i32 0, i32* %360, i32* %361)
  store i32 %362, i32* %32, align 4
  %363 = load i32, i32* %32, align 4
  %364 = icmp slt i32 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %347
  %366 = load i32, i32* %32, align 4
  store i32 %366, i32* %14, align 4
  br label %591

367:                                              ; preds = %347
  br label %368

368:                                              ; preds = %367
  br label %369

369:                                              ; preds = %368
  %370 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %371 = load i32, i32* %35, align 4
  %372 = load i32, i32* %17, align 4
  %373 = load i32, i32* %16, align 4
  %374 = load i32, i32* %17, align 4
  %375 = load i32, i32* %20, align 4
  %376 = load i32, i32* %21, align 4
  %377 = load i32, i32* %22, align 4
  %378 = load i32, i32* %23, align 4
  %379 = sub nsw i32 %378, 1
  %380 = load i32, i32* %24, align 4
  %381 = add nsw i32 %380, 1
  %382 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 0
  %383 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 0
  %384 = call i32 @hls_transform_tree(%struct.TYPE_25__* %370, i32 %371, i32 %372, i32 %373, i32 %374, i32 %375, i32 %376, i32 %377, i32 %379, i32 %381, i32 1, i32* %382, i32* %383)
  store i32 %384, i32* %32, align 4
  %385 = load i32, i32* %32, align 4
  %386 = icmp slt i32 %385, 0
  br i1 %386, label %387, label %389

387:                                              ; preds = %369
  %388 = load i32, i32* %32, align 4
  store i32 %388, i32* %14, align 4
  br label %591

389:                                              ; preds = %369
  br label %390

390:                                              ; preds = %389
  br label %391

391:                                              ; preds = %390
  %392 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %393 = load i32, i32* %16, align 4
  %394 = load i32, i32* %36, align 4
  %395 = load i32, i32* %16, align 4
  %396 = load i32, i32* %17, align 4
  %397 = load i32, i32* %20, align 4
  %398 = load i32, i32* %21, align 4
  %399 = load i32, i32* %22, align 4
  %400 = load i32, i32* %23, align 4
  %401 = sub nsw i32 %400, 1
  %402 = load i32, i32* %24, align 4
  %403 = add nsw i32 %402, 1
  %404 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 0
  %405 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 0
  %406 = call i32 @hls_transform_tree(%struct.TYPE_25__* %392, i32 %393, i32 %394, i32 %395, i32 %396, i32 %397, i32 %398, i32 %399, i32 %401, i32 %403, i32 2, i32* %404, i32* %405)
  store i32 %406, i32* %32, align 4
  %407 = load i32, i32* %32, align 4
  %408 = icmp slt i32 %407, 0
  br i1 %408, label %409, label %411

409:                                              ; preds = %391
  %410 = load i32, i32* %32, align 4
  store i32 %410, i32* %14, align 4
  br label %591

411:                                              ; preds = %391
  br label %412

412:                                              ; preds = %411
  br label %413

413:                                              ; preds = %412
  %414 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %415 = load i32, i32* %35, align 4
  %416 = load i32, i32* %36, align 4
  %417 = load i32, i32* %16, align 4
  %418 = load i32, i32* %17, align 4
  %419 = load i32, i32* %20, align 4
  %420 = load i32, i32* %21, align 4
  %421 = load i32, i32* %22, align 4
  %422 = load i32, i32* %23, align 4
  %423 = sub nsw i32 %422, 1
  %424 = load i32, i32* %24, align 4
  %425 = add nsw i32 %424, 1
  %426 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 0
  %427 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 0
  %428 = call i32 @hls_transform_tree(%struct.TYPE_25__* %414, i32 %415, i32 %416, i32 %417, i32 %418, i32 %419, i32 %420, i32 %421, i32 %423, i32 %425, i32 3, i32* %426, i32* %427)
  store i32 %428, i32* %32, align 4
  %429 = load i32, i32* %32, align 4
  %430 = icmp slt i32 %429, 0
  br i1 %430, label %431, label %433

431:                                              ; preds = %413
  %432 = load i32, i32* %32, align 4
  store i32 %432, i32* %14, align 4
  br label %591

433:                                              ; preds = %413
  br label %434

434:                                              ; preds = %433
  br label %590

435:                                              ; preds = %334
  %436 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %437 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %436, i32 0, i32 1
  %438 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %437, i32 0, i32 1
  %439 = load %struct.TYPE_21__*, %struct.TYPE_21__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %439, i32 0, i32 2
  %441 = load i32, i32* %440, align 8
  %442 = shl i32 1, %441
  store i32 %442, i32* %37, align 4
  %443 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %444 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %444, i32 0, i32 1
  %446 = load %struct.TYPE_21__*, %struct.TYPE_21__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %446, i32 0, i32 2
  %448 = load i32, i32* %447, align 8
  store i32 %448, i32* %38, align 4
  %449 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %450 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %450, i32 0, i32 1
  %452 = load %struct.TYPE_21__*, %struct.TYPE_21__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %452, i32 0, i32 4
  %454 = load i32, i32* %453, align 8
  store i32 %454, i32* %39, align 4
  store i32 1, i32* %40, align 4
  %455 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %456 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %455, i32 0, i32 0
  %457 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %456, i32 0, i32 1
  %458 = load i64, i64* %457, align 8
  %459 = load i64, i64* @MODE_INTRA, align 8
  %460 = icmp eq i64 %458, %459
  br i1 %460, label %488, label %461

461:                                              ; preds = %435
  %462 = load i32, i32* %24, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %488, label %464

464:                                              ; preds = %461
  %465 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 0
  %466 = load i32, i32* %465, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %488, label %468

468:                                              ; preds = %464
  %469 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 0
  %470 = load i32, i32* %469, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %488, label %472

472:                                              ; preds = %468
  %473 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %474 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %474, i32 0, i32 1
  %476 = load %struct.TYPE_21__*, %struct.TYPE_21__** %475, align 8
  %477 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = icmp eq i32 %478, 2
  br i1 %479, label %480, label %492

480:                                              ; preds = %472
  %481 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 1
  %482 = load i32, i32* %481, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %488, label %484

484:                                              ; preds = %480
  %485 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 1
  %486 = load i32, i32* %485, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %492

488:                                              ; preds = %484, %480, %468, %464, %461, %435
  %489 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %490 = load i32, i32* %24, align 4
  %491 = call i32 @ff_hevc_cbf_luma_decode(%struct.TYPE_25__* %489, i32 %490)
  store i32 %491, i32* %40, align 4
  br label %492

492:                                              ; preds = %488, %484, %472
  %493 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %494 = load i32, i32* %16, align 4
  %495 = load i32, i32* %17, align 4
  %496 = load i32, i32* %18, align 4
  %497 = load i32, i32* %19, align 4
  %498 = load i32, i32* %20, align 4
  %499 = load i32, i32* %21, align 4
  %500 = load i32, i32* %22, align 4
  %501 = load i32, i32* %23, align 4
  %502 = load i32, i32* %25, align 4
  %503 = load i32, i32* %40, align 4
  %504 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 0
  %505 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 0
  %506 = call i32 @hls_transform_unit(%struct.TYPE_25__* %493, i32 %494, i32 %495, i32 %496, i32 %497, i32 %498, i32 %499, i32 %500, i32 %501, i32 %502, i32 %503, i32* %504, i32* %505)
  store i32 %506, i32* %32, align 4
  %507 = load i32, i32* %32, align 4
  %508 = icmp slt i32 %507, 0
  br i1 %508, label %509, label %511

509:                                              ; preds = %492
  %510 = load i32, i32* %32, align 4
  store i32 %510, i32* %14, align 4
  br label %591

511:                                              ; preds = %492
  %512 = load i32, i32* %40, align 4
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %557

514:                                              ; preds = %511
  store i32 0, i32* %41, align 4
  br label %515

515:                                              ; preds = %552, %514
  %516 = load i32, i32* %41, align 4
  %517 = load i32, i32* %23, align 4
  %518 = shl i32 1, %517
  %519 = icmp slt i32 %516, %518
  br i1 %519, label %520, label %556

520:                                              ; preds = %515
  store i32 0, i32* %42, align 4
  br label %521

521:                                              ; preds = %547, %520
  %522 = load i32, i32* %42, align 4
  %523 = load i32, i32* %23, align 4
  %524 = shl i32 1, %523
  %525 = icmp slt i32 %522, %524
  br i1 %525, label %526, label %551

526:                                              ; preds = %521
  %527 = load i32, i32* %16, align 4
  %528 = load i32, i32* %42, align 4
  %529 = add nsw i32 %527, %528
  %530 = load i32, i32* %38, align 4
  %531 = ashr i32 %529, %530
  store i32 %531, i32* %43, align 4
  %532 = load i32, i32* %17, align 4
  %533 = load i32, i32* %41, align 4
  %534 = add nsw i32 %532, %533
  %535 = load i32, i32* %38, align 4
  %536 = ashr i32 %534, %535
  store i32 %536, i32* %44, align 4
  %537 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %538 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %537, i32 0, i32 0
  %539 = load i32*, i32** %538, align 8
  %540 = load i32, i32* %44, align 4
  %541 = load i32, i32* %39, align 4
  %542 = mul nsw i32 %540, %541
  %543 = load i32, i32* %43, align 4
  %544 = add nsw i32 %542, %543
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i32, i32* %539, i64 %545
  store i32 1, i32* %546, align 4
  br label %547

547:                                              ; preds = %526
  %548 = load i32, i32* %37, align 4
  %549 = load i32, i32* %42, align 4
  %550 = add nsw i32 %549, %548
  store i32 %550, i32* %42, align 4
  br label %521

551:                                              ; preds = %521
  br label %552

552:                                              ; preds = %551
  %553 = load i32, i32* %37, align 4
  %554 = load i32, i32* %41, align 4
  %555 = add nsw i32 %554, %553
  store i32 %555, i32* %41, align 4
  br label %515

556:                                              ; preds = %515
  br label %557

557:                                              ; preds = %556, %511
  %558 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %559 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %558, i32 0, i32 2
  %560 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 8
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %589, label %563

563:                                              ; preds = %557
  %564 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %565 = load i32, i32* %16, align 4
  %566 = load i32, i32* %17, align 4
  %567 = load i32, i32* %23, align 4
  %568 = call i32 @ff_hevc_deblocking_boundary_strengths(%struct.TYPE_25__* %564, i32 %565, i32 %566, i32 %567)
  %569 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %570 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %569, i32 0, i32 1
  %571 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %570, i32 0, i32 0
  %572 = load %struct.TYPE_18__*, %struct.TYPE_18__** %571, align 8
  %573 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %572, i32 0, i32 0
  %574 = load i64, i64* %573, align 8
  %575 = icmp ne i64 %574, 0
  br i1 %575, label %576, label %588

576:                                              ; preds = %563
  %577 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %578 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %577, i32 0, i32 0
  %579 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %578, i32 0, i32 3
  %580 = load i64, i64* %579, align 8
  %581 = icmp ne i64 %580, 0
  br i1 %581, label %582, label %588

582:                                              ; preds = %576
  %583 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %584 = load i32, i32* %16, align 4
  %585 = load i32, i32* %17, align 4
  %586 = load i32, i32* %23, align 4
  %587 = call i32 @set_deblocking_bypass(%struct.TYPE_25__* %583, i32 %584, i32 %585, i32 %586)
  br label %588

588:                                              ; preds = %582, %576, %563
  br label %589

589:                                              ; preds = %588, %557
  br label %590

590:                                              ; preds = %589, %434
  store i32 0, i32* %14, align 4
  br label %591

591:                                              ; preds = %590, %509, %431, %409, %387, %365
  %592 = load i32, i32* %14, align 4
  ret i32 %592
}

declare dso_local i32 @ff_hevc_split_transform_flag_decode(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ff_hevc_cbf_cb_cr_decode(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ff_hevc_cbf_luma_decode(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @hls_transform_unit(%struct.TYPE_25__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ff_hevc_deblocking_boundary_strengths(%struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local i32 @set_deblocking_bypass(%struct.TYPE_25__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
