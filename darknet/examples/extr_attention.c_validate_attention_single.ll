; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_attention.c_validate_attention_single.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_attention.c_validate_attention_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"labels\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"data/labels.list\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"leaves\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"data/train.list\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%.2f \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"crop\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"%d %d %d %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"tile\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"%d: top 1: %f, top %d: %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @validate_attention_single(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca float*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca %struct.TYPE_24__, align 8
  %31 = alloca %struct.TYPE_24__, align 8
  %32 = alloca %struct.TYPE_24__, align 8
  %33 = alloca %struct.TYPE_24__, align 8
  %34 = alloca float*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca %struct.TYPE_24__, align 8
  %41 = alloca float*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call %struct.TYPE_22__* @load_network(i8* %42, i8* %43, i32 0)
  store %struct.TYPE_22__* %44, %struct.TYPE_22__** %9, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %46 = call i32 @set_batch_network(%struct.TYPE_22__* %45, i32 1)
  %47 = call i32 @time(i32 0)
  %48 = call i32 @srand(i32 %47)
  %49 = load i8*, i8** %4, align 8
  %50 = call %struct.TYPE_23__* @read_data_cfg(i8* %49)
  store %struct.TYPE_23__* %50, %struct.TYPE_23__** %10, align 8
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %52 = call i8* @option_find_str(%struct.TYPE_23__* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i8* %52, i8** %11, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %54 = call i8* @option_find_str(%struct.TYPE_23__* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* null)
  store i8* %54, i8** %12, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %3
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 @change_leaves(i32 %60, i8* %61)
  br label %63

63:                                               ; preds = %57, %3
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %65 = call i8* @option_find_str(%struct.TYPE_23__* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i8* %65, i8** %13, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %67 = call i32 @option_find_int(%struct.TYPE_23__* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 2)
  store i32 %67, i32* %14, align 4
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %69 = call i32 @option_find_int(%struct.TYPE_23__* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 1)
  store i32 %69, i32* %15, align 4
  %70 = load i8*, i8** %11, align 8
  %71 = call i8** @get_labels(i8* %70)
  store i8** %71, i8*** %16, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = call %struct.TYPE_23__* @get_paths(i8* %72)
  store %struct.TYPE_23__* %73, %struct.TYPE_23__** %17, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %75 = call i64 @list_to_array(%struct.TYPE_23__* %74)
  %76 = inttoptr i64 %75 to i8**
  store i8** %76, i8*** %18, align 8
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %19, align 4
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %81 = call i32 @free_list(%struct.TYPE_23__* %80)
  store float 0.000000e+00, float* %20, align 4
  store float 0.000000e+00, float* %21, align 4
  %82 = load i32, i32* %15, align 4
  %83 = call i8* @calloc(i32 %82, i32 4)
  %84 = bitcast i8* %83 to i32*
  store i32* %84, i32** %22, align 8
  store i32 4, i32* %23, align 4
  store i32 2, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %85 = load i32, i32* %14, align 4
  %86 = call i8* @calloc(i32 %85, i32 4)
  %87 = bitcast i8* %86 to float*
  store float* %87, float** %26, align 8
  %88 = load i32, i32* %23, align 4
  %89 = load i32, i32* %23, align 4
  %90 = mul nsw i32 %88, %89
  %91 = call i8* @calloc(i32 %90, i32 4)
  %92 = bitcast i8* %91 to i32*
  store i32* %92, i32** %27, align 8
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %462, %63
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %19, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %465

97:                                               ; preds = %93
  store i32 -1, i32* %28, align 4
  %98 = load i8**, i8*** %18, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %29, align 8
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %119, %97
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %103
  %108 = load i8*, i8** %29, align 8
  %109 = load i8**, i8*** %16, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @strstr(i8* %108, i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %28, align 4
  br label %122

118:                                              ; preds = %107
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %103

122:                                              ; preds = %116, %103
  %123 = load i8**, i8*** %18, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = call { i64, i64 } @load_image_color(i8* %127, i32 0, i32 0)
  %129 = bitcast %struct.TYPE_24__* %30 to { i64, i64 }*
  %130 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %129, i32 0, i32 0
  %131 = extractvalue { i64, i64 } %128, 0
  store i64 %131, i64* %130, align 8
  %132 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %129, i32 0, i32 1
  %133 = extractvalue { i64, i64 } %128, 1
  store i64 %133, i64* %132, align 8
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %23, align 4
  %138 = mul nsw i32 %136, %137
  %139 = load i32, i32* %24, align 4
  %140 = sdiv i32 %138, %139
  %141 = bitcast %struct.TYPE_24__* %30 to { i64, i64 }*
  %142 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %141, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = call { i64, i64 } @resize_min(i64 %143, i64 %145, i32 %140)
  %147 = bitcast %struct.TYPE_24__* %31 to { i64, i64 }*
  %148 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %147, i32 0, i32 0
  %149 = extractvalue { i64, i64 } %146, 0
  store i64 %149, i64* %148, align 8
  %150 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %147, i32 0, i32 1
  %151 = extractvalue { i64, i64 } %146, 1
  store i64 %151, i64* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %23, align 4
  %158 = mul nsw i32 %156, %157
  %159 = load i32, i32* %24, align 4
  %160 = sdiv i32 %158, %159
  %161 = sub nsw i32 %153, %160
  %162 = sdiv i32 %161, 2
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %23, align 4
  %169 = mul nsw i32 %167, %168
  %170 = load i32, i32* %24, align 4
  %171 = sdiv i32 %169, %170
  %172 = sub nsw i32 %164, %171
  %173 = sdiv i32 %172, 2
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %23, align 4
  %178 = mul nsw i32 %176, %177
  %179 = load i32, i32* %24, align 4
  %180 = sdiv i32 %178, %179
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %23, align 4
  %185 = mul nsw i32 %183, %184
  %186 = load i32, i32* %24, align 4
  %187 = sdiv i32 %185, %186
  %188 = bitcast %struct.TYPE_24__* %31 to { i64, i64 }*
  %189 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %188, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = call { i64, i64 } @crop_image(i64 %190, i64 %192, i32 %162, i32 %173, i32 %180, i32 %187)
  %194 = bitcast %struct.TYPE_24__* %32 to { i64, i64 }*
  %195 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %194, i32 0, i32 0
  %196 = extractvalue { i64, i64 } %193, 0
  store i64 %196, i64* %195, align 8
  %197 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %194, i32 0, i32 1
  %198 = extractvalue { i64, i64 } %193, 1
  store i64 %198, i64* %197, align 8
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = bitcast %struct.TYPE_24__* %32 to { i64, i64 }*
  %206 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %205, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = call { i64, i64 } @resize_image(i64 %207, i64 %209, i32 %201, i32 %204)
  %211 = bitcast %struct.TYPE_24__* %33 to { i64, i64 }*
  %212 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %211, i32 0, i32 0
  %213 = extractvalue { i64, i64 } %210, 0
  store i64 %213, i64* %212, align 8
  %214 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %211, i32 0, i32 1
  %215 = extractvalue { i64, i64 } %210, 1
  store i64 %215, i64* %214, align 8
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = call float* @network_predict(%struct.TYPE_22__* %216, i64 %218)
  store float* %219, float** %34, align 8
  store i32 0, i32* %8, align 4
  br label %220

220:                                              ; preds = %244, %122
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* %23, align 4
  %223 = load i32, i32* %23, align 4
  %224 = mul nsw i32 %222, %223
  %225 = icmp slt i32 %221, %224
  br i1 %225, label %226, label %247

226:                                              ; preds = %220
  %227 = load float*, float** %34, align 8
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* %8, align 4
  %230 = add nsw i32 %228, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds float, float* %227, i64 %231
  %233 = load float, float* %232, align 4
  %234 = fpext float %233 to double
  %235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double %234)
  %236 = load i32, i32* %8, align 4
  %237 = add nsw i32 %236, 1
  %238 = load i32, i32* %23, align 4
  %239 = srem i32 %237, %238
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %226
  %242 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %243

243:                                              ; preds = %241, %226
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %8, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %8, align 4
  br label %220

247:                                              ; preds = %220
  %248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %249 = load i32, i32* %14, align 4
  %250 = load float*, float** %34, align 8
  %251 = load float*, float** %26, align 8
  %252 = call i32 @copy_cpu(i32 %249, float* %250, i32 1, float* %251, i32 1)
  %253 = load float*, float** %34, align 8
  %254 = load i32, i32* %14, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds float, float* %253, i64 %255
  %257 = load i32, i32* %23, align 4
  %258 = load i32, i32* %23, align 4
  %259 = mul nsw i32 %257, %258
  %260 = load i32, i32* %23, align 4
  %261 = load i32, i32* %23, align 4
  %262 = mul nsw i32 %260, %261
  %263 = load i32*, i32** %27, align 8
  %264 = call i32 @top_k(float* %256, i32 %259, i32 %262, i32* %263)
  %265 = bitcast %struct.TYPE_24__* %32 to { i64, i64 }*
  %266 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %265, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = call i32 @show_image(i64 %267, i64 %269, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %271

271:                                              ; preds = %357, %247
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* %25, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %360

275:                                              ; preds = %271
  %276 = load i32*, i32** %27, align 8
  %277 = load i32, i32* %8, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  store i32 %280, i32* %35, align 4
  %281 = load i32, i32* %35, align 4
  %282 = load i32, i32* %23, align 4
  %283 = sdiv i32 %281, %282
  store i32 %283, i32* %36, align 4
  %284 = load i32, i32* %35, align 4
  %285 = load i32, i32* %23, align 4
  %286 = srem i32 %284, %285
  store i32 %286, i32* %37, align 4
  %287 = load i32, i32* %36, align 4
  %288 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = mul nsw i32 %287, %289
  %291 = load i32, i32* %23, align 4
  %292 = sdiv i32 %290, %291
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %23, align 4
  %299 = sdiv i32 %297, %298
  %300 = sub nsw i32 %295, %299
  %301 = sdiv i32 %300, 2
  %302 = sub nsw i32 %292, %301
  store i32 %302, i32* %38, align 4
  %303 = load i32, i32* %37, align 4
  %304 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = mul nsw i32 %303, %305
  %307 = load i32, i32* %23, align 4
  %308 = sdiv i32 %306, %307
  %309 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %310 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* %23, align 4
  %315 = sdiv i32 %313, %314
  %316 = sub nsw i32 %311, %315
  %317 = sdiv i32 %316, 2
  %318 = sub nsw i32 %308, %317
  store i32 %318, i32* %39, align 4
  %319 = load i32, i32* %36, align 4
  %320 = load i32, i32* %37, align 4
  %321 = load i32, i32* %38, align 4
  %322 = load i32, i32* %39, align 4
  %323 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %319, i32 %320, i32 %321, i32 %322)
  %324 = load i32, i32* %39, align 4
  %325 = load i32, i32* %38, align 4
  %326 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %327 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %330 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = bitcast %struct.TYPE_24__* %32 to { i64, i64 }*
  %333 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %332, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = call { i64, i64 } @crop_image(i64 %334, i64 %336, i32 %324, i32 %325, i32 %328, i32 %331)
  %338 = bitcast %struct.TYPE_24__* %40 to { i64, i64 }*
  %339 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %338, i32 0, i32 0
  %340 = extractvalue { i64, i64 } %337, 0
  store i64 %340, i64* %339, align 8
  %341 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %338, i32 0, i32 1
  %342 = extractvalue { i64, i64 } %337, 1
  store i64 %342, i64* %341, align 8
  %343 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %344 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 2
  %345 = load i64, i64* %344, align 8
  %346 = call float* @network_predict(%struct.TYPE_22__* %343, i64 %345)
  store float* %346, float** %41, align 8
  %347 = load i32, i32* %14, align 4
  %348 = load float*, float** %41, align 8
  %349 = load float*, float** %26, align 8
  %350 = call i32 @axpy_cpu(i32 %347, i32 1, float* %348, i32 1, float* %349, i32 1)
  %351 = bitcast %struct.TYPE_24__* %40 to { i64, i64 }*
  %352 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %351, i32 0, i32 1
  %355 = load i64, i64* %354, align 8
  %356 = call i32 @show_image(i64 %353, i64 %355, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %357

357:                                              ; preds = %275
  %358 = load i32, i32* %8, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %8, align 4
  br label %271

360:                                              ; preds = %271
  %361 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %362 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %374

365:                                              ; preds = %360
  %366 = load float*, float** %34, align 8
  %367 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %368 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %371 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @hierarchy_predictions(float* %366, i32 %369, i32 %372, i32 1, i32 1)
  br label %374

374:                                              ; preds = %365, %360
  %375 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 2
  %376 = load i64, i64* %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 2
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %376, %378
  br i1 %379, label %380, label %387

380:                                              ; preds = %374
  %381 = bitcast %struct.TYPE_24__* %33 to { i64, i64 }*
  %382 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %381, i32 0, i32 1
  %385 = load i64, i64* %384, align 8
  %386 = call i32 @free_image(i64 %383, i64 %385)
  br label %387

387:                                              ; preds = %380, %374
  %388 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 2
  %389 = load i64, i64* %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 2
  %391 = load i64, i64* %390, align 8
  %392 = icmp ne i64 %389, %391
  br i1 %392, label %393, label %400

393:                                              ; preds = %387
  %394 = bitcast %struct.TYPE_24__* %31 to { i64, i64 }*
  %395 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %394, i32 0, i32 1
  %398 = load i64, i64* %397, align 8
  %399 = call i32 @free_image(i64 %396, i64 %398)
  br label %400

400:                                              ; preds = %393, %387
  %401 = bitcast %struct.TYPE_24__* %30 to { i64, i64 }*
  %402 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %401, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %401, i32 0, i32 1
  %405 = load i64, i64* %404, align 8
  %406 = call i32 @free_image(i64 %403, i64 %405)
  %407 = bitcast %struct.TYPE_24__* %32 to { i64, i64 }*
  %408 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %407, i32 0, i32 1
  %411 = load i64, i64* %410, align 8
  %412 = call i32 @free_image(i64 %409, i64 %411)
  %413 = load float*, float** %34, align 8
  %414 = load i32, i32* %14, align 4
  %415 = load i32, i32* %15, align 4
  %416 = load i32*, i32** %22, align 8
  %417 = call i32 @top_k(float* %413, i32 %414, i32 %415, i32* %416)
  %418 = load i32*, i32** %22, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 0
  %420 = load i32, i32* %419, align 4
  %421 = load i32, i32* %28, align 4
  %422 = icmp eq i32 %420, %421
  br i1 %422, label %423, label %426

423:                                              ; preds = %400
  %424 = load float, float* %20, align 4
  %425 = fadd float %424, 1.000000e+00
  store float %425, float* %20, align 4
  br label %426

426:                                              ; preds = %423, %400
  store i32 0, i32* %8, align 4
  br label %427

427:                                              ; preds = %443, %426
  %428 = load i32, i32* %8, align 4
  %429 = load i32, i32* %15, align 4
  %430 = icmp slt i32 %428, %429
  br i1 %430, label %431, label %446

431:                                              ; preds = %427
  %432 = load i32*, i32** %22, align 8
  %433 = load i32, i32* %8, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %432, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* %28, align 4
  %438 = icmp eq i32 %436, %437
  br i1 %438, label %439, label %442

439:                                              ; preds = %431
  %440 = load float, float* %21, align 4
  %441 = fadd float %440, 1.000000e+00
  store float %441, float* %21, align 4
  br label %442

442:                                              ; preds = %439, %431
  br label %443

443:                                              ; preds = %442
  %444 = load i32, i32* %8, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %8, align 4
  br label %427

446:                                              ; preds = %427
  %447 = load i32, i32* %7, align 4
  %448 = load float, float* %20, align 4
  %449 = load i32, i32* %7, align 4
  %450 = add nsw i32 %449, 1
  %451 = sitofp i32 %450 to float
  %452 = fdiv float %448, %451
  %453 = fpext float %452 to double
  %454 = load i32, i32* %15, align 4
  %455 = load float, float* %21, align 4
  %456 = load i32, i32* %7, align 4
  %457 = add nsw i32 %456, 1
  %458 = sitofp i32 %457 to float
  %459 = fdiv float %455, %458
  %460 = fpext float %459 to double
  %461 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %447, double %453, i32 %454, double %460)
  br label %462

462:                                              ; preds = %446
  %463 = load i32, i32* %7, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %7, align 4
  br label %93

465:                                              ; preds = %93
  ret void
}

declare dso_local %struct.TYPE_22__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @set_batch_network(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local %struct.TYPE_23__* @read_data_cfg(i8*) #1

declare dso_local i8* @option_find_str(%struct.TYPE_23__*, i8*, i8*) #1

declare dso_local i32 @change_leaves(i32, i8*) #1

declare dso_local i32 @option_find_int(%struct.TYPE_23__*, i8*, i32) #1

declare dso_local i8** @get_labels(i8*) #1

declare dso_local %struct.TYPE_23__* @get_paths(i8*) #1

declare dso_local i64 @list_to_array(%struct.TYPE_23__*) #1

declare dso_local i32 @free_list(%struct.TYPE_23__*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local { i64, i64 } @load_image_color(i8*, i32, i32) #1

declare dso_local { i64, i64 } @resize_min(i64, i64, i32) #1

declare dso_local { i64, i64 } @crop_image(i64, i64, i32, i32, i32, i32) #1

declare dso_local { i64, i64 } @resize_image(i64, i64, i32, i32) #1

declare dso_local float* @network_predict(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @copy_cpu(i32, float*, i32, float*, i32) #1

declare dso_local i32 @top_k(float*, i32, i32, i32*) #1

declare dso_local i32 @show_image(i64, i64, i8*) #1

declare dso_local i32 @axpy_cpu(i32, i32, float*, i32, float*, i32) #1

declare dso_local i32 @hierarchy_predictions(float*, i32, i32, i32, i32) #1

declare dso_local i32 @free_image(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
