; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_yolo.c_validate_yolo_recall.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_yolo.c_validate_yolo_recall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { double, double, double, i32, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32, i32 }
%struct.TYPE_27__ = type { float, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Learning Rate: %g, Momentum: %g, Decay: %g\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"results/comp4_det_test_\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"data/voc.2007.test\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s%s.txt\00", align 1
@voc_names = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"images\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"labels\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"JPEGImages\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c".JPEG\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"%5d %5d %5d\09RPs/Img: %.2f\09IOU: %.2f%%\09Recall:%.2f%%\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @validate_yolo_recall(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_25__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca [1024 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca i8*, align 8
  %26 = alloca %struct.TYPE_26__, align 4
  %27 = alloca { i64, i32 }, align 8
  %28 = alloca %struct.TYPE_26__, align 4
  %29 = alloca { i64, i32 }, align 4
  %30 = alloca { i64, i32 }, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca %struct.TYPE_27__*, align 8
  %34 = alloca [4096 x i8], align 16
  %35 = alloca i32, align 4
  %36 = alloca %struct.TYPE_28__*, align 8
  %37 = alloca %struct.TYPE_29__, align 4
  %38 = alloca float, align 4
  %39 = alloca float, align 4
  %40 = alloca { i64, i32 }, align 4
  %41 = alloca { i64, i32 }, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call %struct.TYPE_23__* @load_network(i8* %42, i8* %43, i32 0)
  store %struct.TYPE_23__* %44, %struct.TYPE_23__** %5, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %46 = call i32 @set_batch_network(%struct.TYPE_23__* %45, i32 1)
  %47 = load i32, i32* @stderr, align 4
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = load double, double* %49, align 8
  %51 = fptosi double %50 to i32
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 1
  %54 = load double, double* %53, align 8
  %55 = fptosi double %54 to i32
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 2
  %58 = load double, double* %57, align 8
  %59 = fptosi double %58 to i32
  %60 = call i32 (i32, i8*, i32, i32, i32, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %55, i32 %59)
  %61 = call i32 @time(i32 0)
  %62 = call i32 @srand(i32 %61)
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %63 = call %struct.TYPE_24__* @get_paths(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_24__* %63, %struct.TYPE_24__** %7, align 8
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %65 = call i64 @list_to_array(%struct.TYPE_24__* %64)
  %66 = inttoptr i64 %65 to i8**
  store i8** %66, i8*** %8, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 6
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %68, align 8
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i64 %74
  %76 = bitcast %struct.TYPE_25__* %9 to i8*
  %77 = bitcast %struct.TYPE_25__* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 12, i1 false)
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %10, align 4
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32** @calloc(i32 %82, i32 8)
  store i32** %83, i32*** %14, align 8
  store i32 0, i32* %12, align 4
  br label %84

84:                                               ; preds = %103, %2
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %106

88:                                               ; preds = %84
  %89 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %90 = load i8*, i8** %6, align 8
  %91 = load i32*, i32** @voc_names, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @snprintf(i8* %89, i32 1024, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %90, i32 %95)
  %97 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %98 = call i32* @fopen(i8* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %99 = load i32**, i32*** %14, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  store i32* %98, i32** %102, align 8
  br label %103

103:                                              ; preds = %88
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %84

106:                                              ; preds = %84
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store float 0x3F50624DE0000000, float* %18, align 4
  store float 5.000000e-01, float* %19, align 4
  store float 0.000000e+00, float* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store float 0.000000e+00, float* %24, align 4
  store i32 0, i32* %17, align 4
  br label %110

110:                                              ; preds = %338, %106
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %16, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %341

114:                                              ; preds = %110
  %115 = load i8**, i8*** %8, align 8
  %116 = load i32, i32* %17, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** %25, align 8
  %120 = load i8*, i8** %25, align 8
  %121 = call { i64, i32 } @load_image_color(i8* %120, i32 0, i32 0)
  store { i64, i32 } %121, { i64, i32 }* %27, align 8
  %122 = bitcast { i64, i32 }* %27 to i8*
  %123 = bitcast %struct.TYPE_26__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %123, i8* align 8 %122, i64 12, i1 false)
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = bitcast { i64, i32 }* %29 to i8*
  %131 = bitcast %struct.TYPE_26__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %130, i8* align 4 %131, i64 12, i1 false)
  %132 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %29, i32 0, i32 0
  %133 = load i64, i64* %132, align 4
  %134 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %29, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call { i64, i32 } @resize_image(i64 %133, i32 %135, i32 %126, i32 %129)
  store { i64, i32 } %136, { i64, i32 }* %30, align 8
  %137 = bitcast { i64, i32 }* %30 to i8*
  %138 = bitcast %struct.TYPE_26__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %138, i8* align 8 %137, i64 12, i1 false)
  %139 = load i8*, i8** %25, align 8
  %140 = call i8* @basecfg(i8* %139)
  store i8* %140, i8** %31, align 8
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @network_predict(%struct.TYPE_23__* %141, i32 %143)
  store i32 0, i32* %32, align 4
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load float, float* %18, align 4
  %151 = call %struct.TYPE_27__* @get_network_boxes(%struct.TYPE_23__* %145, i32 %147, i32 %149, float %150, i32 0, i32 0, i32 1, i32* %32)
  store %struct.TYPE_27__* %151, %struct.TYPE_27__** %33, align 8
  %152 = load float, float* %20, align 4
  %153 = fcmp une float %152, 0.000000e+00
  br i1 %153, label %154, label %164

154:                                              ; preds = %114
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %33, align 8
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %11, align 4
  %158 = mul nsw i32 %156, %157
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %158, %160
  %162 = load float, float* %20, align 4
  %163 = call i32 @do_nms_obj(%struct.TYPE_27__* %155, i32 %161, i32 1, float %162)
  br label %164

164:                                              ; preds = %154, %114
  %165 = load i8*, i8** %25, align 8
  %166 = getelementptr inbounds [4096 x i8], [4096 x i8]* %34, i64 0, i64 0
  %167 = call i32 @find_replace(i8* %165, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %166)
  %168 = getelementptr inbounds [4096 x i8], [4096 x i8]* %34, i64 0, i64 0
  %169 = getelementptr inbounds [4096 x i8], [4096 x i8]* %34, i64 0, i64 0
  %170 = call i32 @find_replace(i8* %168, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %169)
  %171 = getelementptr inbounds [4096 x i8], [4096 x i8]* %34, i64 0, i64 0
  %172 = getelementptr inbounds [4096 x i8], [4096 x i8]* %34, i64 0, i64 0
  %173 = call i32 @find_replace(i8* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %172)
  %174 = getelementptr inbounds [4096 x i8], [4096 x i8]* %34, i64 0, i64 0
  %175 = getelementptr inbounds [4096 x i8], [4096 x i8]* %34, i64 0, i64 0
  %176 = call i32 @find_replace(i8* %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %175)
  store i32 0, i32* %35, align 4
  %177 = getelementptr inbounds [4096 x i8], [4096 x i8]* %34, i64 0, i64 0
  %178 = call %struct.TYPE_28__* @read_boxes(i8* %177, i32* %35)
  store %struct.TYPE_28__* %178, %struct.TYPE_28__** %36, align 8
  store i32 0, i32* %13, align 4
  br label %179

179:                                              ; preds = %201, %164
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* %11, align 4
  %183 = mul nsw i32 %181, %182
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 %183, %185
  %187 = icmp slt i32 %180, %186
  br i1 %187, label %188, label %204

188:                                              ; preds = %179
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %33, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %192, i32 0, i32 0
  %194 = load float, float* %193, align 4
  %195 = load float, float* %18, align 4
  %196 = fcmp ogt float %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %188
  %198 = load i32, i32* %23, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %23, align 4
  br label %200

200:                                              ; preds = %197, %188
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %13, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %13, align 4
  br label %179

204:                                              ; preds = %179
  store i32 0, i32* %12, align 4
  br label %205

205:                                              ; preds = %291, %204
  %206 = load i32, i32* %12, align 4
  %207 = load i32, i32* %35, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %294

209:                                              ; preds = %205
  %210 = load i32, i32* %21, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %21, align 4
  %212 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %37, i32 0, i32 0
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %36, align 8
  %214 = load i32, i32* %12, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* %212, align 4
  %219 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %37, i32 0, i32 1
  %220 = load %struct.TYPE_28__*, %struct.TYPE_28__** %36, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %219, align 4
  %226 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %37, i32 0, i32 2
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %36, align 8
  %228 = load i32, i32* %12, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  store i32 %232, i32* %226, align 4
  %233 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %37, i32 0, i32 3
  %234 = load %struct.TYPE_28__*, %struct.TYPE_28__** %36, align 8
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* %233, align 4
  store float 0.000000e+00, float* %38, align 4
  store i32 0, i32* %13, align 4
  br label %240

240:                                              ; preds = %277, %209
  %241 = load i32, i32* %13, align 4
  %242 = load i32, i32* %11, align 4
  %243 = load i32, i32* %11, align 4
  %244 = mul nsw i32 %242, %243
  %245 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = mul nsw i32 %244, %246
  %248 = icmp slt i32 %241, %247
  br i1 %248, label %249, label %280

249:                                              ; preds = %240
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %33, align 8
  %251 = load i32, i32* %13, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = bitcast %struct.TYPE_29__* %37 to { i64, i64 }*
  %257 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 4
  %259 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %256, i32 0, i32 1
  %260 = load i64, i64* %259, align 4
  %261 = call float @box_iou(i32 %255, i64 %258, i64 %260)
  store float %261, float* %39, align 4
  %262 = load %struct.TYPE_27__*, %struct.TYPE_27__** %33, align 8
  %263 = load i32, i32* %13, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %265, i32 0, i32 0
  %267 = load float, float* %266, align 4
  %268 = load float, float* %18, align 4
  %269 = fcmp ogt float %267, %268
  br i1 %269, label %270, label %276

270:                                              ; preds = %249
  %271 = load float, float* %39, align 4
  %272 = load float, float* %38, align 4
  %273 = fcmp ogt float %271, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %270
  %275 = load float, float* %39, align 4
  store float %275, float* %38, align 4
  br label %276

276:                                              ; preds = %274, %270, %249
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %13, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %13, align 4
  br label %240

280:                                              ; preds = %240
  %281 = load float, float* %38, align 4
  %282 = load float, float* %24, align 4
  %283 = fadd float %282, %281
  store float %283, float* %24, align 4
  %284 = load float, float* %38, align 4
  %285 = load float, float* %19, align 4
  %286 = fcmp ogt float %284, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %280
  %288 = load i32, i32* %22, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %22, align 4
  br label %290

290:                                              ; preds = %287, %280
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %12, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %12, align 4
  br label %205

294:                                              ; preds = %205
  %295 = load i32, i32* @stderr, align 4
  %296 = load i32, i32* %17, align 4
  %297 = load i32, i32* %22, align 4
  %298 = load i32, i32* %21, align 4
  %299 = load i32, i32* %23, align 4
  %300 = sitofp i32 %299 to float
  %301 = load i32, i32* %17, align 4
  %302 = add nsw i32 %301, 1
  %303 = sitofp i32 %302 to float
  %304 = fdiv float %300, %303
  %305 = fpext float %304 to double
  %306 = load float, float* %24, align 4
  %307 = fmul float %306, 1.000000e+02
  %308 = load i32, i32* %21, align 4
  %309 = sitofp i32 %308 to float
  %310 = fdiv float %307, %309
  %311 = fpext float %310 to double
  %312 = load i32, i32* %22, align 4
  %313 = sitofp i32 %312 to double
  %314 = fmul double 1.000000e+02, %313
  %315 = load i32, i32* %21, align 4
  %316 = sitofp i32 %315 to double
  %317 = fdiv double %314, %316
  %318 = call i32 (i32, i8*, i32, i32, i32, ...) @fprintf(i32 %295, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i32 %296, i32 %297, i32 %298, double %305, double %311, double %317)
  %319 = load %struct.TYPE_27__*, %struct.TYPE_27__** %33, align 8
  %320 = load i32, i32* %32, align 4
  %321 = call i32 @free_detections(%struct.TYPE_27__* %319, i32 %320)
  %322 = load i8*, i8** %31, align 8
  %323 = call i32 @free(i8* %322)
  %324 = bitcast { i64, i32 }* %40 to i8*
  %325 = bitcast %struct.TYPE_26__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %324, i8* align 4 %325, i64 12, i1 false)
  %326 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 0
  %327 = load i64, i64* %326, align 4
  %328 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @free_image(i64 %327, i32 %329)
  %331 = bitcast { i64, i32 }* %41 to i8*
  %332 = bitcast %struct.TYPE_26__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %331, i8* align 4 %332, i64 12, i1 false)
  %333 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %41, i32 0, i32 0
  %334 = load i64, i64* %333, align 4
  %335 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %41, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @free_image(i64 %334, i32 %336)
  br label %338

338:                                              ; preds = %294
  %339 = load i32, i32* %17, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %17, align 4
  br label %110

341:                                              ; preds = %110
  ret void
}

declare dso_local %struct.TYPE_23__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @set_batch_network(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local %struct.TYPE_24__* @get_paths(i8*) #1

declare dso_local i64 @list_to_array(%struct.TYPE_24__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32** @calloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local { i64, i32 } @load_image_color(i8*, i32, i32) #1

declare dso_local { i64, i32 } @resize_image(i64, i32, i32, i32) #1

declare dso_local i8* @basecfg(i8*) #1

declare dso_local i32 @network_predict(%struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_27__* @get_network_boxes(%struct.TYPE_23__*, i32, i32, float, i32, i32, i32, i32*) #1

declare dso_local i32 @do_nms_obj(%struct.TYPE_27__*, i32, i32, float) #1

declare dso_local i32 @find_replace(i8*, i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_28__* @read_boxes(i8*, i32*) #1

declare dso_local float @box_iou(i32, i64, i64) #1

declare dso_local i32 @free_detections(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @free_image(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
