; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_detector.c_validate_detector_flip.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_detector.c_validate_detector_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { double, double, double, i32, i32, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i64 }
%struct.TYPE_19__ = type { i32, i32, i8*, %struct.TYPE_22__*, %struct.TYPE_22__*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"data/train.list\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"data/names.list\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"results\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"Learning Rate: %g, Momentum: %g, Decay: %g\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"eval\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"voc\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"coco\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"coco_results\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"%s/%s.json\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"[\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"imagenet\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"imagenet-detection\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"%s/%s.txt\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"comp4_det_test_\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"%s/%s%s.txt\00", align 1
@LETTERBOX_DATA = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [4 x i8] c"\0A]\0A\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"Total Detection Time: %f Seconds\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @validate_detector_flip(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca %struct.TYPE_20__*, align 8
  %19 = alloca i8**, align 8
  %20 = alloca %struct.TYPE_21__, align 4
  %21 = alloca i32, align 4
  %22 = alloca [1024 x i8], align 16
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32**, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_22__*, align 8
  %35 = alloca %struct.TYPE_22__*, align 8
  %36 = alloca %struct.TYPE_22__*, align 8
  %37 = alloca %struct.TYPE_22__*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca %struct.TYPE_22__, align 8
  %40 = alloca %struct.TYPE_19__, align 8
  %41 = alloca double, align 8
  %42 = alloca i8*, align 8
  %43 = alloca i8*, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call %struct.TYPE_20__* @read_data_cfg(i8* %48)
  store %struct.TYPE_20__* %49, %struct.TYPE_20__** %10, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %51 = call i8* @option_find_str(%struct.TYPE_20__* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %51, i8** %11, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %53 = call i8* @option_find_str(%struct.TYPE_20__* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i8* %53, i8** %12, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %55 = call i8* @option_find_str(%struct.TYPE_20__* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* %55, i8** %13, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = call i8** @get_labels(i8* %56)
  store i8** %57, i8*** %14, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %59 = call i8* @option_find_str(%struct.TYPE_20__* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* null)
  store i8* %59, i8** %15, align 8
  store i32* null, i32** %16, align 8
  %60 = load i8*, i8** %15, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %4
  %63 = load i8*, i8** %15, align 8
  %64 = call i32* @read_map(i8* %63)
  store i32* %64, i32** %16, align 8
  br label %65

65:                                               ; preds = %62, %4
  %66 = load i8*, i8** %6, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call %struct.TYPE_18__* @load_network(i8* %66, i8* %67, i32 0)
  store %struct.TYPE_18__* %68, %struct.TYPE_18__** %17, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %70 = call i32 @set_batch_network(%struct.TYPE_18__* %69, i32 2)
  %71 = load i32, i32* @stderr, align 4
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load double, double* %73, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = load double, double* %76, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 2
  %80 = load double, double* %79, align 8
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), double %74, double %77, double %80)
  %82 = call i32 @time(i32 0)
  %83 = call i32 @srand(i32 %82)
  %84 = load i8*, i8** %11, align 8
  %85 = call %struct.TYPE_20__* @get_paths(i8* %84)
  store %struct.TYPE_20__* %85, %struct.TYPE_20__** %18, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %87 = call i64 @list_to_array(%struct.TYPE_20__* %86)
  %88 = inttoptr i64 %87 to i8**
  store i8** %88, i8*** %19, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 7
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %90, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i64 %96
  %98 = bitcast %struct.TYPE_21__* %20 to i8*
  %99 = bitcast %struct.TYPE_21__* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 4 %99, i64 4, i1 false)
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %21, align 4
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %103 = call i8* @option_find_str(%struct.TYPE_20__* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  store i8* %103, i8** %23, align 8
  store i32* null, i32** %24, align 8
  store i32** null, i32*** %25, align 8
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %104 = load i8*, i8** %23, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %106 = icmp eq i64 0, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %65
  %108 = load i8*, i8** %8, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %8, align 8
  br label %111

111:                                              ; preds = %110, %107
  %112 = getelementptr inbounds [1024 x i8], [1024 x i8]* %22, i64 0, i64 0
  %113 = load i8*, i8** %13, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %112, i32 1024, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* %113, i8* %114)
  %116 = getelementptr inbounds [1024 x i8], [1024 x i8]* %22, i64 0, i64 0
  %117 = call i32* @fopen(i8* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i32* %117, i32** %24, align 8
  %118 = load i32*, i32** %24, align 8
  %119 = ptrtoint i32* %118 to i32
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  store i32 1, i32* %26, align 4
  br label %169

121:                                              ; preds = %65
  %122 = load i8*, i8** %23, align 8
  %123 = call i64 @strcmp(i8* %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %124 = icmp eq i64 0, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %121
  %126 = load i8*, i8** %8, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %125
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i8** %8, align 8
  br label %129

129:                                              ; preds = %128, %125
  %130 = getelementptr inbounds [1024 x i8], [1024 x i8]* %22, i64 0, i64 0
  %131 = load i8*, i8** %13, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %130, i32 1024, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* %131, i8* %132)
  %134 = getelementptr inbounds [1024 x i8], [1024 x i8]* %22, i64 0, i64 0
  %135 = call i32* @fopen(i8* %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i32* %135, i32** %24, align 8
  store i32 1, i32* %27, align 4
  store i32 200, i32* %21, align 4
  br label %168

136:                                              ; preds = %121
  %137 = load i8*, i8** %8, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %136
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8** %8, align 8
  br label %140

140:                                              ; preds = %139, %136
  %141 = load i32, i32* %21, align 4
  %142 = call i8* @calloc(i32 %141, i32 8)
  %143 = bitcast i8* %142 to i32**
  store i32** %143, i32*** %25, align 8
  store i32 0, i32* %9, align 4
  br label %144

144:                                              ; preds = %164, %140
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %21, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %167

148:                                              ; preds = %144
  %149 = getelementptr inbounds [1024 x i8], [1024 x i8]* %22, i64 0, i64 0
  %150 = load i8*, i8** %13, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = load i8**, i8*** %14, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %152, i64 %154
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %149, i32 1024, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* %150, i8* %151, i8* %156)
  %158 = getelementptr inbounds [1024 x i8], [1024 x i8]* %22, i64 0, i64 0
  %159 = call i32* @fopen(i8* %158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %160 = load i32**, i32*** %25, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32*, i32** %160, i64 %162
  store i32* %159, i32** %163, align 8
  br label %164

164:                                              ; preds = %148
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %9, align 4
  br label %144

167:                                              ; preds = %144
  br label %168

168:                                              ; preds = %167, %129
  br label %169

169:                                              ; preds = %168, %111
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store float 0x3F747AE140000000, float* %31, align 4
  store float 0x3FDCCCCCC0000000, float* %32, align 4
  store i32 4, i32* %33, align 4
  %173 = load i32, i32* %33, align 4
  %174 = call i8* @calloc(i32 %173, i32 16)
  %175 = bitcast i8* %174 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %175, %struct.TYPE_22__** %34, align 8
  %176 = load i32, i32* %33, align 4
  %177 = call i8* @calloc(i32 %176, i32 16)
  %178 = bitcast i8* %177 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %178, %struct.TYPE_22__** %35, align 8
  %179 = load i32, i32* %33, align 4
  %180 = call i8* @calloc(i32 %179, i32 16)
  %181 = bitcast i8* %180 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %181, %struct.TYPE_22__** %36, align 8
  %182 = load i32, i32* %33, align 4
  %183 = call i8* @calloc(i32 %182, i32 16)
  %184 = bitcast i8* %183 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %184, %struct.TYPE_22__** %37, align 8
  %185 = load i32, i32* %33, align 4
  %186 = call i8* @calloc(i32 %185, i32 4)
  %187 = bitcast i8* %186 to i32*
  store i32* %187, i32** %38, align 8
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 4
  %197 = mul nsw i32 %196, 2
  %198 = call { i64, i64 } @make_image(i32 %190, i32 %193, i32 %197)
  %199 = bitcast %struct.TYPE_22__* %39 to { i64, i64 }*
  %200 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %199, i32 0, i32 0
  %201 = extractvalue { i64, i64 } %198, 0
  store i64 %201, i64* %200, align 8
  %202 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %199, i32 0, i32 1
  %203 = extractvalue { i64, i64 } %198, 1
  store i64 %203, i64* %202, align 8
  %204 = bitcast %struct.TYPE_19__* %40 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %204, i8 0, i64 40, i1 false)
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  store i32 %207, i32* %208, align 8
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  store i32 %211, i32* %212, align 4
  %213 = load i32, i32* @LETTERBOX_DATA, align 4
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 5
  store i32 %213, i32* %214, align 8
  store i32 0, i32* %30, align 4
  br label %215

215:                                              ; preds = %243, %169
  %216 = load i32, i32* %30, align 4
  %217 = load i32, i32* %33, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %246

219:                                              ; preds = %215
  %220 = load i8**, i8*** %19, align 8
  %221 = load i32, i32* %29, align 4
  %222 = load i32, i32* %30, align 4
  %223 = add nsw i32 %221, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8*, i8** %220, i64 %224
  %226 = load i8*, i8** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 2
  store i8* %226, i8** %227, align 8
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  %229 = load i32, i32* %30, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 4
  store %struct.TYPE_22__* %231, %struct.TYPE_22__** %232, align 8
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %37, align 8
  %234 = load i32, i32* %30, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 3
  store %struct.TYPE_22__* %236, %struct.TYPE_22__** %237, align 8
  %238 = call i32 @load_data_in_thread(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %40)
  %239 = load i32*, i32** %38, align 8
  %240 = load i32, i32* %30, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  store i32 %238, i32* %242, align 4
  br label %243

243:                                              ; preds = %219
  %244 = load i32, i32* %30, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %30, align 4
  br label %215

246:                                              ; preds = %215
  %247 = call double (...) @what_time_is_it_now()
  store double %247, double* %41, align 8
  %248 = load i32, i32* %33, align 4
  store i32 %248, i32* %29, align 4
  br label %249

249:                                              ; preds = %532, %246
  %250 = load i32, i32* %29, align 4
  %251 = load i32, i32* %28, align 4
  %252 = load i32, i32* %33, align 4
  %253 = add nsw i32 %251, %252
  %254 = icmp slt i32 %250, %253
  br i1 %254, label %255, label %536

255:                                              ; preds = %249
  %256 = load i32, i32* @stderr, align 4
  %257 = load i32, i32* %29, align 4
  %258 = call i32 (i32, i8*, ...) @fprintf(i32 %256, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 %257)
  store i32 0, i32* %30, align 4
  br label %259

259:                                              ; preds = %300, %255
  %260 = load i32, i32* %30, align 4
  %261 = load i32, i32* %33, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %271

263:                                              ; preds = %259
  %264 = load i32, i32* %29, align 4
  %265 = load i32, i32* %30, align 4
  %266 = add nsw i32 %264, %265
  %267 = load i32, i32* %33, align 4
  %268 = sub nsw i32 %266, %267
  %269 = load i32, i32* %28, align 4
  %270 = icmp slt i32 %268, %269
  br label %271

271:                                              ; preds = %263, %259
  %272 = phi i1 [ false, %259 ], [ %270, %263 ]
  br i1 %272, label %273, label %303

273:                                              ; preds = %271
  %274 = load i32*, i32** %38, align 8
  %275 = load i32, i32* %30, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @pthread_join(i32 %278, i32 0)
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %281 = load i32, i32* %30, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i64 %282
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  %285 = load i32, i32* %30, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i64 %286
  %288 = bitcast %struct.TYPE_22__* %283 to i8*
  %289 = bitcast %struct.TYPE_22__* %287 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %288, i8* align 8 %289, i64 16, i1 false)
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %35, align 8
  %291 = load i32, i32* %30, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i64 %292
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %37, align 8
  %295 = load i32, i32* %30, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %294, i64 %296
  %298 = bitcast %struct.TYPE_22__* %293 to i8*
  %299 = bitcast %struct.TYPE_22__* %297 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %298, i8* align 8 %299, i64 16, i1 false)
  br label %300

300:                                              ; preds = %273
  %301 = load i32, i32* %30, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %30, align 4
  br label %259

303:                                              ; preds = %271
  store i32 0, i32* %30, align 4
  br label %304

304:                                              ; preds = %340, %303
  %305 = load i32, i32* %30, align 4
  %306 = load i32, i32* %33, align 4
  %307 = icmp slt i32 %305, %306
  br i1 %307, label %308, label %314

308:                                              ; preds = %304
  %309 = load i32, i32* %29, align 4
  %310 = load i32, i32* %30, align 4
  %311 = add nsw i32 %309, %310
  %312 = load i32, i32* %28, align 4
  %313 = icmp slt i32 %311, %312
  br label %314

314:                                              ; preds = %308, %304
  %315 = phi i1 [ false, %304 ], [ %313, %308 ]
  br i1 %315, label %316, label %343

316:                                              ; preds = %314
  %317 = load i8**, i8*** %19, align 8
  %318 = load i32, i32* %29, align 4
  %319 = load i32, i32* %30, align 4
  %320 = add nsw i32 %318, %319
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8*, i8** %317, i64 %321
  %323 = load i8*, i8** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 2
  store i8* %323, i8** %324, align 8
  %325 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  %326 = load i32, i32* %30, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 4
  store %struct.TYPE_22__* %328, %struct.TYPE_22__** %329, align 8
  %330 = load %struct.TYPE_22__*, %struct.TYPE_22__** %37, align 8
  %331 = load i32, i32* %30, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 3
  store %struct.TYPE_22__* %333, %struct.TYPE_22__** %334, align 8
  %335 = call i32 @load_data_in_thread(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %40)
  %336 = load i32*, i32** %38, align 8
  %337 = load i32, i32* %30, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  store i32 %335, i32* %339, align 4
  br label %340

340:                                              ; preds = %316
  %341 = load i32, i32* %30, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %30, align 4
  br label %304

343:                                              ; preds = %314
  store i32 0, i32* %30, align 4
  br label %344

344:                                              ; preds = %528, %343
  %345 = load i32, i32* %30, align 4
  %346 = load i32, i32* %33, align 4
  %347 = icmp slt i32 %345, %346
  br i1 %347, label %348, label %356

348:                                              ; preds = %344
  %349 = load i32, i32* %29, align 4
  %350 = load i32, i32* %30, align 4
  %351 = add nsw i32 %349, %350
  %352 = load i32, i32* %33, align 4
  %353 = sub nsw i32 %351, %352
  %354 = load i32, i32* %28, align 4
  %355 = icmp slt i32 %353, %354
  br label %356

356:                                              ; preds = %348, %344
  %357 = phi i1 [ false, %344 ], [ %355, %348 ]
  br i1 %357, label %358, label %531

358:                                              ; preds = %356
  %359 = load i8**, i8*** %19, align 8
  %360 = load i32, i32* %29, align 4
  %361 = load i32, i32* %30, align 4
  %362 = add nsw i32 %360, %361
  %363 = load i32, i32* %33, align 4
  %364 = sub nsw i32 %362, %363
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i8*, i8** %359, i64 %365
  %367 = load i8*, i8** %366, align 8
  store i8* %367, i8** %42, align 8
  %368 = load i8*, i8** %42, align 8
  %369 = call i8* @basecfg(i8* %368)
  store i8* %369, i8** %43, align 8
  %370 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %371 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %370, i32 0, i32 4
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %374 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %373, i32 0, i32 5
  %375 = load i32, i32* %374, align 8
  %376 = mul nsw i32 %372, %375
  %377 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %378 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %377, i32 0, i32 6
  %379 = load i32, i32* %378, align 4
  %380 = mul nsw i32 %376, %379
  %381 = load %struct.TYPE_22__*, %struct.TYPE_22__** %35, align 8
  %382 = load i32, i32* %30, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %381, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %384, i32 0, i32 2
  %386 = load i64, i64* %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 2
  %388 = load i64, i64* %387, align 8
  %389 = call i32 @copy_cpu(i32 %380, i64 %386, i32 1, i64 %388, i32 1)
  %390 = load %struct.TYPE_22__*, %struct.TYPE_22__** %35, align 8
  %391 = load i32, i32* %30, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %390, i64 %392
  %394 = bitcast %struct.TYPE_22__* %393 to { i64, i64 }*
  %395 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %394, i32 0, i32 1
  %398 = load i64, i64* %397, align 8
  %399 = call i32 @flip_image(i64 %396, i64 %398)
  %400 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %401 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %400, i32 0, i32 4
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %404 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %403, i32 0, i32 5
  %405 = load i32, i32* %404, align 8
  %406 = mul nsw i32 %402, %405
  %407 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %408 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %407, i32 0, i32 6
  %409 = load i32, i32* %408, align 4
  %410 = mul nsw i32 %406, %409
  %411 = load %struct.TYPE_22__*, %struct.TYPE_22__** %35, align 8
  %412 = load i32, i32* %30, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %411, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %414, i32 0, i32 2
  %416 = load i64, i64* %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 2
  %418 = load i64, i64* %417, align 8
  %419 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %420 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %419, i32 0, i32 4
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %423 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %422, i32 0, i32 5
  %424 = load i32, i32* %423, align 8
  %425 = mul nsw i32 %421, %424
  %426 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %427 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %426, i32 0, i32 6
  %428 = load i32, i32* %427, align 4
  %429 = mul nsw i32 %425, %428
  %430 = sext i32 %429 to i64
  %431 = add nsw i64 %418, %430
  %432 = call i32 @copy_cpu(i32 %410, i64 %416, i32 1, i64 %431, i32 1)
  %433 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %434 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 2
  %435 = load i64, i64* %434, align 8
  %436 = call i32 @network_predict(%struct.TYPE_18__* %433, i64 %435)
  %437 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %438 = load i32, i32* %30, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %437, i64 %439
  %441 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  store i32 %442, i32* %44, align 4
  %443 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %444 = load i32, i32* %30, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %443, i64 %445
  %447 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 4
  store i32 %448, i32* %45, align 4
  store i32 0, i32* %46, align 4
  %449 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %450 = load i32, i32* %44, align 4
  %451 = load i32, i32* %45, align 4
  %452 = load float, float* %31, align 4
  %453 = load i32*, i32** %16, align 8
  %454 = call i32* @get_network_boxes(%struct.TYPE_18__* %449, i32 %450, i32 %451, float %452, double 5.000000e-01, i32* %453, i32 0, i32* %46)
  store i32* %454, i32** %47, align 8
  %455 = load float, float* %32, align 4
  %456 = fcmp une float %455, 0.000000e+00
  br i1 %456, label %457, label %463

457:                                              ; preds = %358
  %458 = load i32*, i32** %47, align 8
  %459 = load i32, i32* %46, align 4
  %460 = load i32, i32* %21, align 4
  %461 = load float, float* %32, align 4
  %462 = call i32 @do_nms_sort(i32* %458, i32 %459, i32 %460, float %461)
  br label %463

463:                                              ; preds = %457, %358
  %464 = load i32, i32* %26, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %475

466:                                              ; preds = %463
  %467 = load i32*, i32** %24, align 8
  %468 = load i8*, i8** %42, align 8
  %469 = load i32*, i32** %47, align 8
  %470 = load i32, i32* %46, align 4
  %471 = load i32, i32* %21, align 4
  %472 = load i32, i32* %44, align 4
  %473 = load i32, i32* %45, align 4
  %474 = call i32 @print_cocos(i32* %467, i8* %468, i32* %469, i32 %470, i32 %471, i32 %472, i32 %473)
  br label %502

475:                                              ; preds = %463
  %476 = load i32, i32* %27, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %492

478:                                              ; preds = %475
  %479 = load i32*, i32** %24, align 8
  %480 = load i32, i32* %29, align 4
  %481 = load i32, i32* %30, align 4
  %482 = add nsw i32 %480, %481
  %483 = load i32, i32* %33, align 4
  %484 = sub nsw i32 %482, %483
  %485 = add nsw i32 %484, 1
  %486 = load i32*, i32** %47, align 8
  %487 = load i32, i32* %46, align 4
  %488 = load i32, i32* %21, align 4
  %489 = load i32, i32* %44, align 4
  %490 = load i32, i32* %45, align 4
  %491 = call i32 @print_imagenet_detections(i32* %479, i32 %485, i32* %486, i32 %487, i32 %488, i32 %489, i32 %490)
  br label %501

492:                                              ; preds = %475
  %493 = load i32**, i32*** %25, align 8
  %494 = load i8*, i8** %43, align 8
  %495 = load i32*, i32** %47, align 8
  %496 = load i32, i32* %46, align 4
  %497 = load i32, i32* %21, align 4
  %498 = load i32, i32* %44, align 4
  %499 = load i32, i32* %45, align 4
  %500 = call i32 @print_detector_detections(i32** %493, i8* %494, i32* %495, i32 %496, i32 %497, i32 %498, i32 %499)
  br label %501

501:                                              ; preds = %492, %478
  br label %502

502:                                              ; preds = %501, %466
  %503 = load i32*, i32** %47, align 8
  %504 = load i32, i32* %46, align 4
  %505 = call i32 @free_detections(i32* %503, i32 %504)
  %506 = load i8*, i8** %43, align 8
  %507 = call i32 @free(i8* %506)
  %508 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %509 = load i32, i32* %30, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %508, i64 %510
  %512 = bitcast %struct.TYPE_22__* %511 to { i64, i64 }*
  %513 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %512, i32 0, i32 0
  %514 = load i64, i64* %513, align 8
  %515 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %512, i32 0, i32 1
  %516 = load i64, i64* %515, align 8
  %517 = call i32 @free_image(i64 %514, i64 %516)
  %518 = load %struct.TYPE_22__*, %struct.TYPE_22__** %35, align 8
  %519 = load i32, i32* %30, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %518, i64 %520
  %522 = bitcast %struct.TYPE_22__* %521 to { i64, i64 }*
  %523 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %522, i32 0, i32 0
  %524 = load i64, i64* %523, align 8
  %525 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %522, i32 0, i32 1
  %526 = load i64, i64* %525, align 8
  %527 = call i32 @free_image(i64 %524, i64 %526)
  br label %528

528:                                              ; preds = %502
  %529 = load i32, i32* %30, align 4
  %530 = add nsw i32 %529, 1
  store i32 %530, i32* %30, align 4
  br label %344

531:                                              ; preds = %356
  br label %532

532:                                              ; preds = %531
  %533 = load i32, i32* %33, align 4
  %534 = load i32, i32* %29, align 4
  %535 = add nsw i32 %534, %533
  store i32 %535, i32* %29, align 4
  br label %249

536:                                              ; preds = %249
  store i32 0, i32* %9, align 4
  br label %537

537:                                              ; preds = %552, %536
  %538 = load i32, i32* %9, align 4
  %539 = load i32, i32* %21, align 4
  %540 = icmp slt i32 %538, %539
  br i1 %540, label %541, label %555

541:                                              ; preds = %537
  %542 = load i32**, i32*** %25, align 8
  %543 = icmp ne i32** %542, null
  br i1 %543, label %544, label %551

544:                                              ; preds = %541
  %545 = load i32**, i32*** %25, align 8
  %546 = load i32, i32* %9, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds i32*, i32** %545, i64 %547
  %549 = load i32*, i32** %548, align 8
  %550 = call i32 @fclose(i32* %549)
  br label %551

551:                                              ; preds = %544, %541
  br label %552

552:                                              ; preds = %551
  %553 = load i32, i32* %9, align 4
  %554 = add nsw i32 %553, 1
  store i32 %554, i32* %9, align 4
  br label %537

555:                                              ; preds = %537
  %556 = load i32, i32* %26, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %567

558:                                              ; preds = %555
  %559 = load i32*, i32** %24, align 8
  %560 = load i32, i32* @SEEK_CUR, align 4
  %561 = call i32 @fseek(i32* %559, i32 -2, i32 %560)
  %562 = load i32*, i32** %24, align 8
  %563 = ptrtoint i32* %562 to i32
  %564 = call i32 (i32, i8*, ...) @fprintf(i32 %563, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %565 = load i32*, i32** %24, align 8
  %566 = call i32 @fclose(i32* %565)
  br label %567

567:                                              ; preds = %558, %555
  %568 = load i32, i32* @stderr, align 4
  %569 = call double (...) @what_time_is_it_now()
  %570 = load double, double* %41, align 8
  %571 = fsub double %569, %570
  %572 = call i32 (i32, i8*, ...) @fprintf(i32 %568, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), double %571)
  ret void
}

declare dso_local %struct.TYPE_20__* @read_data_cfg(i8*) #1

declare dso_local i8* @option_find_str(%struct.TYPE_20__*, i8*, i8*) #1

declare dso_local i8** @get_labels(i8*) #1

declare dso_local i32* @read_map(i8*) #1

declare dso_local %struct.TYPE_18__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @set_batch_network(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local %struct.TYPE_20__* @get_paths(i8*) #1

declare dso_local i64 @list_to_array(%struct.TYPE_20__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local { i64, i64 } @make_image(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @load_data_in_thread(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8) #1

declare dso_local double @what_time_is_it_now(...) #1

declare dso_local i32 @pthread_join(i32, i32) #1

declare dso_local i8* @basecfg(i8*) #1

declare dso_local i32 @copy_cpu(i32, i64, i32, i64, i32) #1

declare dso_local i32 @flip_image(i64, i64) #1

declare dso_local i32 @network_predict(%struct.TYPE_18__*, i64) #1

declare dso_local i32* @get_network_boxes(%struct.TYPE_18__*, i32, i32, float, double, i32*, i32, i32*) #1

declare dso_local i32 @do_nms_sort(i32*, i32, i32, float) #1

declare dso_local i32 @print_cocos(i32*, i8*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @print_imagenet_detections(i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @print_detector_detections(i32**, i8*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @free_detections(i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @free_image(i64, i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
