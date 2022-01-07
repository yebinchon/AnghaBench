; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_detector.c_validate_detector_recall.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_detector.c_validate_detector_recall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { double, double, double, i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { float, i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Learning Rate: %g, Momentum: %g, Decay: %g\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"data/coco_val_5k.list\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"images\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"labels\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"JPEGImages\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c".JPEG\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"%5d %5d %5d\09RPs/Img: %.2f\09IOU: %.2f%%\09Recall:%.2f%%\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @validate_detector_recall(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_24__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_25__, align 4
  %22 = alloca { i64, i32 }, align 8
  %23 = alloca %struct.TYPE_25__, align 4
  %24 = alloca { i64, i32 }, align 4
  %25 = alloca { i64, i32 }, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_26__*, align 8
  %29 = alloca [4096 x i8], align 16
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_27__*, align 8
  %32 = alloca %struct.TYPE_28__, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca { i64, i32 }, align 4
  %36 = alloca { i64, i32 }, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call %struct.TYPE_22__* @load_network(i8* %37, i8* %38, i32 0)
  store %struct.TYPE_22__* %39, %struct.TYPE_22__** %5, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %41 = call i32 @set_batch_network(%struct.TYPE_22__* %40, i32 1)
  %42 = load i32, i32* @stderr, align 4
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = load double, double* %44, align 8
  %46 = fptosi double %45 to i32
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = fptosi double %49 to i32
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 2
  %53 = load double, double* %52, align 8
  %54 = fptosi double %53 to i32
  %55 = call i32 (i32, i8*, i32, i32, i32, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %50, i32 %54)
  %56 = call i32 @time(i32 0)
  %57 = call i32 @srand(i32 %56)
  %58 = call %struct.TYPE_23__* @get_paths(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_23__* %58, %struct.TYPE_23__** %6, align 8
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %60 = call i64 @list_to_array(%struct.TYPE_23__* %59)
  %61 = inttoptr i64 %60 to i8**
  store i8** %61, i8*** %7, align 8
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 6
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %63, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i64 %69
  %71 = bitcast %struct.TYPE_24__* %8 to i8*
  %72 = bitcast %struct.TYPE_24__* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 12, i1 false)
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store float 0x3F50624DE0000000, float* %13, align 4
  store float 5.000000e-01, float* %14, align 4
  store float 0x3FD99999A0000000, float* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store float 0.000000e+00, float* %19, align 4
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %293, %2
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %296

80:                                               ; preds = %76
  %81 = load i8**, i8*** %7, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %20, align 8
  %86 = load i8*, i8** %20, align 8
  %87 = call { i64, i32 } @load_image_color(i8* %86, i32 0, i32 0)
  store { i64, i32 } %87, { i64, i32 }* %22, align 8
  %88 = bitcast { i64, i32 }* %22 to i8*
  %89 = bitcast %struct.TYPE_25__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 8 %88, i64 12, i1 false)
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = bitcast { i64, i32 }* %24 to i8*
  %97 = bitcast %struct.TYPE_25__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 12, i1 false)
  %98 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 0
  %99 = load i64, i64* %98, align 4
  %100 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call { i64, i32 } @resize_image(i64 %99, i32 %101, i32 %92, i32 %95)
  store { i64, i32 } %102, { i64, i32 }* %25, align 8
  %103 = bitcast { i64, i32 }* %25 to i8*
  %104 = bitcast %struct.TYPE_25__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %104, i8* align 8 %103, i64 12, i1 false)
  %105 = load i8*, i8** %20, align 8
  %106 = call i8* @basecfg(i8* %105)
  store i8* %106, i8** %26, align 8
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @network_predict(%struct.TYPE_22__* %107, i32 %109)
  store i32 0, i32* %27, align 4
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load float, float* %13, align 4
  %117 = call %struct.TYPE_26__* @get_network_boxes(%struct.TYPE_22__* %111, i32 %113, i32 %115, float %116, double 5.000000e-01, i32 0, i32 1, i32* %27)
  store %struct.TYPE_26__* %117, %struct.TYPE_26__** %28, align 8
  %118 = load float, float* %15, align 4
  %119 = fcmp une float %118, 0.000000e+00
  br i1 %119, label %120, label %125

120:                                              ; preds = %80
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %28, align 8
  %122 = load i32, i32* %27, align 4
  %123 = load float, float* %15, align 4
  %124 = call i32 @do_nms_obj(%struct.TYPE_26__* %121, i32 %122, i32 1, float %123)
  br label %125

125:                                              ; preds = %120, %80
  %126 = load i8*, i8** %20, align 8
  %127 = getelementptr inbounds [4096 x i8], [4096 x i8]* %29, i64 0, i64 0
  %128 = call i32 @find_replace(i8* %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %127)
  %129 = getelementptr inbounds [4096 x i8], [4096 x i8]* %29, i64 0, i64 0
  %130 = getelementptr inbounds [4096 x i8], [4096 x i8]* %29, i64 0, i64 0
  %131 = call i32 @find_replace(i8* %129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %130)
  %132 = getelementptr inbounds [4096 x i8], [4096 x i8]* %29, i64 0, i64 0
  %133 = getelementptr inbounds [4096 x i8], [4096 x i8]* %29, i64 0, i64 0
  %134 = call i32 @find_replace(i8* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %133)
  %135 = getelementptr inbounds [4096 x i8], [4096 x i8]* %29, i64 0, i64 0
  %136 = getelementptr inbounds [4096 x i8], [4096 x i8]* %29, i64 0, i64 0
  %137 = call i32 @find_replace(i8* %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %136)
  store i32 0, i32* %30, align 4
  %138 = getelementptr inbounds [4096 x i8], [4096 x i8]* %29, i64 0, i64 0
  %139 = call %struct.TYPE_27__* @read_boxes(i8* %138, i32* %30)
  store %struct.TYPE_27__* %139, %struct.TYPE_27__** %31, align 8
  store i32 0, i32* %10, align 4
  br label %140

140:                                              ; preds = %157, %125
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %27, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %160

144:                                              ; preds = %140
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %28, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 0
  %150 = load float, float* %149, align 4
  %151 = load float, float* %13, align 4
  %152 = fcmp ogt float %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %144
  %154 = load i32, i32* %18, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %18, align 4
  br label %156

156:                                              ; preds = %153, %144
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  br label %140

160:                                              ; preds = %140
  store i32 0, i32* %9, align 4
  br label %161

161:                                              ; preds = %249, %160
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %30, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %252

165:                                              ; preds = %161
  %166 = load i32, i32* %16, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %16, align 4
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 0
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %31, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %168, align 4
  %175 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 1
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %31, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %175, align 4
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 2
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %31, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %182, align 4
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 3
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %31, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %189, align 4
  store float 0.000000e+00, float* %33, align 4
  store i32 0, i32* %10, align 4
  br label %196

196:                                              ; preds = %235, %165
  %197 = load i32, i32* %10, align 4
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = mul nsw i32 %199, %201
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = mul nsw i32 %202, %204
  %206 = icmp slt i32 %197, %205
  br i1 %206, label %207, label %238

207:                                              ; preds = %196
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %28, align 8
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = bitcast %struct.TYPE_28__* %32 to { i64, i64 }*
  %215 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 4
  %217 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %214, i32 0, i32 1
  %218 = load i64, i64* %217, align 4
  %219 = call float @box_iou(i32 %213, i64 %216, i64 %218)
  store float %219, float* %34, align 4
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %28, align 8
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %223, i32 0, i32 0
  %225 = load float, float* %224, align 4
  %226 = load float, float* %13, align 4
  %227 = fcmp ogt float %225, %226
  br i1 %227, label %228, label %234

228:                                              ; preds = %207
  %229 = load float, float* %34, align 4
  %230 = load float, float* %33, align 4
  %231 = fcmp ogt float %229, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %228
  %233 = load float, float* %34, align 4
  store float %233, float* %33, align 4
  br label %234

234:                                              ; preds = %232, %228, %207
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %10, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %10, align 4
  br label %196

238:                                              ; preds = %196
  %239 = load float, float* %33, align 4
  %240 = load float, float* %19, align 4
  %241 = fadd float %240, %239
  store float %241, float* %19, align 4
  %242 = load float, float* %33, align 4
  %243 = load float, float* %14, align 4
  %244 = fcmp ogt float %242, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %238
  %246 = load i32, i32* %17, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %17, align 4
  br label %248

248:                                              ; preds = %245, %238
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %9, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %9, align 4
  br label %161

252:                                              ; preds = %161
  %253 = load i32, i32* @stderr, align 4
  %254 = load i32, i32* %12, align 4
  %255 = load i32, i32* %17, align 4
  %256 = load i32, i32* %16, align 4
  %257 = load i32, i32* %18, align 4
  %258 = sitofp i32 %257 to float
  %259 = load i32, i32* %12, align 4
  %260 = add nsw i32 %259, 1
  %261 = sitofp i32 %260 to float
  %262 = fdiv float %258, %261
  %263 = fpext float %262 to double
  %264 = load float, float* %19, align 4
  %265 = fmul float %264, 1.000000e+02
  %266 = load i32, i32* %16, align 4
  %267 = sitofp i32 %266 to float
  %268 = fdiv float %265, %267
  %269 = fpext float %268 to double
  %270 = load i32, i32* %17, align 4
  %271 = sitofp i32 %270 to double
  %272 = fmul double 1.000000e+02, %271
  %273 = load i32, i32* %16, align 4
  %274 = sitofp i32 %273 to double
  %275 = fdiv double %272, %274
  %276 = call i32 (i32, i8*, i32, i32, i32, ...) @fprintf(i32 %253, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %254, i32 %255, i32 %256, double %263, double %269, double %275)
  %277 = load i8*, i8** %26, align 8
  %278 = call i32 @free(i8* %277)
  %279 = bitcast { i64, i32 }* %35 to i8*
  %280 = bitcast %struct.TYPE_25__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %279, i8* align 4 %280, i64 12, i1 false)
  %281 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 0
  %282 = load i64, i64* %281, align 4
  %283 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @free_image(i64 %282, i32 %284)
  %286 = bitcast { i64, i32 }* %36 to i8*
  %287 = bitcast %struct.TYPE_25__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %286, i8* align 4 %287, i64 12, i1 false)
  %288 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 0
  %289 = load i64, i64* %288, align 4
  %290 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @free_image(i64 %289, i32 %291)
  br label %293

293:                                              ; preds = %252
  %294 = load i32, i32* %12, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %12, align 4
  br label %76

296:                                              ; preds = %76
  ret void
}

declare dso_local %struct.TYPE_22__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @set_batch_network(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local %struct.TYPE_23__* @get_paths(i8*) #1

declare dso_local i64 @list_to_array(%struct.TYPE_23__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i64, i32 } @load_image_color(i8*, i32, i32) #1

declare dso_local { i64, i32 } @resize_image(i64, i32, i32, i32) #1

declare dso_local i8* @basecfg(i8*) #1

declare dso_local i32 @network_predict(%struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_26__* @get_network_boxes(%struct.TYPE_22__*, i32, i32, float, double, i32, i32, i32*) #1

declare dso_local i32 @do_nms_obj(%struct.TYPE_26__*, i32, i32, float) #1

declare dso_local i32 @find_replace(i8*, i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_27__* @read_boxes(i8*, i32*) #1

declare dso_local float @box_iou(i32, i64, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @free_image(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
