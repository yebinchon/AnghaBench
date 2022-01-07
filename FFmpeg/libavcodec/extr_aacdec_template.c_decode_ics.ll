; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_decode_ics.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_decode_ics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, %struct.TYPE_27__*, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_29__ = type { i32, i32, i32, i32*, %struct.TYPE_31__, %struct.TYPE_28__ }
%struct.TYPE_31__ = type { i64*, i32, i32 }
%struct.TYPE_28__ = type { i8* }
%struct.TYPE_30__ = type { i64 }

@AOT_ER_AAC_ELD = common dso_local global i64 0, align 8
@AOT_ER_AAC_LC = common dso_local global i64 0, align 8
@AOT_ER_AAC_LTP = common dso_local global i64 0, align 8
@AOT_ER_AAC_LD = common dso_local global i64 0, align 8
@EIGHT_SHORT_SEQUENCE = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Pulse tool not allowed in eight short sequence.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Pulse data corrupt or invalid.\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Gain control\00", align 1
@AOT_AAC_MAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_32__*, %struct.TYPE_29__*, i32*, i32, i32)* @decode_ics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_ics(%struct.TYPE_32__* %0, %struct.TYPE_29__* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_30__, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.TYPE_31__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %7, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %21, i32 0, i32 5
  store %struct.TYPE_28__* %22, %struct.TYPE_28__** %13, align 8
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %23, i32 0, i32 4
  store %struct.TYPE_31__* %24, %struct.TYPE_31__** %14, align 8
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %15, align 8
  store i32 0, i32* %19, align 4
  %28 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i64 1
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AOT_ER_AAC_ELD, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %17, align 4
  %38 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i64 1
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AOT_ER_AAC_LC, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %77, label %47

47:                                               ; preds = %5
  %48 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i64 1
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AOT_ER_AAC_LTP, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %77, label %57

57:                                               ; preds = %47
  %58 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AOT_ER_AAC_LD, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %77, label %67

67:                                               ; preds = %57
  %68 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i64 1
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @AOT_ER_AAC_ELD, align 8
  %76 = icmp eq i64 %74, %75
  br label %77

77:                                               ; preds = %67, %57, %47, %5
  %78 = phi i1 [ true, %57 ], [ true, %47 ], [ true, %5 ], [ %76, %67 ]
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %18, align 4
  %80 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @get_bits(i32* %81, i32 8)
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %85
  %89 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %90 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @decode_ics_info(%struct.TYPE_32__* %89, %struct.TYPE_31__* %90, i32* %91)
  store i32 %92, i32* %20, align 4
  %93 = load i32, i32* %20, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %269

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %85, %77
  %98 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %107 = call i32 @decode_band_types(%struct.TYPE_32__* %98, i32 %101, i32 %104, i32* %105, %struct.TYPE_31__* %106)
  store i32 %107, i32* %20, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %97
  br label %269

110:                                              ; preds = %97
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* %16, align 4
  %117 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @decode_scalefactors(%struct.TYPE_32__* %111, i32 %114, i32* %115, i32 %116, %struct.TYPE_31__* %117, i32 %120, i32 %123)
  store i32 %124, i32* %20, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %110
  br label %269

127:                                              ; preds = %110
  store i32 0, i32* %19, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %235, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %17, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %171, label %133

133:                                              ; preds = %130
  %134 = load i32*, i32** %9, align 8
  %135 = call i8* @get_bits1(i32* %134)
  %136 = ptrtoint i8* %135 to i32
  store i32 %136, i32* %19, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %171

138:                                              ; preds = %133
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %139, i32 0, i32 0
  %141 = load i64*, i64** %140, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @EIGHT_SHORT_SEQUENCE, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %138
  %147 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @AV_LOG_ERROR, align 4
  %151 = call i32 @av_log(i32 %149, i32 %150, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %152 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %152, i32* %20, align 4
  br label %269

153:                                              ; preds = %138
  %154 = load i32*, i32** %9, align 8
  %155 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i64 @decode_pulses(%struct.TYPE_30__* %12, i32* %154, i32 %157, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %153
  %164 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @AV_LOG_ERROR, align 4
  %168 = call i32 @av_log(i32 %166, i32 %167, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %169 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %169, i32* %20, align 4
  br label %269

170:                                              ; preds = %153
  br label %171

171:                                              ; preds = %170, %133, %130
  %172 = load i32*, i32** %9, align 8
  %173 = call i8* @get_bits1(i32* %172)
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %174, i32 0, i32 0
  store i8* %173, i8** %175, align 8
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %193

180:                                              ; preds = %171
  %181 = load i32, i32* %18, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %193, label %183

183:                                              ; preds = %180
  %184 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %186 = load i32*, i32** %9, align 8
  %187 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %188 = call i32 @decode_tns(%struct.TYPE_32__* %184, %struct.TYPE_28__* %185, i32* %186, %struct.TYPE_31__* %187)
  store i32 %188, i32* %20, align 4
  %189 = load i32, i32* %20, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %183
  br label %269

192:                                              ; preds = %183
  br label %193

193:                                              ; preds = %192, %180, %171
  %194 = load i32, i32* %17, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %216, label %196

196:                                              ; preds = %193
  %197 = load i32*, i32** %9, align 8
  %198 = call i8* @get_bits1(i32* %197)
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %216

200:                                              ; preds = %196
  %201 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %202 = load i32*, i32** %9, align 8
  %203 = call i32 @decode_gain_control(%struct.TYPE_29__* %201, i32* %202)
  %204 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %215, label %208

208:                                              ; preds = %200
  %209 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @avpriv_report_missing_feature(i32 %211, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %213 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %213, i32 0, i32 0
  store i32 1, i32* %214, align 8
  br label %215

215:                                              ; preds = %208, %200
  br label %216

216:                                              ; preds = %215, %196, %193
  %217 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %234

221:                                              ; preds = %216
  %222 = load i32, i32* %18, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %221
  %225 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %227 = load i32*, i32** %9, align 8
  %228 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %229 = call i32 @decode_tns(%struct.TYPE_32__* %225, %struct.TYPE_28__* %226, i32* %227, %struct.TYPE_31__* %228)
  store i32 %229, i32* %20, align 4
  %230 = load i32, i32* %20, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %224
  br label %269

233:                                              ; preds = %224
  br label %234

234:                                              ; preds = %233, %221, %216
  br label %235

235:                                              ; preds = %234, %127
  %236 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %237 = load i32*, i32** %15, align 8
  %238 = load i32*, i32** %9, align 8
  %239 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %19, align 4
  %243 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %244 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @decode_spectrum_and_dequant(%struct.TYPE_32__* %236, i32* %237, i32* %238, i32 %241, i32 %242, %struct.TYPE_30__* %12, %struct.TYPE_31__* %243, i32 %246)
  store i32 %247, i32* %20, align 4
  %248 = load i32, i32* %20, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %235
  br label %269

251:                                              ; preds = %235
  %252 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_27__*, %struct.TYPE_27__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %254, i64 1
  %256 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @AOT_AAC_MAIN, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %268

261:                                              ; preds = %251
  %262 = load i32, i32* %10, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %268, label %264

264:                                              ; preds = %261
  %265 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %266 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %267 = call i32 @apply_prediction(%struct.TYPE_32__* %265, %struct.TYPE_29__* %266)
  br label %268

268:                                              ; preds = %264, %261, %251
  store i32 0, i32* %6, align 4
  br label %273

269:                                              ; preds = %250, %232, %191, %163, %146, %126, %109, %95
  %270 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %271 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %270, i32 0, i32 0
  store i8* null, i8** %271, align 8
  %272 = load i32, i32* %20, align 4
  store i32 %272, i32* %6, align 4
  br label %273

273:                                              ; preds = %269, %268
  %274 = load i32, i32* %6, align 4
  ret i32 %274
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @decode_ics_info(%struct.TYPE_32__*, %struct.TYPE_31__*, i32*) #1

declare dso_local i32 @decode_band_types(%struct.TYPE_32__*, i32, i32, i32*, %struct.TYPE_31__*) #1

declare dso_local i32 @decode_scalefactors(%struct.TYPE_32__*, i32, i32*, i32, %struct.TYPE_31__*, i32, i32) #1

declare dso_local i8* @get_bits1(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i64 @decode_pulses(%struct.TYPE_30__*, i32*, i32, i32) #1

declare dso_local i32 @decode_tns(%struct.TYPE_32__*, %struct.TYPE_28__*, i32*, %struct.TYPE_31__*) #1

declare dso_local i32 @decode_gain_control(%struct.TYPE_29__*, i32*) #1

declare dso_local i32 @avpriv_report_missing_feature(i32, i8*) #1

declare dso_local i32 @decode_spectrum_and_dequant(%struct.TYPE_32__*, i32*, i32*, i32, i32, %struct.TYPE_30__*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @apply_prediction(%struct.TYPE_32__*, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
