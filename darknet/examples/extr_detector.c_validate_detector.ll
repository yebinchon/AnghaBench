; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_detector.c_validate_detector.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_detector.c_validate_detector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { double, double, double, i32, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { float*, i32, i32 }
%struct.TYPE_17__ = type { i8*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32, i32, i32, i32 }

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
define dso_local void @validate_detector(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca i8**, align 8
  %20 = alloca %struct.TYPE_19__, align 4
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
  %34 = alloca %struct.TYPE_20__*, align 8
  %35 = alloca %struct.TYPE_20__*, align 8
  %36 = alloca %struct.TYPE_20__*, align 8
  %37 = alloca %struct.TYPE_20__*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca %struct.TYPE_17__, align 8
  %40 = alloca double, align 8
  %41 = alloca i8*, align 8
  %42 = alloca i8*, align 8
  %43 = alloca float*, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call %struct.TYPE_18__* @read_data_cfg(i8* %48)
  store %struct.TYPE_18__* %49, %struct.TYPE_18__** %10, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %51 = call i8* @option_find_str(%struct.TYPE_18__* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %51, i8** %11, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %53 = call i8* @option_find_str(%struct.TYPE_18__* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i8* %53, i8** %12, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %55 = call i8* @option_find_str(%struct.TYPE_18__* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* %55, i8** %13, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = call i8** @get_labels(i8* %56)
  store i8** %57, i8*** %14, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %59 = call i8* @option_find_str(%struct.TYPE_18__* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* null)
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
  %68 = call %struct.TYPE_16__* @load_network(i8* %66, i8* %67, i32 0)
  store %struct.TYPE_16__* %68, %struct.TYPE_16__** %17, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %70 = call i32 @set_batch_network(%struct.TYPE_16__* %69, i32 1)
  %71 = load i32, i32* @stderr, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load double, double* %73, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = load double, double* %76, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 2
  %80 = load double, double* %79, align 8
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), double %74, double %77, double %80)
  %82 = call i32 @time(i32 0)
  %83 = call i32 @srand(i32 %82)
  %84 = load i8*, i8** %11, align 8
  %85 = call %struct.TYPE_18__* @get_paths(i8* %84)
  store %struct.TYPE_18__* %85, %struct.TYPE_18__** %18, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %87 = call i64 @list_to_array(%struct.TYPE_18__* %86)
  %88 = inttoptr i64 %87 to i8**
  store i8** %88, i8*** %19, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 6
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i64 %96
  %98 = bitcast %struct.TYPE_19__* %20 to i8*
  %99 = bitcast %struct.TYPE_19__* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 4 %99, i64 4, i1 false)
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %21, align 4
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %103 = call i8* @option_find_str(%struct.TYPE_18__* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
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
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store float 0x3F747AE140000000, float* %31, align 4
  store float 0x3FDCCCCCC0000000, float* %32, align 4
  store i32 4, i32* %33, align 4
  %173 = load i32, i32* %33, align 4
  %174 = call i8* @calloc(i32 %173, i32 16)
  %175 = bitcast i8* %174 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %175, %struct.TYPE_20__** %34, align 8
  %176 = load i32, i32* %33, align 4
  %177 = call i8* @calloc(i32 %176, i32 16)
  %178 = bitcast i8* %177 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %178, %struct.TYPE_20__** %35, align 8
  %179 = load i32, i32* %33, align 4
  %180 = call i8* @calloc(i32 %179, i32 16)
  %181 = bitcast i8* %180 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %181, %struct.TYPE_20__** %36, align 8
  %182 = load i32, i32* %33, align 4
  %183 = call i8* @calloc(i32 %182, i32 16)
  %184 = bitcast i8* %183 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %184, %struct.TYPE_20__** %37, align 8
  %185 = load i32, i32* %33, align 4
  %186 = call i8* @calloc(i32 %185, i32 4)
  %187 = bitcast i8* %186 to i32*
  store i32* %187, i32** %38, align 8
  %188 = bitcast %struct.TYPE_17__* %39 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %188, i8 0, i64 40, i1 false)
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 5
  store i32 %191, i32* %192, align 8
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 4
  store i32 %195, i32* %196, align 4
  %197 = load i32, i32* @LETTERBOX_DATA, align 4
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 3
  store i32 %197, i32* %198, align 8
  store i32 0, i32* %30, align 4
  br label %199

199:                                              ; preds = %227, %169
  %200 = load i32, i32* %30, align 4
  %201 = load i32, i32* %33, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %230

203:                                              ; preds = %199
  %204 = load i8**, i8*** %19, align 8
  %205 = load i32, i32* %29, align 4
  %206 = load i32, i32* %30, align 4
  %207 = add nsw i32 %205, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %204, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  store i8* %210, i8** %211, align 8
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %213 = load i32, i32* %30, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 2
  store %struct.TYPE_20__* %215, %struct.TYPE_20__** %216, align 8
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %37, align 8
  %218 = load i32, i32* %30, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  store %struct.TYPE_20__* %220, %struct.TYPE_20__** %221, align 8
  %222 = call i32 @load_data_in_thread(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %39)
  %223 = load i32*, i32** %38, align 8
  %224 = load i32, i32* %30, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  store i32 %222, i32* %226, align 4
  br label %227

227:                                              ; preds = %203
  %228 = load i32, i32* %30, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %30, align 4
  br label %199

230:                                              ; preds = %199
  %231 = call double (...) @what_time_is_it_now()
  store double %231, double* %40, align 8
  %232 = load i32, i32* %33, align 4
  store i32 %232, i32* %29, align 4
  br label %233

233:                                              ; preds = %458, %230
  %234 = load i32, i32* %29, align 4
  %235 = load i32, i32* %28, align 4
  %236 = load i32, i32* %33, align 4
  %237 = add nsw i32 %235, %236
  %238 = icmp slt i32 %234, %237
  br i1 %238, label %239, label %462

239:                                              ; preds = %233
  %240 = load i32, i32* @stderr, align 4
  %241 = load i32, i32* %29, align 4
  %242 = call i32 (i32, i8*, ...) @fprintf(i32 %240, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 %241)
  store i32 0, i32* %30, align 4
  br label %243

243:                                              ; preds = %284, %239
  %244 = load i32, i32* %30, align 4
  %245 = load i32, i32* %33, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %255

247:                                              ; preds = %243
  %248 = load i32, i32* %29, align 4
  %249 = load i32, i32* %30, align 4
  %250 = add nsw i32 %248, %249
  %251 = load i32, i32* %33, align 4
  %252 = sub nsw i32 %250, %251
  %253 = load i32, i32* %28, align 4
  %254 = icmp slt i32 %252, %253
  br label %255

255:                                              ; preds = %247, %243
  %256 = phi i1 [ false, %243 ], [ %254, %247 ]
  br i1 %256, label %257, label %287

257:                                              ; preds = %255
  %258 = load i32*, i32** %38, align 8
  %259 = load i32, i32* %30, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @pthread_join(i32 %262, i32 0)
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %34, align 8
  %265 = load i32, i32* %30, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i64 %266
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %269 = load i32, i32* %30, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i64 %270
  %272 = bitcast %struct.TYPE_20__* %267 to i8*
  %273 = bitcast %struct.TYPE_20__* %271 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %272, i8* align 8 %273, i64 16, i1 false)
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %275 = load i32, i32* %30, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i64 %276
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %37, align 8
  %279 = load i32, i32* %30, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i64 %280
  %282 = bitcast %struct.TYPE_20__* %277 to i8*
  %283 = bitcast %struct.TYPE_20__* %281 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %282, i8* align 8 %283, i64 16, i1 false)
  br label %284

284:                                              ; preds = %257
  %285 = load i32, i32* %30, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %30, align 4
  br label %243

287:                                              ; preds = %255
  store i32 0, i32* %30, align 4
  br label %288

288:                                              ; preds = %324, %287
  %289 = load i32, i32* %30, align 4
  %290 = load i32, i32* %33, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %298

292:                                              ; preds = %288
  %293 = load i32, i32* %29, align 4
  %294 = load i32, i32* %30, align 4
  %295 = add nsw i32 %293, %294
  %296 = load i32, i32* %28, align 4
  %297 = icmp slt i32 %295, %296
  br label %298

298:                                              ; preds = %292, %288
  %299 = phi i1 [ false, %288 ], [ %297, %292 ]
  br i1 %299, label %300, label %327

300:                                              ; preds = %298
  %301 = load i8**, i8*** %19, align 8
  %302 = load i32, i32* %29, align 4
  %303 = load i32, i32* %30, align 4
  %304 = add nsw i32 %302, %303
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8*, i8** %301, i64 %305
  %307 = load i8*, i8** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  store i8* %307, i8** %308, align 8
  %309 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %310 = load i32, i32* %30, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 2
  store %struct.TYPE_20__* %312, %struct.TYPE_20__** %313, align 8
  %314 = load %struct.TYPE_20__*, %struct.TYPE_20__** %37, align 8
  %315 = load i32, i32* %30, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  store %struct.TYPE_20__* %317, %struct.TYPE_20__** %318, align 8
  %319 = call i32 @load_data_in_thread(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %39)
  %320 = load i32*, i32** %38, align 8
  %321 = load i32, i32* %30, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  store i32 %319, i32* %323, align 4
  br label %324

324:                                              ; preds = %300
  %325 = load i32, i32* %30, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %30, align 4
  br label %288

327:                                              ; preds = %298
  store i32 0, i32* %30, align 4
  br label %328

328:                                              ; preds = %454, %327
  %329 = load i32, i32* %30, align 4
  %330 = load i32, i32* %33, align 4
  %331 = icmp slt i32 %329, %330
  br i1 %331, label %332, label %340

332:                                              ; preds = %328
  %333 = load i32, i32* %29, align 4
  %334 = load i32, i32* %30, align 4
  %335 = add nsw i32 %333, %334
  %336 = load i32, i32* %33, align 4
  %337 = sub nsw i32 %335, %336
  %338 = load i32, i32* %28, align 4
  %339 = icmp slt i32 %337, %338
  br label %340

340:                                              ; preds = %332, %328
  %341 = phi i1 [ false, %328 ], [ %339, %332 ]
  br i1 %341, label %342, label %457

342:                                              ; preds = %340
  %343 = load i8**, i8*** %19, align 8
  %344 = load i32, i32* %29, align 4
  %345 = load i32, i32* %30, align 4
  %346 = add nsw i32 %344, %345
  %347 = load i32, i32* %33, align 4
  %348 = sub nsw i32 %346, %347
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i8*, i8** %343, i64 %349
  %351 = load i8*, i8** %350, align 8
  store i8* %351, i8** %41, align 8
  %352 = load i8*, i8** %41, align 8
  %353 = call i8* @basecfg(i8* %352)
  store i8* %353, i8** %42, align 8
  %354 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %355 = load i32, i32* %30, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %357, i32 0, i32 0
  %359 = load float*, float** %358, align 8
  store float* %359, float** %43, align 8
  %360 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %361 = load float*, float** %43, align 8
  %362 = call i32 @network_predict(%struct.TYPE_16__* %360, float* %361)
  %363 = load %struct.TYPE_20__*, %struct.TYPE_20__** %34, align 8
  %364 = load i32, i32* %30, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 8
  store i32 %368, i32* %44, align 4
  %369 = load %struct.TYPE_20__*, %struct.TYPE_20__** %34, align 8
  %370 = load i32, i32* %30, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 4
  store i32 %374, i32* %45, align 4
  store i32 0, i32* %46, align 4
  %375 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %376 = load i32, i32* %44, align 4
  %377 = load i32, i32* %45, align 4
  %378 = load float, float* %31, align 4
  %379 = load i32*, i32** %16, align 8
  %380 = call i32* @get_network_boxes(%struct.TYPE_16__* %375, i32 %376, i32 %377, float %378, double 5.000000e-01, i32* %379, i32 0, i32* %46)
  store i32* %380, i32** %47, align 8
  %381 = load float, float* %32, align 4
  %382 = fcmp une float %381, 0.000000e+00
  br i1 %382, label %383, label %389

383:                                              ; preds = %342
  %384 = load i32*, i32** %47, align 8
  %385 = load i32, i32* %46, align 4
  %386 = load i32, i32* %21, align 4
  %387 = load float, float* %32, align 4
  %388 = call i32 @do_nms_sort(i32* %384, i32 %385, i32 %386, float %387)
  br label %389

389:                                              ; preds = %383, %342
  %390 = load i32, i32* %26, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %401

392:                                              ; preds = %389
  %393 = load i32*, i32** %24, align 8
  %394 = load i8*, i8** %41, align 8
  %395 = load i32*, i32** %47, align 8
  %396 = load i32, i32* %46, align 4
  %397 = load i32, i32* %21, align 4
  %398 = load i32, i32* %44, align 4
  %399 = load i32, i32* %45, align 4
  %400 = call i32 @print_cocos(i32* %393, i8* %394, i32* %395, i32 %396, i32 %397, i32 %398, i32 %399)
  br label %428

401:                                              ; preds = %389
  %402 = load i32, i32* %27, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %418

404:                                              ; preds = %401
  %405 = load i32*, i32** %24, align 8
  %406 = load i32, i32* %29, align 4
  %407 = load i32, i32* %30, align 4
  %408 = add nsw i32 %406, %407
  %409 = load i32, i32* %33, align 4
  %410 = sub nsw i32 %408, %409
  %411 = add nsw i32 %410, 1
  %412 = load i32*, i32** %47, align 8
  %413 = load i32, i32* %46, align 4
  %414 = load i32, i32* %21, align 4
  %415 = load i32, i32* %44, align 4
  %416 = load i32, i32* %45, align 4
  %417 = call i32 @print_imagenet_detections(i32* %405, i32 %411, i32* %412, i32 %413, i32 %414, i32 %415, i32 %416)
  br label %427

418:                                              ; preds = %401
  %419 = load i32**, i32*** %25, align 8
  %420 = load i8*, i8** %42, align 8
  %421 = load i32*, i32** %47, align 8
  %422 = load i32, i32* %46, align 4
  %423 = load i32, i32* %21, align 4
  %424 = load i32, i32* %44, align 4
  %425 = load i32, i32* %45, align 4
  %426 = call i32 @print_detector_detections(i32** %419, i8* %420, i32* %421, i32 %422, i32 %423, i32 %424, i32 %425)
  br label %427

427:                                              ; preds = %418, %404
  br label %428

428:                                              ; preds = %427, %392
  %429 = load i32*, i32** %47, align 8
  %430 = load i32, i32* %46, align 4
  %431 = call i32 @free_detections(i32* %429, i32 %430)
  %432 = load i8*, i8** %42, align 8
  %433 = call i32 @free(i8* %432)
  %434 = load %struct.TYPE_20__*, %struct.TYPE_20__** %34, align 8
  %435 = load i32, i32* %30, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %434, i64 %436
  %438 = bitcast %struct.TYPE_20__* %437 to { float*, i64 }*
  %439 = getelementptr inbounds { float*, i64 }, { float*, i64 }* %438, i32 0, i32 0
  %440 = load float*, float** %439, align 8
  %441 = getelementptr inbounds { float*, i64 }, { float*, i64 }* %438, i32 0, i32 1
  %442 = load i64, i64* %441, align 8
  %443 = call i32 @free_image(float* %440, i64 %442)
  %444 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %445 = load i32, i32* %30, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %444, i64 %446
  %448 = bitcast %struct.TYPE_20__* %447 to { float*, i64 }*
  %449 = getelementptr inbounds { float*, i64 }, { float*, i64 }* %448, i32 0, i32 0
  %450 = load float*, float** %449, align 8
  %451 = getelementptr inbounds { float*, i64 }, { float*, i64 }* %448, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = call i32 @free_image(float* %450, i64 %452)
  br label %454

454:                                              ; preds = %428
  %455 = load i32, i32* %30, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %30, align 4
  br label %328

457:                                              ; preds = %340
  br label %458

458:                                              ; preds = %457
  %459 = load i32, i32* %33, align 4
  %460 = load i32, i32* %29, align 4
  %461 = add nsw i32 %460, %459
  store i32 %461, i32* %29, align 4
  br label %233

462:                                              ; preds = %233
  store i32 0, i32* %9, align 4
  br label %463

463:                                              ; preds = %478, %462
  %464 = load i32, i32* %9, align 4
  %465 = load i32, i32* %21, align 4
  %466 = icmp slt i32 %464, %465
  br i1 %466, label %467, label %481

467:                                              ; preds = %463
  %468 = load i32**, i32*** %25, align 8
  %469 = icmp ne i32** %468, null
  br i1 %469, label %470, label %477

470:                                              ; preds = %467
  %471 = load i32**, i32*** %25, align 8
  %472 = load i32, i32* %9, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32*, i32** %471, i64 %473
  %475 = load i32*, i32** %474, align 8
  %476 = call i32 @fclose(i32* %475)
  br label %477

477:                                              ; preds = %470, %467
  br label %478

478:                                              ; preds = %477
  %479 = load i32, i32* %9, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %9, align 4
  br label %463

481:                                              ; preds = %463
  %482 = load i32, i32* %26, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %493

484:                                              ; preds = %481
  %485 = load i32*, i32** %24, align 8
  %486 = load i32, i32* @SEEK_CUR, align 4
  %487 = call i32 @fseek(i32* %485, i32 -2, i32 %486)
  %488 = load i32*, i32** %24, align 8
  %489 = ptrtoint i32* %488 to i32
  %490 = call i32 (i32, i8*, ...) @fprintf(i32 %489, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %491 = load i32*, i32** %24, align 8
  %492 = call i32 @fclose(i32* %491)
  br label %493

493:                                              ; preds = %484, %481
  %494 = load i32, i32* @stderr, align 4
  %495 = call double (...) @what_time_is_it_now()
  %496 = load double, double* %40, align 8
  %497 = fsub double %495, %496
  %498 = call i32 (i32, i8*, ...) @fprintf(i32 %494, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), double %497)
  ret void
}

declare dso_local %struct.TYPE_18__* @read_data_cfg(i8*) #1

declare dso_local i8* @option_find_str(%struct.TYPE_18__*, i8*, i8*) #1

declare dso_local i8** @get_labels(i8*) #1

declare dso_local i32* @read_map(i8*) #1

declare dso_local %struct.TYPE_16__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @set_batch_network(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local %struct.TYPE_18__* @get_paths(i8*) #1

declare dso_local i64 @list_to_array(%struct.TYPE_18__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @load_data_in_thread(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8) #1

declare dso_local double @what_time_is_it_now(...) #1

declare dso_local i32 @pthread_join(i32, i32) #1

declare dso_local i8* @basecfg(i8*) #1

declare dso_local i32 @network_predict(%struct.TYPE_16__*, float*) #1

declare dso_local i32* @get_network_boxes(%struct.TYPE_16__*, i32, i32, float, double, i32*, i32, i32*) #1

declare dso_local i32 @do_nms_sort(i32*, i32, i32, float) #1

declare dso_local i32 @print_cocos(i32*, i8*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @print_imagenet_detections(i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @print_detector_detections(i32**, i8*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @free_detections(i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @free_image(float*, i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
