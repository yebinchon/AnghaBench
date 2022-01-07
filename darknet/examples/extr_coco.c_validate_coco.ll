; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_coco.c_validate_coco.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_coco.c_validate_coco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { double, double, double, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { float*, i32, i32 }
%struct.TYPE_15__ = type { i8*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Learning Rate: %g, Momentum: %g, Decay: %g\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"results/\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"data/coco_val_5k.list\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%s/coco_results.json\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"[\0A\00", align 1
@IMAGE_DATA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"\0A]\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Total Detection Time: %f Seconds\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @validate_coco(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_17__, align 4
  %10 = alloca i32, align 4
  %11 = alloca [1024 x i8], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_18__*, align 8
  %21 = alloca %struct.TYPE_18__*, align 8
  %22 = alloca %struct.TYPE_18__*, align 8
  %23 = alloca %struct.TYPE_18__*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_15__, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca float*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call %struct.TYPE_14__* @load_network(i8* %34, i8* %35, i32 0)
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %5, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = call i32 @set_batch_network(%struct.TYPE_14__* %37, i32 1)
  %39 = load i32, i32* @stderr, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load double, double* %41, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load double, double* %44, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  %48 = load double, double* %47, align 8
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), double %42, double %45, double %48)
  %50 = call i64 @time(i32 0)
  %51 = call i32 @srand(i64 %50)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %52 = call %struct.TYPE_16__* @get_paths(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_16__* %52, %struct.TYPE_16__** %7, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %54 = call i64 @list_to_array(%struct.TYPE_16__* %53)
  %55 = inttoptr i64 %54 to i8**
  store i8** %55, i8*** %8, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 6
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %57, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i64 %63
  %65 = bitcast %struct.TYPE_17__* %9 to i8*
  %66 = bitcast %struct.TYPE_17__* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 12, i1 false)
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %10, align 4
  %69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @snprintf(i8* %69, i32 1024, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %73 = call i32* @fopen(i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %73, i32** %12, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = ptrtoint i32* %74 to i32
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store float 0x3F847AE140000000, float* %16, align 4
  store i32 1, i32* %17, align 4
  store float 5.000000e-01, float* %18, align 4
  store i32 8, i32* %19, align 4
  %80 = load i32, i32* %19, align 4
  %81 = call i8* @calloc(i32 %80, i32 16)
  %82 = bitcast i8* %81 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %82, %struct.TYPE_18__** %20, align 8
  %83 = load i32, i32* %19, align 4
  %84 = call i8* @calloc(i32 %83, i32 16)
  %85 = bitcast i8* %84 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %85, %struct.TYPE_18__** %21, align 8
  %86 = load i32, i32* %19, align 4
  %87 = call i8* @calloc(i32 %86, i32 16)
  %88 = bitcast i8* %87 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %88, %struct.TYPE_18__** %22, align 8
  %89 = load i32, i32* %19, align 4
  %90 = call i8* @calloc(i32 %89, i32 16)
  %91 = bitcast i8* %90 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %91, %struct.TYPE_18__** %23, align 8
  %92 = load i32, i32* %19, align 4
  %93 = call i8* @calloc(i32 %92, i32 4)
  %94 = bitcast i8* %93 to i32*
  store i32* %94, i32** %24, align 8
  %95 = bitcast %struct.TYPE_15__* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %95, i8 0, i64 40, i1 false)
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 5
  store i32 %98, i32* %99, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 4
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* @IMAGE_DATA, align 4
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 3
  store i32 %104, i32* %105, align 8
  store i32 0, i32* %15, align 4
  br label %106

106:                                              ; preds = %134, %2
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %19, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %137

110:                                              ; preds = %106
  %111 = load i8**, i8*** %8, align 8
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %111, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  store i8* %117, i8** %118, align 8
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  store %struct.TYPE_18__* %122, %struct.TYPE_18__** %123, align 8
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  store %struct.TYPE_18__* %127, %struct.TYPE_18__** %128, align 8
  %129 = call i32 @load_data_in_thread(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %25)
  %130 = load i32*, i32** %24, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %129, i32* %133, align 4
  br label %134

134:                                              ; preds = %110
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %15, align 4
  br label %106

137:                                              ; preds = %106
  %138 = call i64 @time(i32 0)
  store i64 %138, i64* %26, align 8
  %139 = load i32, i32* %19, align 4
  store i32 %139, i32* %14, align 4
  br label %140

140:                                              ; preds = %345, %137
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %19, align 4
  %144 = add nsw i32 %142, %143
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %349

146:                                              ; preds = %140
  %147 = load i32, i32* @stderr, align 4
  %148 = load i32, i32* %14, align 4
  %149 = call i32 (i32, i8*, ...) @fprintf(i32 %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %148)
  store i32 0, i32* %15, align 4
  br label %150

150:                                              ; preds = %191, %146
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %19, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %150
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %155, %156
  %158 = load i32, i32* %19, align 4
  %159 = sub nsw i32 %157, %158
  %160 = load i32, i32* %13, align 4
  %161 = icmp slt i32 %159, %160
  br label %162

162:                                              ; preds = %154, %150
  %163 = phi i1 [ false, %150 ], [ %161, %154 ]
  br i1 %163, label %164, label %194

164:                                              ; preds = %162
  %165 = load i32*, i32** %24, align 8
  %166 = load i32, i32* %15, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @pthread_join(i32 %169, i32 0)
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %172 = load i32, i32* %15, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i64 %173
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %176 = load i32, i32* %15, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i64 %177
  %179 = bitcast %struct.TYPE_18__* %174 to i8*
  %180 = bitcast %struct.TYPE_18__* %178 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %179, i8* align 8 %180, i64 16, i1 false)
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %182 = load i32, i32* %15, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i64 %183
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %186 = load i32, i32* %15, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i64 %187
  %189 = bitcast %struct.TYPE_18__* %184 to i8*
  %190 = bitcast %struct.TYPE_18__* %188 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %189, i8* align 8 %190, i64 16, i1 false)
  br label %191

191:                                              ; preds = %164
  %192 = load i32, i32* %15, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %15, align 4
  br label %150

194:                                              ; preds = %162
  store i32 0, i32* %15, align 4
  br label %195

195:                                              ; preds = %231, %194
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* %19, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %195
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %200, %201
  %203 = load i32, i32* %13, align 4
  %204 = icmp slt i32 %202, %203
  br label %205

205:                                              ; preds = %199, %195
  %206 = phi i1 [ false, %195 ], [ %204, %199 ]
  br i1 %206, label %207, label %234

207:                                              ; preds = %205
  %208 = load i8**, i8*** %8, align 8
  %209 = load i32, i32* %14, align 4
  %210 = load i32, i32* %15, align 4
  %211 = add nsw i32 %209, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8*, i8** %208, i64 %212
  %214 = load i8*, i8** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  store i8* %214, i8** %215, align 8
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %217 = load i32, i32* %15, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  store %struct.TYPE_18__* %219, %struct.TYPE_18__** %220, align 8
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %222 = load i32, i32* %15, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  store %struct.TYPE_18__* %224, %struct.TYPE_18__** %225, align 8
  %226 = call i32 @load_data_in_thread(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %25)
  %227 = load i32*, i32** %24, align 8
  %228 = load i32, i32* %15, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  store i32 %226, i32* %230, align 4
  br label %231

231:                                              ; preds = %207
  %232 = load i32, i32* %15, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %15, align 4
  br label %195

234:                                              ; preds = %205
  store i32 0, i32* %15, align 4
  br label %235

235:                                              ; preds = %341, %234
  %236 = load i32, i32* %15, align 4
  %237 = load i32, i32* %19, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %247

239:                                              ; preds = %235
  %240 = load i32, i32* %14, align 4
  %241 = load i32, i32* %15, align 4
  %242 = add nsw i32 %240, %241
  %243 = load i32, i32* %19, align 4
  %244 = sub nsw i32 %242, %243
  %245 = load i32, i32* %13, align 4
  %246 = icmp slt i32 %244, %245
  br label %247

247:                                              ; preds = %239, %235
  %248 = phi i1 [ false, %235 ], [ %246, %239 ]
  br i1 %248, label %249, label %344

249:                                              ; preds = %247
  %250 = load i8**, i8*** %8, align 8
  %251 = load i32, i32* %14, align 4
  %252 = load i32, i32* %15, align 4
  %253 = add nsw i32 %251, %252
  %254 = load i32, i32* %19, align 4
  %255 = sub nsw i32 %253, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8*, i8** %250, i64 %256
  %258 = load i8*, i8** %257, align 8
  store i8* %258, i8** %27, align 8
  %259 = load i8*, i8** %27, align 8
  %260 = call i32 @get_coco_image_id(i8* %259)
  store i32 %260, i32* %28, align 4
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %262 = load i32, i32* %15, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 0
  %266 = load float*, float** %265, align 8
  store float* %266, float** %29, align 8
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %268 = load float*, float** %29, align 8
  %269 = call i32 @network_predict(%struct.TYPE_14__* %267, float* %268)
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %271 = load i32, i32* %15, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  store i32 %275, i32* %30, align 4
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %277 = load i32, i32* %15, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  store i32 %281, i32* %31, align 4
  store i32 0, i32* %32, align 4
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %283 = load i32, i32* %30, align 4
  %284 = load i32, i32* %31, align 4
  %285 = load float, float* %16, align 4
  %286 = call i32* @get_network_boxes(%struct.TYPE_14__* %282, i32 %283, i32 %284, float %285, i32 0, i32 0, i32 0, i32* %32)
  store i32* %286, i32** %33, align 8
  %287 = load i32, i32* %17, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %302

289:                                              ; preds = %249
  %290 = load i32*, i32** %33, align 8
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = mul nsw i32 %292, %294
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = mul nsw i32 %295, %297
  %299 = load i32, i32* %10, align 4
  %300 = load float, float* %18, align 4
  %301 = call i32 @do_nms_sort(i32* %290, i32 %298, i32 %299, float %300)
  br label %302

302:                                              ; preds = %289, %249
  %303 = load i32*, i32** %12, align 8
  %304 = load i32, i32* %28, align 4
  %305 = load i32*, i32** %33, align 8
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = mul nsw i32 %307, %309
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = mul nsw i32 %310, %312
  %314 = load i32, i32* %10, align 4
  %315 = load i32, i32* %30, align 4
  %316 = load i32, i32* %31, align 4
  %317 = call i32 @print_cocos(i32* %303, i32 %304, i32* %305, i32 %313, i32 %314, i32 %315, i32 %316)
  %318 = load i32*, i32** %33, align 8
  %319 = load i32, i32* %32, align 4
  %320 = call i32 @free_detections(i32* %318, i32 %319)
  %321 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %322 = load i32, i32* %15, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %321, i64 %323
  %325 = bitcast %struct.TYPE_18__* %324 to { float*, i64 }*
  %326 = getelementptr inbounds { float*, i64 }, { float*, i64 }* %325, i32 0, i32 0
  %327 = load float*, float** %326, align 8
  %328 = getelementptr inbounds { float*, i64 }, { float*, i64 }* %325, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = call i32 @free_image(float* %327, i64 %329)
  %331 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %332 = load i32, i32* %15, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %331, i64 %333
  %335 = bitcast %struct.TYPE_18__* %334 to { float*, i64 }*
  %336 = getelementptr inbounds { float*, i64 }, { float*, i64 }* %335, i32 0, i32 0
  %337 = load float*, float** %336, align 8
  %338 = getelementptr inbounds { float*, i64 }, { float*, i64 }* %335, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = call i32 @free_image(float* %337, i64 %339)
  br label %341

341:                                              ; preds = %302
  %342 = load i32, i32* %15, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %15, align 4
  br label %235

344:                                              ; preds = %247
  br label %345

345:                                              ; preds = %344
  %346 = load i32, i32* %19, align 4
  %347 = load i32, i32* %14, align 4
  %348 = add nsw i32 %347, %346
  store i32 %348, i32* %14, align 4
  br label %140

349:                                              ; preds = %140
  %350 = load i32*, i32** %12, align 8
  %351 = load i32, i32* @SEEK_CUR, align 4
  %352 = call i32 @fseek(i32* %350, i32 -2, i32 %351)
  %353 = load i32*, i32** %12, align 8
  %354 = ptrtoint i32* %353 to i32
  %355 = call i32 (i32, i8*, ...) @fprintf(i32 %354, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %356 = load i32*, i32** %12, align 8
  %357 = call i32 @fclose(i32* %356)
  %358 = load i32, i32* @stderr, align 4
  %359 = call i64 @time(i32 0)
  %360 = load i64, i64* %26, align 8
  %361 = sub nsw i64 %359, %360
  %362 = sitofp i64 %361 to double
  %363 = call i32 (i32, i8*, ...) @fprintf(i32 %358, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), double %362)
  ret void
}

declare dso_local %struct.TYPE_14__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @set_batch_network(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @srand(i64) #1

declare dso_local i64 @time(i32) #1

declare dso_local %struct.TYPE_16__* @get_paths(i8*) #1

declare dso_local i64 @list_to_array(%struct.TYPE_16__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @load_data_in_thread(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8) #1

declare dso_local i32 @pthread_join(i32, i32) #1

declare dso_local i32 @get_coco_image_id(i8*) #1

declare dso_local i32 @network_predict(%struct.TYPE_14__*, float*) #1

declare dso_local i32* @get_network_boxes(%struct.TYPE_14__*, i32, i32, float, i32, i32, i32, i32*) #1

declare dso_local i32 @do_nms_sort(i32*, i32, i32, float) #1

declare dso_local i32 @print_cocos(i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @free_detections(i32*, i32) #1

declare dso_local i32 @free_image(float*, i64) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
