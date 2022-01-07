; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_classifier.c_validate_classifier_10.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_classifier.c_validate_classifier_10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"labels\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"data/labels.list\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"data/train.list\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"%d: top 1: %f, top %d: %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @validate_classifier_10(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_20__, align 4
  %28 = alloca [10 x %struct.TYPE_20__], align 16
  %29 = alloca %struct.TYPE_20__, align 4
  %30 = alloca %struct.TYPE_20__, align 4
  %31 = alloca %struct.TYPE_20__, align 4
  %32 = alloca %struct.TYPE_20__, align 4
  %33 = alloca %struct.TYPE_20__, align 4
  %34 = alloca %struct.TYPE_20__, align 4
  %35 = alloca %struct.TYPE_20__, align 4
  %36 = alloca %struct.TYPE_20__, align 4
  %37 = alloca %struct.TYPE_20__, align 4
  %38 = alloca %struct.TYPE_20__, align 4
  %39 = alloca float*, align 8
  %40 = alloca float*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call %struct.TYPE_18__* @load_network(i8* %41, i8* %42, i32 0)
  store %struct.TYPE_18__* %43, %struct.TYPE_18__** %9, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %45 = call i32 @set_batch_network(%struct.TYPE_18__* %44, i32 1)
  %46 = call i32 @time(i32 0)
  %47 = call i32 @srand(i32 %46)
  %48 = load i8*, i8** %4, align 8
  %49 = call %struct.TYPE_19__* @read_data_cfg(i8* %48)
  store %struct.TYPE_19__* %49, %struct.TYPE_19__** %10, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %51 = call i8* @option_find_str(%struct.TYPE_19__* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i8* %51, i8** %11, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %53 = call i8* @option_find_str(%struct.TYPE_19__* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i8* %53, i8** %12, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %55 = call i32 @option_find_int(%struct.TYPE_19__* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 2)
  store i32 %55, i32* %13, align 4
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %57 = call i32 @option_find_int(%struct.TYPE_19__* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 1)
  store i32 %57, i32* %14, align 4
  %58 = load i8*, i8** %11, align 8
  %59 = call i8** @get_labels(i8* %58)
  store i8** %59, i8*** %15, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = call %struct.TYPE_19__* @get_paths(i8* %60)
  store %struct.TYPE_19__* %61, %struct.TYPE_19__** %16, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %63 = call i64 @list_to_array(%struct.TYPE_19__* %62)
  %64 = inttoptr i64 %63 to i8**
  store i8** %64, i8*** %17, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %18, align 4
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %69 = call i32 @free_list(%struct.TYPE_19__* %68)
  store float 0.000000e+00, float* %19, align 4
  store float 0.000000e+00, float* %20, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i8* @calloc(i32 %70, i32 4)
  %72 = bitcast i8* %71 to i32*
  store i32* %72, i32** %21, align 8
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %333, %3
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %18, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %336

77:                                               ; preds = %73
  store i32 -1, i32* %22, align 4
  %78 = load i8**, i8*** %17, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %23, align 8
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %99, %77
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %83
  %88 = load i8*, i8** %23, align 8
  %89 = load i8**, i8*** %15, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @strstr(i8* %88, i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %22, align 4
  br label %102

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %83

102:                                              ; preds = %96, %83
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %24, align 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %25, align 4
  store i32 32, i32* %26, align 4
  %109 = load i8**, i8*** %17, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* %24, align 4
  %115 = load i32, i32* %26, align 4
  %116 = add nsw i32 %114, %115
  %117 = load i32, i32* %25, align 4
  %118 = load i32, i32* %26, align 4
  %119 = add nsw i32 %117, %118
  %120 = call i32 @load_image_color(i8* %113, i32 %116, i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  store i32 %120, i32* %121, align 4
  %122 = getelementptr inbounds [10 x %struct.TYPE_20__], [10 x %struct.TYPE_20__]* %28, i64 0, i64 0
  %123 = load i32, i32* %26, align 4
  %124 = sub nsw i32 0, %123
  %125 = load i32, i32* %26, align 4
  %126 = sub nsw i32 0, %125
  %127 = load i32, i32* %24, align 4
  %128 = load i32, i32* %25, align 4
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @crop_image(i32 %130, i32 %124, i32 %126, i32 %127, i32 %128)
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  store i32 %131, i32* %132, align 4
  %133 = bitcast %struct.TYPE_20__* %122 to i8*
  %134 = bitcast %struct.TYPE_20__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %133, i8* align 4 %134, i64 4, i1 false)
  %135 = getelementptr inbounds [10 x %struct.TYPE_20__], [10 x %struct.TYPE_20__]* %28, i64 0, i64 1
  %136 = load i32, i32* %26, align 4
  %137 = load i32, i32* %26, align 4
  %138 = sub nsw i32 0, %137
  %139 = load i32, i32* %24, align 4
  %140 = load i32, i32* %25, align 4
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @crop_image(i32 %142, i32 %136, i32 %138, i32 %139, i32 %140)
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  store i32 %143, i32* %144, align 4
  %145 = bitcast %struct.TYPE_20__* %135 to i8*
  %146 = bitcast %struct.TYPE_20__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %145, i8* align 4 %146, i64 4, i1 false)
  %147 = getelementptr inbounds [10 x %struct.TYPE_20__], [10 x %struct.TYPE_20__]* %28, i64 0, i64 2
  %148 = load i32, i32* %24, align 4
  %149 = load i32, i32* %25, align 4
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @crop_image(i32 %151, i32 0, i32 0, i32 %148, i32 %149)
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  store i32 %152, i32* %153, align 4
  %154 = bitcast %struct.TYPE_20__* %147 to i8*
  %155 = bitcast %struct.TYPE_20__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %154, i8* align 4 %155, i64 4, i1 false)
  %156 = getelementptr inbounds [10 x %struct.TYPE_20__], [10 x %struct.TYPE_20__]* %28, i64 0, i64 3
  %157 = load i32, i32* %26, align 4
  %158 = sub nsw i32 0, %157
  %159 = load i32, i32* %26, align 4
  %160 = load i32, i32* %24, align 4
  %161 = load i32, i32* %25, align 4
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @crop_image(i32 %163, i32 %158, i32 %159, i32 %160, i32 %161)
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  store i32 %164, i32* %165, align 4
  %166 = bitcast %struct.TYPE_20__* %156 to i8*
  %167 = bitcast %struct.TYPE_20__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %166, i8* align 4 %167, i64 4, i1 false)
  %168 = getelementptr inbounds [10 x %struct.TYPE_20__], [10 x %struct.TYPE_20__]* %28, i64 0, i64 4
  %169 = load i32, i32* %26, align 4
  %170 = load i32, i32* %26, align 4
  %171 = load i32, i32* %24, align 4
  %172 = load i32, i32* %25, align 4
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @crop_image(i32 %174, i32 %169, i32 %170, i32 %171, i32 %172)
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  store i32 %175, i32* %176, align 4
  %177 = bitcast %struct.TYPE_20__* %168 to i8*
  %178 = bitcast %struct.TYPE_20__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %177, i8* align 4 %178, i64 4, i1 false)
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @flip_image(i32 %180)
  %182 = getelementptr inbounds [10 x %struct.TYPE_20__], [10 x %struct.TYPE_20__]* %28, i64 0, i64 5
  %183 = load i32, i32* %26, align 4
  %184 = sub nsw i32 0, %183
  %185 = load i32, i32* %26, align 4
  %186 = sub nsw i32 0, %185
  %187 = load i32, i32* %24, align 4
  %188 = load i32, i32* %25, align 4
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @crop_image(i32 %190, i32 %184, i32 %186, i32 %187, i32 %188)
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  store i32 %191, i32* %192, align 4
  %193 = bitcast %struct.TYPE_20__* %182 to i8*
  %194 = bitcast %struct.TYPE_20__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %193, i8* align 4 %194, i64 4, i1 false)
  %195 = getelementptr inbounds [10 x %struct.TYPE_20__], [10 x %struct.TYPE_20__]* %28, i64 0, i64 6
  %196 = load i32, i32* %26, align 4
  %197 = load i32, i32* %26, align 4
  %198 = sub nsw i32 0, %197
  %199 = load i32, i32* %24, align 4
  %200 = load i32, i32* %25, align 4
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @crop_image(i32 %202, i32 %196, i32 %198, i32 %199, i32 %200)
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  store i32 %203, i32* %204, align 4
  %205 = bitcast %struct.TYPE_20__* %195 to i8*
  %206 = bitcast %struct.TYPE_20__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %205, i8* align 4 %206, i64 4, i1 false)
  %207 = getelementptr inbounds [10 x %struct.TYPE_20__], [10 x %struct.TYPE_20__]* %28, i64 0, i64 7
  %208 = load i32, i32* %24, align 4
  %209 = load i32, i32* %25, align 4
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @crop_image(i32 %211, i32 0, i32 0, i32 %208, i32 %209)
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  store i32 %212, i32* %213, align 4
  %214 = bitcast %struct.TYPE_20__* %207 to i8*
  %215 = bitcast %struct.TYPE_20__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %214, i8* align 4 %215, i64 4, i1 false)
  %216 = getelementptr inbounds [10 x %struct.TYPE_20__], [10 x %struct.TYPE_20__]* %28, i64 0, i64 8
  %217 = load i32, i32* %26, align 4
  %218 = sub nsw i32 0, %217
  %219 = load i32, i32* %26, align 4
  %220 = load i32, i32* %24, align 4
  %221 = load i32, i32* %25, align 4
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @crop_image(i32 %223, i32 %218, i32 %219, i32 %220, i32 %221)
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  store i32 %224, i32* %225, align 4
  %226 = bitcast %struct.TYPE_20__* %216 to i8*
  %227 = bitcast %struct.TYPE_20__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %226, i8* align 4 %227, i64 4, i1 false)
  %228 = getelementptr inbounds [10 x %struct.TYPE_20__], [10 x %struct.TYPE_20__]* %28, i64 0, i64 9
  %229 = load i32, i32* %26, align 4
  %230 = load i32, i32* %26, align 4
  %231 = load i32, i32* %24, align 4
  %232 = load i32, i32* %25, align 4
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @crop_image(i32 %234, i32 %229, i32 %230, i32 %231, i32 %232)
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  store i32 %235, i32* %236, align 4
  %237 = bitcast %struct.TYPE_20__* %228 to i8*
  %238 = bitcast %struct.TYPE_20__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %237, i8* align 4 %238, i64 4, i1 false)
  %239 = load i32, i32* %13, align 4
  %240 = call i8* @calloc(i32 %239, i32 4)
  %241 = bitcast i8* %240 to float*
  store float* %241, float** %39, align 8
  store i32 0, i32* %8, align 4
  br label %242

242:                                              ; preds = %277, %102
  %243 = load i32, i32* %8, align 4
  %244 = icmp slt i32 %243, 10
  br i1 %244, label %245, label %280

245:                                              ; preds = %242
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %247 = load i32, i32* %8, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [10 x %struct.TYPE_20__], [10 x %struct.TYPE_20__]* %28, i64 0, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call float* @network_predict(%struct.TYPE_18__* %246, i32 %251)
  store float* %252, float** %40, align 8
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %266

257:                                              ; preds = %245
  %258 = load float*, float** %40, align 8
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @hierarchy_predictions(float* %258, i32 %261, i32 %264, i32 1, i32 1)
  br label %266

266:                                              ; preds = %257, %245
  %267 = load i32, i32* %13, align 4
  %268 = load float*, float** %40, align 8
  %269 = load float*, float** %39, align 8
  %270 = call i32 @axpy_cpu(i32 %267, i32 1, float* %268, i32 1, float* %269, i32 1)
  %271 = load i32, i32* %8, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [10 x %struct.TYPE_20__], [10 x %struct.TYPE_20__]* %28, i64 0, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @free_image(i32 %275)
  br label %277

277:                                              ; preds = %266
  %278 = load i32, i32* %8, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %8, align 4
  br label %242

280:                                              ; preds = %242
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @free_image(i32 %282)
  %284 = load float*, float** %39, align 8
  %285 = load i32, i32* %13, align 4
  %286 = load i32, i32* %14, align 4
  %287 = load i32*, i32** %21, align 8
  %288 = call i32 @top_k(float* %284, i32 %285, i32 %286, i32* %287)
  %289 = load float*, float** %39, align 8
  %290 = call i32 @free(float* %289)
  %291 = load i32*, i32** %21, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* %22, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %299

296:                                              ; preds = %280
  %297 = load float, float* %19, align 4
  %298 = fadd float %297, 1.000000e+00
  store float %298, float* %19, align 4
  br label %299

299:                                              ; preds = %296, %280
  store i32 0, i32* %8, align 4
  br label %300

300:                                              ; preds = %316, %299
  %301 = load i32, i32* %8, align 4
  %302 = load i32, i32* %14, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %319

304:                                              ; preds = %300
  %305 = load i32*, i32** %21, align 8
  %306 = load i32, i32* %8, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %22, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %315

312:                                              ; preds = %304
  %313 = load float, float* %20, align 4
  %314 = fadd float %313, 1.000000e+00
  store float %314, float* %20, align 4
  br label %315

315:                                              ; preds = %312, %304
  br label %316

316:                                              ; preds = %315
  %317 = load i32, i32* %8, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %8, align 4
  br label %300

319:                                              ; preds = %300
  %320 = load i32, i32* %7, align 4
  %321 = load float, float* %19, align 4
  %322 = load i32, i32* %7, align 4
  %323 = add nsw i32 %322, 1
  %324 = sitofp i32 %323 to float
  %325 = fdiv float %321, %324
  %326 = load i32, i32* %14, align 4
  %327 = load float, float* %20, align 4
  %328 = load i32, i32* %7, align 4
  %329 = add nsw i32 %328, 1
  %330 = sitofp i32 %329 to float
  %331 = fdiv float %327, %330
  %332 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %320, float %325, i32 %326, float %331)
  br label %333

333:                                              ; preds = %319
  %334 = load i32, i32* %7, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %7, align 4
  br label %73

336:                                              ; preds = %73
  ret void
}

declare dso_local %struct.TYPE_18__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @set_batch_network(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local %struct.TYPE_19__* @read_data_cfg(i8*) #1

declare dso_local i8* @option_find_str(%struct.TYPE_19__*, i8*, i8*) #1

declare dso_local i32 @option_find_int(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local i8** @get_labels(i8*) #1

declare dso_local %struct.TYPE_19__* @get_paths(i8*) #1

declare dso_local i64 @list_to_array(%struct.TYPE_19__*) #1

declare dso_local i32 @free_list(%struct.TYPE_19__*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @load_image_color(i8*, i32, i32) #1

declare dso_local i32 @crop_image(i32, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @flip_image(i32) #1

declare dso_local float* @network_predict(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @hierarchy_predictions(float*, i32, i32, i32, i32) #1

declare dso_local i32 @axpy_cpu(i32, i32, float*, i32, float*, i32) #1

declare dso_local i32 @free_image(i32) #1

declare dso_local i32 @top_k(float*, i32, i32, i32*) #1

declare dso_local i32 @free(float*) #1

declare dso_local i32 @printf(i8*, i32, float, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
