; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_encx264.c_apply_h264_level.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_encx264.c_apply_h264_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_9__, %struct.TYPE_10__, i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_10__ = type { i64, double, i32, i32 }

@hb_h264_level_names = common dso_local global i8** null, align 8
@hb_h264_level_values = common dso_local global i32* null, align 8
@x264_levels = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"apply_h264_level: invalid level %s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"apply_h264_level: no level specified\00", align 1
@X264_RC_CRF = common dso_local global i64 0, align 8
@X264_CQM_FLAT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [61 x i8] c"apply_h264_level: invalid resolution (width: %d, height: %d)\00", align 1
@.str.3 = private unnamed_addr constant [82 x i8] c"apply_h264_level [warning]: interlaced flag not supported for level %s, disabling\00", align 1
@X264_B_PYRAMID_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [107 x i8] c"apply_h264_level [warning]: frame size (%dx%d, %d macroblocks) too high for level %s (max. %d macroblocks)\00", align 1
@.str.5 = private unnamed_addr constant [88 x i8] c"apply_h264_level [warning]: framerate (%.3f) too high for level %s at %dx%d (max. %.3f)\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"apply_h264_level [warning]: frame too wide (%d) for level %s (max. %d)\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"apply_h264_level [warning]: frame too tall (%d) for level %s (max. %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apply_h264_level(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %13, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %95

27:                                               ; preds = %5
  %28 = load i8*, i8** %9, align 8
  %29 = load i8**, i8*** @hb_h264_level_names, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcasecmp(i8* %28, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %95

34:                                               ; preds = %27
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %85, %34
  %36 = load i32*, i32** @hb_h264_level_values, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %88

42:                                               ; preds = %35
  %43 = load i8**, i8*** @hb_h264_level_names, align 8
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @strcmp(i8* %47, i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %84, label %51

51:                                               ; preds = %42
  %52 = load i32*, i32** @hb_h264_level_values, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %21, align 4
  store i32 0, i32* %14, align 4
  br label %57

57:                                               ; preds = %80, %51
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** @x264_levels, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %57
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** @x264_levels, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %21, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %65
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** @x264_levels, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i64 %77
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %13, align 8
  br label %83

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %57

83:                                               ; preds = %74, %57
  br label %88

84:                                               ; preds = %42
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %35

88:                                               ; preds = %83, %35
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %90 = icmp eq %struct.TYPE_12__* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %92)
  store i32 -1, i32* %6, align 4
  br label %473

94:                                               ; preds = %88
  br label %108

95:                                               ; preds = %27, %5
  %96 = load i8*, i8** %9, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load i8*, i8** %9, align 8
  %100 = load i8**, i8*** @hb_h264_level_names, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @strcasecmp(i8* %99, i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %98
  store i32 0, i32* %6, align 4
  br label %473

106:                                              ; preds = %98, %95
  %107 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %473

108:                                              ; preds = %94
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 10
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @X264_RC_CRF, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %108
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 10
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load double, double* %118, align 8
  %120 = fcmp olt double %119, 1.000000e+00
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  store i32 3, i32* %22, align 4
  br label %144

122:                                              ; preds = %115, %108
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 9
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %122
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @X264_CQM_FLAT, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %128, %122
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 10
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i32 2, i32* %22, align 4
  br label %141

140:                                              ; preds = %134
  store i32 1, i32* %22, align 4
  br label %141

141:                                              ; preds = %140, %139
  br label %143

142:                                              ; preds = %128
  store i32 0, i32* %22, align 4
  br label %143

143:                                              ; preds = %142, %141
  br label %144

144:                                              ; preds = %143, %121
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = icmp sle i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %144
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = icmp sle i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %149, %144
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %157, i32 %160)
  store i32 -1, i32* %6, align 4
  br label %473

162:                                              ; preds = %149
  store i32 0, i32* %20, align 4
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 7
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %188

167:                                              ; preds = %162
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 8
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %167
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 13
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %172, %167
  %178 = load i32, i32* %11, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i8*, i8** %9, align 8
  %182 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0), i8* %181)
  br label %183

183:                                              ; preds = %180, %177
  store i32 1, i32* %20, align 4
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 13
  store i64 0, i64* %185, align 8
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 8
  store i64 0, i64* %187, align 8
  br label %188

188:                                              ; preds = %183, %172, %162
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 15
  %193 = sdiv i32 %192, 16
  store i32 %193, i32* %17, align 4
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, 15
  %198 = sdiv i32 %197, 16
  store i32 %198, i32* %18, align 4
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 8
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %188
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 13
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %203, %188
  %209 = load i32, i32* %18, align 4
  %210 = add nsw i32 %209, 1
  %211 = and i32 %210, -2
  store i32 %211, i32* %18, align 4
  br label %212

212:                                              ; preds = %208, %203
  %213 = load i32, i32* %17, align 4
  %214 = load i32, i32* %18, align 4
  %215 = mul nsw i32 %213, %214
  store i32 %215, i32* %15, align 4
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = icmp sle i32 %218, 0
  br i1 %219, label %225, label %220

220:                                              ; preds = %212
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = icmp sle i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %220, %212
  store i32 0, i32* %16, align 4
  store float 0.000000e+00, float* %12, align 4
  br label %245

226:                                              ; preds = %220
  %227 = load i32, i32* %15, align 4
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 4
  %231 = mul nsw i32 %227, %230
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = sdiv i32 %231, %234
  store i32 %235, i32* %16, align 4
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = sitofp i32 %238 to float
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = sitofp i32 %242 to float
  %244 = fdiv float %239, %243
  store float %244, float* %12, align 4
  br label %245

245:                                              ; preds = %226, %225
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 1
  br i1 %249, label %250, label %280

250:                                              ; preds = %245
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %15, align 4
  %255 = sdiv i32 %253, %254
  %256 = call i8* @MIN(i32 %255, i32 16)
  %257 = call i32 @MAX(i8* %256, i32 1)
  store i32 %257, i32* %23, align 4
  %258 = load i32, i32* %23, align 4
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 4
  %262 = call i8* @MIN(i32 %258, i32 %261)
  %263 = ptrtoint i8* %262 to i32
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 6
  store i32 %263, i32* %265, align 4
  %266 = load i32, i32* %23, align 4
  %267 = icmp slt i32 %266, 2
  br i1 %267, label %268, label %271

268:                                              ; preds = %250
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 12
  store i64 0, i64* %270, align 8
  br label %279

271:                                              ; preds = %250
  %272 = load i32, i32* %23, align 4
  %273 = icmp slt i32 %272, 4
  br i1 %273, label %274, label %278

274:                                              ; preds = %271
  %275 = load i32, i32* @X264_B_PYRAMID_NONE, align 4
  %276 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 11
  store i32 %275, i32* %277, align 8
  br label %278

278:                                              ; preds = %274, %271
  br label %279

279:                                              ; preds = %278, %268
  br label %280

280:                                              ; preds = %279, %245
  %281 = load i32, i32* %22, align 4
  %282 = icmp ne i32 %281, 3
  br i1 %282, label %283, label %358

283:                                              ; preds = %280
  %284 = load i32, i32* %22, align 4
  %285 = icmp eq i32 %284, 2
  br i1 %285, label %286, label %287

286:                                              ; preds = %283
  br label %292

287:                                              ; preds = %283
  %288 = load i32, i32* %22, align 4
  %289 = icmp eq i32 %288, 1
  %290 = zext i1 %289 to i64
  %291 = select i1 %289, i32 5, i32 4
  br label %292

292:                                              ; preds = %287, %286
  %293 = phi i32 [ 12, %286 ], [ %291, %287 ]
  store i32 %293, i32* %24, align 4
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 10
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %309, label %299

299:                                              ; preds = %292
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* %24, align 4
  %304 = mul nsw i32 %302, %303
  %305 = sdiv i32 %304, 4
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 10
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 2
  store i32 %305, i32* %308, align 8
  br label %325

309:                                              ; preds = %292
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 10
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* %24, align 4
  %318 = mul nsw i32 %316, %317
  %319 = sdiv i32 %318, 4
  %320 = call i8* @MIN(i32 %313, i32 %319)
  %321 = ptrtoint i8* %320 to i32
  %322 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 10
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 2
  store i32 %321, i32* %324, align 8
  br label %325

325:                                              ; preds = %309, %299
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 10
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %341, label %331

331:                                              ; preds = %325
  %332 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* %24, align 4
  %336 = mul nsw i32 %334, %335
  %337 = sdiv i32 %336, 4
  %338 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 10
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 3
  store i32 %337, i32* %340, align 4
  br label %357

341:                                              ; preds = %325
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 10
  %344 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %343, i32 0, i32 3
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 3
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* %24, align 4
  %350 = mul nsw i32 %348, %349
  %351 = sdiv i32 %350, 4
  %352 = call i8* @MIN(i32 %345, i32 %351)
  %353 = ptrtoint i8* %352 to i32
  %354 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %354, i32 0, i32 10
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 3
  store i32 %353, i32* %356, align 4
  br label %357

357:                                              ; preds = %341, %331
  br label %358

358:                                              ; preds = %357, %280
  %359 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %359, i32 0, i32 9
  %361 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %363, i32 0, i32 4
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %367 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %366, i32 0, i32 8
  %368 = load i64, i64* %367, align 8
  %369 = icmp ne i64 %368, 0
  %370 = xor i1 %369, true
  %371 = xor i1 %370, true
  %372 = zext i1 %371 to i32
  %373 = ashr i32 %365, %372
  %374 = call i8* @MIN(i32 %362, i32 %373)
  %375 = ptrtoint i8* %374 to i32
  %376 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 9
  %378 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %377, i32 0, i32 0
  store i32 %375, i32* %378, align 8
  %379 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %380 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %379, i32 0, i32 5
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* %15, align 4
  %383 = icmp slt i32 %381, %382
  br i1 %383, label %384, label %399

384:                                              ; preds = %358
  %385 = load i32, i32* %11, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %398

387:                                              ; preds = %384
  %388 = load i32, i32* %17, align 4
  %389 = mul nsw i32 %388, 16
  %390 = load i32, i32* %18, align 4
  %391 = mul nsw i32 %390, 16
  %392 = load i32, i32* %15, align 4
  %393 = load i8*, i8** %9, align 8
  %394 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %395 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %394, i32 0, i32 5
  %396 = load i32, i32* %395, align 4
  %397 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i64 0, i64 0), i32 %389, i32 %391, i32 %392, i8* %393, i32 %396)
  br label %398

398:                                              ; preds = %387, %384
  store i32 1, i32* %20, align 4
  br label %429

399:                                              ; preds = %358
  %400 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %401 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %400, i32 0, i32 6
  %402 = load i32, i32* %401, align 8
  %403 = load i32, i32* %16, align 4
  %404 = icmp slt i32 %402, %403
  br i1 %404, label %405, label %428

405:                                              ; preds = %399
  %406 = load i32, i32* %11, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %427

408:                                              ; preds = %405
  %409 = load float, float* %12, align 4
  %410 = fpext float %409 to double
  %411 = load i8*, i8** %9, align 8
  %412 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %413 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 8
  %415 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %416 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %419 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %418, i32 0, i32 6
  %420 = load i32, i32* %419, align 8
  %421 = sitofp i32 %420 to float
  %422 = load i32, i32* %15, align 4
  %423 = sitofp i32 %422 to float
  %424 = fdiv float %421, %423
  %425 = fpext float %424 to double
  %426 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.5, i64 0, i64 0), double %410, i8* %411, i32 %414, i32 %417, double %425)
  br label %427

427:                                              ; preds = %408, %405
  store i32 1, i32* %20, align 4
  br label %428

428:                                              ; preds = %427, %399
  br label %429

429:                                              ; preds = %428, %398
  %430 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %431 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %430, i32 0, i32 5
  %432 = load i32, i32* %431, align 4
  %433 = mul nsw i32 %432, 8
  %434 = call i32 @sqrt(i32 %433)
  store i32 %434, i32* %19, align 4
  %435 = load i32, i32* %17, align 4
  %436 = load i32, i32* %19, align 4
  %437 = icmp sgt i32 %435, %436
  br i1 %437, label %438, label %450

438:                                              ; preds = %429
  %439 = load i32, i32* %11, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %449

441:                                              ; preds = %438
  %442 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %443 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 8
  %445 = load i8*, i8** %9, align 8
  %446 = load i32, i32* %19, align 4
  %447 = mul nsw i32 %446, 16
  %448 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), i32 %444, i8* %445, i32 %447)
  br label %449

449:                                              ; preds = %441, %438
  store i32 1, i32* %20, align 4
  br label %450

450:                                              ; preds = %449, %429
  %451 = load i32, i32* %18, align 4
  %452 = load i32, i32* %19, align 4
  %453 = icmp sgt i32 %451, %452
  br i1 %453, label %454, label %466

454:                                              ; preds = %450
  %455 = load i32, i32* %11, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %465

457:                                              ; preds = %454
  %458 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %459 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %458, i32 0, i32 2
  %460 = load i32, i32* %459, align 4
  %461 = load i8*, i8** %9, align 8
  %462 = load i32, i32* %19, align 4
  %463 = mul nsw i32 %462, 16
  %464 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i64 0, i64 0), i32 %460, i8* %461, i32 %463)
  br label %465

465:                                              ; preds = %457, %454
  store i32 1, i32* %20, align 4
  br label %466

466:                                              ; preds = %465, %450
  %467 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %468 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %471 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %470, i32 0, i32 7
  store i32 %469, i32* %471, align 8
  %472 = load i32, i32* %20, align 4
  store i32 %472, i32* %6, align 4
  br label %473

473:                                              ; preds = %466, %154, %106, %105, %91
  %474 = load i32, i32* %6, align 4
  ret i32 %474
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @hb_error(i8*, ...) #1

declare dso_local i32 @hb_log(i8*, ...) #1

declare dso_local i32 @MAX(i8*, i32) #1

declare dso_local i8* @MIN(i32, i32) #1

declare dso_local i32 @sqrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
