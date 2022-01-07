; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_pan.c_config_props.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_pan.c_config_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32**, i32, i32*, i32, i64, i32, i64 }

@MAX_CHANNELS = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"af_pan supports a maximum of %d channels. Feel free to ask for a higher limit.\0A\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ich\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"och\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"icl\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"uch\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"Degenerate coefficients while renormalizing\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ocl\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"%s%.3g i%d\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"o%d = %s\0A\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"Pure channel mapping detected:\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c" M\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @config_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_props(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %4, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %5, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %77

24:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %73, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @MAX_CHANNELS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %76

29:                                               ; preds = %25
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = ashr i32 %32, %33
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %66, %37
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %38
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %55, i32* %65, align 4
  br label %66

66:                                               ; preds = %44
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %38

69:                                               ; preds = %38
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %69, %29
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %25

76:                                               ; preds = %25
  br label %77

77:                                               ; preds = %76, %1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MAX_CHANNELS, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @MAX_CHANNELS, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %83, %77
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = load i32, i32* @AV_LOG_ERROR, align 4
  %92 = load i32, i32* @MAX_CHANNELS, align 4
  %93 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %90, i32 %91, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %94, i32* %2, align 4
  br label %484

95:                                               ; preds = %83
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %118 = call i32 @swr_alloc_set_opts(i32 %98, i32 %101, i32 %104, i32 %107, i32 %110, i32 %113, i32 %116, i32 0, %struct.TYPE_9__* %117)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 6
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %95
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = call i32 @AVERROR(i32 %126)
  store i32 %127, i32* %2, align 4
  br label %484

128:                                              ; preds = %95
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %146, label %133

133:                                              ; preds = %128
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @av_opt_set_int(i32 %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %139, i32 0)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %133
  %143 = load i32, i32* @EINVAL, align 4
  %144 = call i32 @AVERROR(i32 %143)
  store i32 %144, i32* %2, align 4
  br label %484

145:                                              ; preds = %133
  br label %146

146:                                              ; preds = %145, %128
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %164, label %151

151:                                              ; preds = %146
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @av_opt_set_int(i32 %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %157, i32 0)
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %151
  %161 = load i32, i32* @EINVAL, align 4
  %162 = call i32 @AVERROR(i32 %161)
  store i32 %162, i32* %2, align 4
  br label %484

163:                                              ; preds = %151
  br label %164

164:                                              ; preds = %163, %146
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %235

169:                                              ; preds = %164
  store i32 0, i32* %8, align 4
  br label %170

170:                                              ; preds = %210, %169
  %171 = load i32, i32* %8, align 4
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp slt i32 %171, %174
  br i1 %175, label %176, label %213

176:                                              ; preds = %170
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %177

177:                                              ; preds = %199, %176
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %202

183:                                              ; preds = %177
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 1
  %186 = load i32**, i32*** %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32*, i32** %186, i64 %188
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %183
  %197 = load i32, i32* %9, align 4
  store i32 %197, i32* %13, align 4
  br label %202

198:                                              ; preds = %183
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %9, align 4
  br label %177

202:                                              ; preds = %196, %177
  %203 = load i32, i32* %13, align 4
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  store i32 %203, i32* %209, align 4
  br label %210

210:                                              ; preds = %202
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %8, align 4
  br label %170

213:                                              ; preds = %170
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call i64 @av_opt_set_int(i32 %216, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %219, i32 0)
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 6
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = call i64 @av_opt_set_int(i32 %223, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %226, i32 0)
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 3
  %233 = load i32*, i32** %232, align 8
  %234 = call i32 @swr_set_channel_mapping(i32 %230, i32* %233)
  br label %361

235:                                              ; preds = %164
  store i32 0, i32* %8, align 4
  br label %236

236:                                              ; preds = %318, %235
  %237 = load i32, i32* %8, align 4
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp slt i32 %237, %240
  br i1 %241, label %242, label %321

242:                                              ; preds = %236
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* %8, align 4
  %247 = ashr i32 %245, %246
  %248 = and i32 %247, 1
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %242
  br label %318

251:                                              ; preds = %242
  store double 0.000000e+00, double* %12, align 8
  store i32 0, i32* %9, align 4
  br label %252

252:                                              ; preds = %274, %251
  %253 = load i32, i32* %9, align 4
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = icmp slt i32 %253, %256
  br i1 %257, label %258, label %277

258:                                              ; preds = %252
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 1
  %261 = load i32**, i32*** %260, align 8
  %262 = load i32, i32* %8, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32*, i32** %261, i64 %263
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %9, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = call i64 @fabs(i32 %269)
  %271 = sitofp i64 %270 to double
  %272 = load double, double* %12, align 8
  %273 = fadd double %272, %271
  store double %273, double* %12, align 8
  br label %274

274:                                              ; preds = %258
  %275 = load i32, i32* %9, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %9, align 4
  br label %252

277:                                              ; preds = %252
  %278 = load double, double* %12, align 8
  %279 = fcmp ogt double %278, -1.000000e-05
  br i1 %279, label %280, label %291

280:                                              ; preds = %277
  %281 = load double, double* %12, align 8
  %282 = fcmp olt double %281, 1.000000e-05
  br i1 %282, label %283, label %291

283:                                              ; preds = %280
  %284 = load double, double* %12, align 8
  %285 = fcmp une double %284, 0.000000e+00
  br i1 %285, label %286, label %290

286:                                              ; preds = %283
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %288 = load i32, i32* @AV_LOG_WARNING, align 4
  %289 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %287, i32 %288, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %290

290:                                              ; preds = %286, %283
  br label %318

291:                                              ; preds = %280, %277
  store i32 0, i32* %9, align 4
  br label %292

292:                                              ; preds = %314, %291
  %293 = load i32, i32* %9, align 4
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = icmp slt i32 %293, %296
  br i1 %297, label %298, label %317

298:                                              ; preds = %292
  %299 = load double, double* %12, align 8
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 1
  %302 = load i32**, i32*** %301, align 8
  %303 = load i32, i32* %8, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32*, i32** %302, i64 %304
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %9, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = sitofp i32 %310 to double
  %312 = fdiv double %311, %299
  %313 = fptosi double %312 to i32
  store i32 %313, i32* %309, align 4
  br label %314

314:                                              ; preds = %298
  %315 = load i32, i32* %9, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %9, align 4
  br label %292

317:                                              ; preds = %292
  br label %318

318:                                              ; preds = %317, %290, %250
  %319 = load i32, i32* %8, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %8, align 4
  br label %236

321:                                              ; preds = %236
  %322 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 6
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = call i64 @av_opt_set_int(i32 %324, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %327, i32 0)
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 6
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = call i64 @av_opt_set_int(i32 %331, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %334, i32 0)
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 6
  %338 = load i32, i32* %337, align 8
  %339 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i32 0, i32 1
  %341 = load i32**, i32*** %340, align 8
  %342 = getelementptr inbounds i32*, i32** %341, i64 0
  %343 = load i32*, i32** %342, align 8
  %344 = bitcast i32* %343 to double*
  %345 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %345, i32 0, i32 1
  %347 = load i32**, i32*** %346, align 8
  %348 = getelementptr inbounds i32*, i32** %347, i64 1
  %349 = load i32*, i32** %348, align 8
  %350 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 1
  %352 = load i32**, i32*** %351, align 8
  %353 = getelementptr inbounds i32*, i32** %352, i64 0
  %354 = load i32*, i32** %353, align 8
  %355 = ptrtoint i32* %349 to i64
  %356 = ptrtoint i32* %354 to i64
  %357 = sub i64 %355, %356
  %358 = sdiv exact i64 %357, 4
  %359 = trunc i64 %358 to i32
  %360 = call i32 @swr_set_matrix(i32 %338, double* %344, i32 %359)
  br label %361

361:                                              ; preds = %321, %213
  %362 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 6
  %364 = load i32, i32* %363, align 8
  %365 = call i32 @swr_init(i32 %364)
  store i32 %365, i32* %11, align 4
  %366 = load i32, i32* %11, align 4
  %367 = icmp slt i32 %366, 0
  br i1 %367, label %368, label %370

368:                                              ; preds = %361
  %369 = load i32, i32* %11, align 4
  store i32 %369, i32* %2, align 4
  br label %484

370:                                              ; preds = %361
  store i32 0, i32* %8, align 4
  br label %371

371:                                              ; preds = %433, %370
  %372 = load i32, i32* %8, align 4
  %373 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = icmp slt i32 %372, %375
  br i1 %376, label %377, label %436

377:                                              ; preds = %371
  %378 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  store i8* %378, i8** %7, align 8
  store i32 0, i32* %9, align 4
  br label %379

379:                                              ; preds = %424, %377
  %380 = load i32, i32* %9, align 4
  %381 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = icmp slt i32 %380, %383
  br i1 %384, label %385, label %427

385:                                              ; preds = %379
  %386 = load i8*, i8** %7, align 8
  %387 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %388 = getelementptr inbounds i8, i8* %387, i64 1024
  %389 = load i8*, i8** %7, align 8
  %390 = ptrtoint i8* %388 to i64
  %391 = ptrtoint i8* %389 to i64
  %392 = sub i64 %390, %391
  %393 = trunc i64 %392 to i32
  %394 = load i32, i32* %9, align 4
  %395 = icmp ne i32 %394, 0
  %396 = zext i1 %395 to i64
  %397 = select i1 %395, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %398 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %398, i32 0, i32 1
  %400 = load i32**, i32*** %399, align 8
  %401 = load i32, i32* %8, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32*, i32** %400, i64 %402
  %404 = load i32*, i32** %403, align 8
  %405 = load i32, i32* %9, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i32, i32* %404, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = sitofp i32 %408 to double
  %410 = load i32, i32* %9, align 4
  %411 = call i32 @snprintf(i8* %386, i32 %393, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %397, double %409, i32 %410)
  store i32 %411, i32* %11, align 4
  %412 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %413 = getelementptr inbounds i8, i8* %412, i64 1024
  %414 = load i8*, i8** %7, align 8
  %415 = ptrtoint i8* %413 to i64
  %416 = ptrtoint i8* %414 to i64
  %417 = sub i64 %415, %416
  %418 = trunc i64 %417 to i32
  %419 = load i32, i32* %11, align 4
  %420 = call i32 @FFMIN(i32 %418, i32 %419)
  %421 = load i8*, i8** %7, align 8
  %422 = sext i32 %420 to i64
  %423 = getelementptr inbounds i8, i8* %421, i64 %422
  store i8* %423, i8** %7, align 8
  br label %424

424:                                              ; preds = %385
  %425 = load i32, i32* %9, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %9, align 4
  br label %379

427:                                              ; preds = %379
  %428 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %429 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %430 = load i32, i32* %8, align 4
  %431 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %432 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %428, i32 %429, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %430, i8* %431)
  br label %433

433:                                              ; preds = %427
  %434 = load i32, i32* %8, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %8, align 4
  br label %371

436:                                              ; preds = %371
  %437 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %437, i32 0, i32 5
  %439 = load i64, i64* %438, align 8
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %483

441:                                              ; preds = %436
  %442 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %443 = load i32, i32* @AV_LOG_INFO, align 4
  %444 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %442, i32 %443, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %445

445:                                              ; preds = %476, %441
  %446 = load i32, i32* %8, align 4
  %447 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %448 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = icmp slt i32 %446, %449
  br i1 %450, label %451, label %479

451:                                              ; preds = %445
  %452 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %453 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %452, i32 0, i32 3
  %454 = load i32*, i32** %453, align 8
  %455 = load i32, i32* %8, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32, i32* %454, i64 %456
  %458 = load i32, i32* %457, align 4
  %459 = icmp slt i32 %458, 0
  br i1 %459, label %460, label %464

460:                                              ; preds = %451
  %461 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %462 = load i32, i32* @AV_LOG_INFO, align 4
  %463 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %461, i32 %462, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %475

464:                                              ; preds = %451
  %465 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %466 = load i32, i32* @AV_LOG_INFO, align 4
  %467 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %468 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %467, i32 0, i32 3
  %469 = load i32*, i32** %468, align 8
  %470 = load i32, i32* %8, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %469, i64 %471
  %473 = load i32, i32* %472, align 4
  %474 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %465, i32 %466, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %473)
  br label %475

475:                                              ; preds = %464, %460
  br label %476

476:                                              ; preds = %475
  %477 = load i32, i32* %8, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %8, align 4
  br label %445

479:                                              ; preds = %445
  %480 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %481 = load i32, i32* @AV_LOG_INFO, align 4
  %482 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %480, i32 %481, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %484

483:                                              ; preds = %436
  store i32 0, i32* %2, align 4
  br label %484

484:                                              ; preds = %483, %479, %368, %160, %142, %125, %89
  %485 = load i32, i32* %2, align 4
  ret i32 %485
}

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i32 @swr_alloc_set_opts(i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @av_opt_set_int(i32, i8*, i32, i32) #1

declare dso_local i32 @swr_set_channel_mapping(i32, i32*) #1

declare dso_local i64 @fabs(i32) #1

declare dso_local i32 @swr_set_matrix(i32, double*, i32) #1

declare dso_local i32 @swr_init(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, double, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
