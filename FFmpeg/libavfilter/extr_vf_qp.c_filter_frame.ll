; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_qp.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_qp.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_12__** }
%struct.TYPE_11__ = type { i32, i32, i32*, i32, i64 }
%struct.TYPE_14__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@NAN = common dso_local global i64 0, align 8
@filter_frame.var_names = internal global [7 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [6 x i8] c"known\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"qp\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [7 x double], align 16
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %6, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %30, i64 0
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %7, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %8, align 8
  store i32* null, i32** %10, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %2
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40, %2
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @ff_filter_frame(%struct.TYPE_12__* %46, i32* %47)
  store i32 %48, i32* %3, align 4
  br label %280

49:                                               ; preds = %40
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %52, %55
  %57 = call %struct.TYPE_14__* @av_buffer_alloc(i32 %56)
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %9, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %59 = icmp ne %struct.TYPE_14__* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %49
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = call i32 @AVERROR(i32 %61)
  store i32 %62, i32* %14, align 4
  br label %276

63:                                               ; preds = %49
  %64 = load i32*, i32** %5, align 8
  %65 = call i32* @av_frame_clone(i32* %64)
  store i32* %65, i32** %10, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = call i32 @av_buffer_unref(%struct.TYPE_14__** %9)
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = call i32 @AVERROR(i32 %70)
  store i32 %71, i32* %14, align 4
  br label %276

72:                                               ; preds = %63
  %73 = load i32*, i32** %5, align 8
  %74 = call i64* @av_frame_get_qp_table(i32* %73, i32* %13, i32* %12)
  store i64* %74, i64** %11, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @av_frame_set_qp_table(i32* %75, %struct.TYPE_14__* %76, i32 %79, i32 %80)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %177

86:                                               ; preds = %72
  store i32 0, i32* %15, align 4
  br label %87

87:                                               ; preds = %173, %86
  %88 = load i32, i32* %15, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %176

93:                                               ; preds = %87
  store i32 0, i32* %16, align 4
  br label %94

94:                                               ; preds = %169, %93
  %95 = load i32, i32* %16, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %172

100:                                              ; preds = %94
  %101 = load i64*, i64** %11, align 8
  %102 = icmp ne i64* %101, null
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load i64*, i64** %11, align 8
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %15, align 4
  %108 = mul nsw i32 %106, %107
  %109 = add nsw i32 %105, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %104, i64 %110
  %112 = load i64, i64* %111, align 8
  br label %115

113:                                              ; preds = %100
  %114 = load i64, i64* @NAN, align 8
  br label %115

115:                                              ; preds = %113, %103
  %116 = phi i64 [ %112, %103 ], [ %114, %113 ]
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %17, align 4
  %118 = getelementptr inbounds [7 x double], [7 x double]* %18, i64 0, i64 0
  %119 = load i64*, i64** %11, align 8
  %120 = icmp ne i64* %119, null
  %121 = xor i1 %120, true
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = sitofp i32 %123 to double
  store double %124, double* %118, align 8
  %125 = getelementptr inbounds double, double* %118, i64 1
  %126 = load i32, i32* %17, align 4
  %127 = sitofp i32 %126 to double
  store double %127, double* %125, align 8
  %128 = getelementptr inbounds double, double* %125, i64 1
  %129 = load i32, i32* %16, align 4
  %130 = sitofp i32 %129 to double
  store double %130, double* %128, align 8
  %131 = getelementptr inbounds double, double* %128, i64 1
  %132 = load i32, i32* %15, align 4
  %133 = sitofp i32 %132 to double
  store double %133, double* %131, align 8
  %134 = getelementptr inbounds double, double* %131, i64 1
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = sitofp i32 %137 to double
  store double %138, double* %134, align 8
  %139 = getelementptr inbounds double, double* %134, i64 1
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sitofp i32 %142 to double
  store double %143, double* %139, align 8
  %144 = getelementptr inbounds double, double* %139, i64 1
  store double 0.000000e+00, double* %144, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = getelementptr inbounds [7 x double], [7 x double]* %18, i64 0, i64 0
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %150 = call i32 @av_expr_parse_and_eval(double* %19, i32 %147, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @filter_frame.var_names, i64 0, i64 0), double* %148, i32* null, i32* null, i32* null, i32* null, i32 0, i32 0, %struct.TYPE_13__* %149)
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %14, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %115
  br label %276

154:                                              ; preds = %115
  %155 = load double, double* %19, align 8
  %156 = call i32 @lrintf(double %155)
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %16, align 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %15, align 4
  %165 = mul nsw i32 %163, %164
  %166 = add nsw i32 %160, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %159, i64 %167
  store i32 %156, i32* %168, align 4
  br label %169

169:                                              ; preds = %154
  %170 = load i32, i32* %16, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %16, align 4
  br label %94

172:                                              ; preds = %94
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %15, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %15, align 4
  br label %87

176:                                              ; preds = %87
  br label %272

177:                                              ; preds = %72
  %178 = load i64*, i64** %11, align 8
  %179 = icmp ne i64* %178, null
  br i1 %179, label %180, label %230

180:                                              ; preds = %177
  store i32 0, i32* %20, align 4
  br label %181

181:                                              ; preds = %226, %180
  %182 = load i32, i32* %20, align 4
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp slt i32 %182, %185
  br i1 %186, label %187, label %229

187:                                              ; preds = %181
  store i32 0, i32* %21, align 4
  br label %188

188:                                              ; preds = %222, %187
  %189 = load i32, i32* %21, align 4
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %225

194:                                              ; preds = %188
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = load i64*, i64** %11, align 8
  %199 = load i32, i32* %21, align 4
  %200 = load i32, i32* %13, align 4
  %201 = load i32, i32* %20, align 4
  %202 = mul nsw i32 %200, %201
  %203 = add nsw i32 %199, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %198, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = add i64 129, %206
  %208 = getelementptr inbounds i32, i32* %197, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %21, align 4
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %20, align 4
  %218 = mul nsw i32 %216, %217
  %219 = add nsw i32 %213, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %212, i64 %220
  store i32 %209, i32* %221, align 4
  br label %222

222:                                              ; preds = %194
  %223 = load i32, i32* %21, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %21, align 4
  br label %188

225:                                              ; preds = %188
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %20, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %20, align 4
  br label %181

229:                                              ; preds = %181
  br label %271

230:                                              ; preds = %177
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 2
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 0
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %24, align 4
  store i32 0, i32* %22, align 4
  br label %236

236:                                              ; preds = %267, %230
  %237 = load i32, i32* %22, align 4
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp slt i32 %237, %240
  br i1 %241, label %242, label %270

242:                                              ; preds = %236
  store i32 0, i32* %23, align 4
  br label %243

243:                                              ; preds = %263, %242
  %244 = load i32, i32* %23, align 4
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp slt i32 %244, %247
  br i1 %248, label %249, label %266

249:                                              ; preds = %243
  %250 = load i32, i32* %24, align 4
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %23, align 4
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %22, align 4
  %259 = mul nsw i32 %257, %258
  %260 = add nsw i32 %254, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %253, i64 %261
  store i32 %250, i32* %262, align 4
  br label %263

263:                                              ; preds = %249
  %264 = load i32, i32* %23, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %23, align 4
  br label %243

266:                                              ; preds = %243
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %22, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %22, align 4
  br label %236

270:                                              ; preds = %236
  br label %271

271:                                              ; preds = %270, %229
  br label %272

272:                                              ; preds = %271, %176
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %274 = load i32*, i32** %10, align 8
  %275 = call i32 @ff_filter_frame(%struct.TYPE_12__* %273, i32* %274)
  store i32 %275, i32* %14, align 4
  store i32* null, i32** %10, align 8
  br label %276

276:                                              ; preds = %272, %153, %68, %60
  %277 = call i32 @av_frame_free(i32** %5)
  %278 = call i32 @av_frame_free(i32** %10)
  %279 = load i32, i32* %14, align 4
  store i32 %279, i32* %3, align 4
  br label %280

280:                                              ; preds = %276, %45
  %281 = load i32, i32* %3, align 4
  ret i32 %281
}

declare dso_local i32 @ff_filter_frame(%struct.TYPE_12__*, i32*) #1

declare dso_local %struct.TYPE_14__* @av_buffer_alloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @av_frame_clone(i32*) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_14__**) #1

declare dso_local i64* @av_frame_get_qp_table(i32*, i32*, i32*) #1

declare dso_local i32 @av_frame_set_qp_table(i32*, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @av_expr_parse_and_eval(double*, i32, i8**, double*, i32*, i32*, i32*, i32*, i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @lrintf(double) #1

declare dso_local i32 @av_frame_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
