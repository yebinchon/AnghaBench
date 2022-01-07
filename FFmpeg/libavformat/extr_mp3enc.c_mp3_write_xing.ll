; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mp3enc.c_mp3_write_xing.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mp3enc.c_mp3_write_xing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_25__*, %struct.TYPE_22__**, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_24__ = type { i64, i32, i32, i32, i32, i8*, i32, i32, i64, i64, i32 }
%struct.TYPE_27__ = type { i8* }
%struct.TYPE_23__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"encoder\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@avpriv_mpa_freq_tab = common dso_local global i32* null, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Unsupported sample rate, not writing Xing header.\0A\00", align 1
@MPA_MONO = common dso_local global i32 0, align 4
@MPA_STEREO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"Unsupported number of channels, not writing Xing header.\0A\00", align 1
@avpriv_mpa_bitrate_tab = common dso_local global i32*** null, align 8
@xing_offtbl = common dso_local global i32** null, align 8
@XING_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"Xing\00", align 1
@XING_TOC_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"Lavc libmp3lame\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Lavf lame\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Lavf\00\00\00\00\00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*)* @mp3_write_xing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp3_write_xing(%struct.TYPE_26__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_23__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [9 x i8], align 1
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  store %struct.TYPE_24__* %26, %struct.TYPE_24__** %4, align 8
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %28, align 8
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %29, i64 %32
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %35, align 8
  store %struct.TYPE_28__* %36, %struct.TYPE_28__** %5, align 8
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %38, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %39, i64 %42
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.TYPE_27__* @av_dict_get(i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_27__* %47, %struct.TYPE_27__** %6, align 8
  store i32 -1, i32* %14, align 4
  %48 = load i32, i32* @INT_MAX, align 4
  store i32 %48, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %1
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57, %1
  store i32 0, i32* %2, align 4
  br label %383

63:                                               ; preds = %57
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %102, %63
  %65 = load i32, i32* %11, align 4
  %66 = load i32*, i32** @avpriv_mpa_freq_tab, align 8
  %67 = call i32 @FF_ARRAY_ELEMS(i32* %66)
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %105

69:                                               ; preds = %64
  %70 = load i32*, i32** @avpriv_mpa_freq_tab, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %19, align 4
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %19, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  store i32 3, i32* %17, align 4
  br label %100

81:                                               ; preds = %69
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %19, align 4
  %86 = sdiv i32 %85, 2
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store i32 2, i32* %17, align 4
  br label %99

89:                                               ; preds = %81
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %19, align 4
  %94 = sdiv i32 %93, 4
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  store i32 0, i32* %17, align 4
  br label %98

97:                                               ; preds = %89
  br label %102

98:                                               ; preds = %96
  br label %99

99:                                               ; preds = %98, %88
  br label %100

100:                                              ; preds = %99, %80
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %10, align 4
  br label %105

102:                                              ; preds = %97
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %64

105:                                              ; preds = %100, %64
  %106 = load i32, i32* %11, align 4
  %107 = load i32*, i32** @avpriv_mpa_freq_tab, align 8
  %108 = call i32 @FF_ARRAY_ELEMS(i32* %107)
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %112 = load i32, i32* @AV_LOG_WARNING, align 4
  %113 = call i32 @av_log(%struct.TYPE_26__* %111, i32 %112, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %383

114:                                              ; preds = %105
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  switch i32 %117, label %122 [
    i32 1, label %118
    i32 2, label %120
  ]

118:                                              ; preds = %114
  %119 = load i32, i32* @MPA_MONO, align 4
  store i32 %119, i32* %12, align 4
  br label %126

120:                                              ; preds = %114
  %121 = load i32, i32* @MPA_STEREO, align 4
  store i32 %121, i32* %12, align 4
  br label %126

122:                                              ; preds = %114
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %124 = load i32, i32* @AV_LOG_WARNING, align 4
  %125 = call i32 @av_log(%struct.TYPE_26__* %123, i32 %124, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %383

126:                                              ; preds = %120, %118
  store i32 -16777216, i32* %8, align 4
  %127 = load i32, i32* %17, align 4
  %128 = shl i32 %127, 3
  %129 = or i32 224, %128
  %130 = or i32 %129, 2
  %131 = or i32 %130, 1
  %132 = shl i32 %131, 16
  %133 = load i32, i32* %8, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %10, align 4
  %136 = shl i32 %135, 2
  %137 = shl i32 %136, 8
  %138 = load i32, i32* %8, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %12, align 4
  %141 = shl i32 %140, 6
  %142 = load i32, i32* %8, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %8, align 4
  store i32 1, i32* %13, align 4
  br label %144

144:                                              ; preds = %175, %126
  %145 = load i32, i32* %13, align 4
  %146 = icmp slt i32 %145, 15
  br i1 %146, label %147, label %178

147:                                              ; preds = %144
  %148 = load i32***, i32**** @avpriv_mpa_bitrate_tab, align 8
  %149 = load i32, i32* %17, align 4
  %150 = icmp ne i32 %149, 3
  %151 = zext i1 %150 to i32
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32**, i32*** %148, i64 %152
  %154 = load i32**, i32*** %153, align 8
  %155 = getelementptr inbounds i32*, i32** %154, i64 2
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 1000, %160
  store i32 %161, i32* %20, align 4
  %162 = load i32, i32* %20, align 4
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %162, %165
  %167 = call i32 @FFABS(i32 %166)
  store i32 %167, i32* %21, align 4
  %168 = load i32, i32* %21, align 4
  %169 = load i32, i32* %15, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %147
  %172 = load i32, i32* %21, align 4
  store i32 %172, i32* %15, align 4
  %173 = load i32, i32* %13, align 4
  store i32 %173, i32* %14, align 4
  br label %174

174:                                              ; preds = %171, %147
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %13, align 4
  br label %144

178:                                              ; preds = %144
  %179 = load i32, i32* %14, align 4
  %180 = icmp sge i32 %179, 0
  %181 = zext i1 %180 to i32
  %182 = call i32 @av_assert0(i32 %181)
  %183 = load i32, i32* %14, align 4
  store i32 %183, i32* %13, align 4
  br label %184

184:                                              ; preds = %233, %178
  %185 = load i32, i32* %13, align 4
  %186 = shl i32 %185, 12
  store i32 %186, i32* %22, align 4
  %187 = load i32, i32* %13, align 4
  %188 = icmp eq i32 15, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  store i32 -1, i32* %2, align 4
  br label %383

190:                                              ; preds = %184
  %191 = load i32, i32* %22, align 4
  %192 = load i32, i32* %8, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %8, align 4
  %195 = call i32 @avpriv_mpegaudio_decode_header(%struct.TYPE_23__* %9, i32 %194)
  store i32 %195, i32* %16, align 4
  %196 = load i32, i32* %16, align 4
  %197 = icmp sge i32 %196, 0
  %198 = zext i1 %197 to i32
  %199 = call i32 @av_assert0(i32 %198)
  %200 = load i32**, i32*** @xing_offtbl, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 1
  %204 = zext i1 %203 to i32
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32*, i32** %200, i64 %205
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 1
  %211 = zext i1 %210 to i32
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %207, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %214, 4
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 8
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @XING_SIZE, align 4
  %222 = add nsw i32 %220, %221
  store i32 %222, i32* %18, align 4
  %223 = load i32, i32* %18, align 4
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = icmp sle i32 %223, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %190
  br label %236

228:                                              ; preds = %190
  %229 = load i32, i32* %22, align 4
  %230 = xor i32 %229, -1
  %231 = load i32, i32* %8, align 4
  %232 = and i32 %231, %230
  store i32 %232, i32* %8, align 4
  br label %233

233:                                              ; preds = %228
  %234 = load i32, i32* %13, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %13, align 4
  br label %184

236:                                              ; preds = %227
  %237 = call i32 @avio_open_dyn_buf(%struct.TYPE_25__** %7)
  store i32 %237, i32* %16, align 4
  %238 = load i32, i32* %16, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  %241 = load i32, i32* %16, align 4
  store i32 %241, i32* %2, align 4
  br label %383

242:                                              ; preds = %236
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %244 = load i32, i32* %8, align 4
  %245 = call i32 @avio_wb32(%struct.TYPE_25__* %243, i32 %244)
  %246 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = sub nsw i32 %249, 4
  %251 = call i32 @ffio_fill(%struct.TYPE_25__* %246, i32 0, i32 %250)
  %252 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %253 = call i32 @ffio_wfourcc(%struct.TYPE_25__* %252, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %254 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %255 = call i32 @avio_wb32(%struct.TYPE_25__* %254, i32 15)
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %258, i32 0, i32 2
  store i32 %257, i32* %259, align 4
  %260 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %260, i32 0, i32 3
  store i32 1, i32* %261, align 8
  %262 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 9
  store i64 0, i64* %263, align 8
  %264 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %264, i32 0, i32 8
  store i64 0, i64* %265, align 8
  %266 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %267 = call i32 @avio_wb32(%struct.TYPE_25__* %266, i32 0)
  %268 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %269 = call i32 @avio_wb32(%struct.TYPE_25__* %268, i32 0)
  store i32 0, i32* %11, align 4
  br label %270

270:                                              ; preds = %282, %242
  %271 = load i32, i32* %11, align 4
  %272 = load i32, i32* @XING_TOC_SIZE, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %285

274:                                              ; preds = %270
  %275 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %276 = load i32, i32* %11, align 4
  %277 = mul nsw i32 255, %276
  %278 = load i32, i32* @XING_TOC_SIZE, align 4
  %279 = sdiv i32 %277, %278
  %280 = trunc i32 %279 to i8
  %281 = call i32 @avio_w8(%struct.TYPE_25__* %275, i8 signext %280)
  br label %282

282:                                              ; preds = %274
  %283 = load i32, i32* %11, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %11, align 4
  br label %270

285:                                              ; preds = %270
  %286 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %287 = call i32 @avio_wb32(%struct.TYPE_25__* %286, i32 0)
  %288 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %289 = icmp ne %struct.TYPE_27__* %288, null
  br i1 %289, label %290, label %322

290:                                              ; preds = %285
  %291 = bitcast [9 x i8]* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %291, i8 0, i64 9, i1 false)
  %292 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %292, i32 0, i32 0
  %294 = load i8*, i8** %293, align 8
  %295 = call i32 @strlen(i8* %294)
  %296 = sext i32 %295 to i64
  %297 = icmp ugt i64 %296, 9
  br i1 %297, label %298, label %307

298:                                              ; preds = %290
  %299 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %299, i32 0, i32 0
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %307, label %304

304:                                              ; preds = %298
  %305 = getelementptr inbounds [9 x i8], [9 x i8]* %23, i64 0, i64 0
  %306 = call i32 @memcpy(i8* %305, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 9)
  br label %318

307:                                              ; preds = %298, %290
  %308 = getelementptr inbounds [9 x i8], [9 x i8]* %23, i64 0, i64 0
  %309 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %309, i32 0, i32 0
  %311 = load i8*, i8** %310, align 8
  %312 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %312, i32 0, i32 0
  %314 = load i8*, i8** %313, align 8
  %315 = call i32 @strlen(i8* %314)
  %316 = call i32 @FFMIN(i32 %315, i32 9)
  %317 = call i32 @memcpy(i8* %308, i8* %311, i32 %316)
  br label %318

318:                                              ; preds = %307, %304
  %319 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %320 = getelementptr inbounds [9 x i8], [9 x i8]* %23, i64 0, i64 0
  %321 = call i32 @avio_write(%struct.TYPE_25__* %319, i8* %320, i32 9)
  br label %325

322:                                              ; preds = %285
  %323 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %324 = call i32 @avio_write(%struct.TYPE_25__* %323, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 9)
  br label %325

325:                                              ; preds = %322, %318
  %326 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %327 = call i32 @avio_w8(%struct.TYPE_25__* %326, i8 signext 0)
  %328 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %329 = call i32 @avio_w8(%struct.TYPE_25__* %328, i8 signext 0)
  %330 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %331 = call i32 @ffio_fill(%struct.TYPE_25__* %330, i32 0, i32 8)
  %332 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %333 = call i32 @avio_w8(%struct.TYPE_25__* %332, i8 signext 0)
  %334 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %335 = call i32 @avio_w8(%struct.TYPE_25__* %334, i8 signext 0)
  %336 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %337 = call i32 @avio_wb24(%struct.TYPE_25__* %336, i32 0)
  %338 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %339 = call i32 @avio_w8(%struct.TYPE_25__* %338, i8 signext 0)
  %340 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %341 = call i32 @avio_w8(%struct.TYPE_25__* %340, i8 signext 0)
  %342 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %343 = call i32 @avio_wb16(%struct.TYPE_25__* %342, i32 0)
  %344 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %345 = call i32 @avio_wb32(%struct.TYPE_25__* %344, i32 0)
  %346 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %347 = call i32 @avio_wb16(%struct.TYPE_25__* %346, i32 0)
  %348 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %349 = call i32 @avio_wb16(%struct.TYPE_25__* %348, i32 0)
  %350 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %351 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 2
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* %18, align 4
  %354 = sub nsw i32 %352, %353
  %355 = call i32 @ffio_fill(%struct.TYPE_25__* %350, i32 0, i32 %354)
  %356 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %357 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %357, i32 0, i32 5
  %359 = call i32 @avio_close_dyn_buf(%struct.TYPE_25__* %356, i8** %358)
  %360 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %360, i32 0, i32 4
  store i32 %359, i32* %361, align 4
  %362 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %363 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %362, i32 0, i32 0
  %364 = load %struct.TYPE_25__*, %struct.TYPE_25__** %363, align 8
  %365 = call i32 @avio_tell(%struct.TYPE_25__* %364)
  %366 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %366, i32 0, i32 7
  store i32 %365, i32* %367, align 4
  %368 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %368, i32 0, i32 0
  %370 = load %struct.TYPE_25__*, %struct.TYPE_25__** %369, align 8
  %371 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %371, i32 0, i32 5
  %373 = load i8*, i8** %372, align 8
  %374 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %374, i32 0, i32 4
  %376 = load i32, i32* %375, align 4
  %377 = call i32 @avio_write(%struct.TYPE_25__* %370, i8* %373, i32 %376)
  %378 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %379 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %378, i32 0, i32 4
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %382 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %381, i32 0, i32 6
  store i32 %380, i32* %382, align 8
  store i32 0, i32* %2, align 4
  br label %383

383:                                              ; preds = %325, %240, %189, %122, %110, %62
  %384 = load i32, i32* %2, align 4
  ret i32 %384
}

declare dso_local %struct.TYPE_27__* @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_26__*, i32, i8*) #1

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @avpriv_mpegaudio_decode_header(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @avio_open_dyn_buf(%struct.TYPE_25__**) #1

declare dso_local i32 @avio_wb32(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ffio_fill(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @ffio_wfourcc(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @avio_w8(%struct.TYPE_25__*, i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @avio_write(%struct.TYPE_25__*, i8*, i32) #1

declare dso_local i32 @avio_wb24(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @avio_wb16(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @avio_close_dyn_buf(%struct.TYPE_25__*, i8**) #1

declare dso_local i32 @avio_tell(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
