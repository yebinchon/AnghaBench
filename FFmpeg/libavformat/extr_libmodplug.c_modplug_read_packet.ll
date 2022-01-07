; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_libmodplug.c_modplug_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_libmodplug.c_modplug_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, double, double, double, double, i32, i32, i64, i64, i64, i32 }
%struct.TYPE_9__ = type { i32, i32*, double, double, i64, i32 }

@VAR_VARS_NB = common dso_local global i32 0, align 4
@VAR_W = common dso_local global i64 0, align 8
@VAR_H = common dso_local global i64 0, align 8
@VAR_TIME = common dso_local global i64 0, align 8
@VAR_SPEED = common dso_local global i64 0, align 8
@VAR_TEMPO = common dso_local global i64 0, align 8
@VAR_ORDER = common dso_local global i64 0, align 8
@VAR_PATTERN = common dso_local global i64 0, align 8
@VAR_ROW = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"tempo\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"row\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ts\00", align 1
@VAR_X = common dso_local global i64 0, align 8
@VAR_Y = common dso_local global i64 0, align 8
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AUDIO_PKT_SIZE = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*)* @modplug_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modplug_read_packet(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [32 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %6, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %198

21:                                               ; preds = %2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = xor i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %197

30:                                               ; preds = %21
  %31 = load i32, i32* @VAR_VARS_NB, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %7, align 8
  %34 = alloca double, i64 %32, align 16
  store i64 %32, i64* %8, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load double, double* %36, align 8
  %38 = load i64, i64* @VAR_W, align 8
  %39 = getelementptr inbounds double, double* %34, i64 %38
  store double %37, double* %39, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load double, double* %41, align 8
  %43 = load i64, i64* @VAR_H, align 8
  %44 = getelementptr inbounds double, double* %34, i64 %43
  store double %42, double* %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  %47 = load double, double* %46, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 4
  %50 = load double, double* %49, align 8
  %51 = fmul double %47, %50
  %52 = load i64, i64* @VAR_TIME, align 8
  %53 = getelementptr inbounds double, double* %34, i64 %52
  store double %51, double* %53, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = call double @ModPlug_GetCurrentSpeed(i32 %56)
  %58 = load i64, i64* @VAR_SPEED, align 8
  %59 = getelementptr inbounds double, double* %34, i64 %58
  store double %57, double* %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = call double @ModPlug_GetCurrentTempo(i32 %62)
  %64 = load i64, i64* @VAR_TEMPO, align 8
  %65 = getelementptr inbounds double, double* %34, i64 %64
  store double %63, double* %65, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = call double @ModPlug_GetCurrentOrder(i32 %68)
  %70 = load i64, i64* @VAR_ORDER, align 8
  %71 = getelementptr inbounds double, double* %34, i64 %70
  store double %69, double* %71, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = call double @ModPlug_GetCurrentPattern(i32 %74)
  %76 = load i64, i64* @VAR_PATTERN, align 8
  %77 = getelementptr inbounds double, double* %34, i64 %76
  store double %75, double* %77, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = call double @ModPlug_GetCurrentRow(i32 %80)
  %82 = load i64, i64* @VAR_ROW, align 8
  %83 = getelementptr inbounds double, double* %34, i64 %82
  store double %81, double* %83, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 10
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @av_new_packet(%struct.TYPE_9__* %84, i32 %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %30
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = call i32 @AVERROR(i32 %91)
  store i32 %92, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %195

93:                                               ; preds = %30
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 10
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @memset(i32* %98, i32 0, i32 %101)
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 9
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %93
  %108 = load i64, i64* @VAR_SPEED, align 8
  %109 = call i32 @PRINT_INFO(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %108)
  %110 = load i64, i64* @VAR_TEMPO, align 8
  %111 = call i32 @PRINT_INFO(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %110)
  %112 = load i64, i64* @VAR_ORDER, align 8
  %113 = call i32 @PRINT_INFO(i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %112)
  %114 = load i64, i64* @VAR_PATTERN, align 8
  %115 = call i32 @PRINT_INFO(i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %114)
  %116 = load i64, i64* @VAR_ROW, align 8
  %117 = call i32 @PRINT_INFO(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 %116)
  %118 = load i64, i64* @VAR_TIME, align 8
  %119 = call i32 @PRINT_INFO(i32 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 %118)
  br label %120

120:                                              ; preds = %107, %93
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 8
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %182

125:                                              ; preds = %120
  store i32 0, i32* %12, align 4
  br label %126

126:                                              ; preds = %178, %125
  %127 = load i32, i32* %12, align 4
  %128 = sitofp i32 %127 to double
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load double, double* %130, align 8
  %132 = fcmp olt double %128, %131
  br i1 %132, label %133, label %181

133:                                              ; preds = %126
  store i32 0, i32* %11, align 4
  br label %134

134:                                              ; preds = %174, %133
  %135 = load i32, i32* %11, align 4
  %136 = sitofp i32 %135 to double
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load double, double* %138, align 8
  %140 = fcmp olt double %136, %139
  br i1 %140, label %141, label %177

141:                                              ; preds = %134
  %142 = load i32, i32* %11, align 4
  %143 = sitofp i32 %142 to double
  %144 = load i64, i64* @VAR_X, align 8
  %145 = getelementptr inbounds double, double* %34, i64 %144
  store double %143, double* %145, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sitofp i32 %146 to double
  %148 = load i64, i64* @VAR_Y, align 8
  %149 = getelementptr inbounds double, double* %34, i64 %148
  store double %147, double* %149, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 8
  %152 = load i64, i64* %151, align 8
  %153 = call double @av_expr_eval(i64 %152, double* %34, i32* null)
  store double %153, double* %13, align 8
  %154 = load double, double* %13, align 8
  %155 = fptosi double %154 to i32
  %156 = call i32 @av_clip(i32 %155, i32 0, i32 15)
  %157 = shl i32 %156, 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %12, align 4
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = mul nsw i32 %161, %164
  %166 = load i32, i32* %11, align 4
  %167 = mul nsw i32 %166, 3
  %168 = add nsw i32 %165, %167
  %169 = add nsw i32 %168, 2
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %160, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %157
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %141
  %175 = load i32, i32* %11, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %11, align 4
  br label %134

177:                                              ; preds = %134
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %12, align 4
  br label %126

181:                                              ; preds = %126
  br label %182

182:                                              ; preds = %181, %120
  %183 = load i64, i64* @VAR_TIME, align 8
  %184 = getelementptr inbounds double, double* %34, i64 %183
  %185 = load double, double* %184, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 3
  store double %185, double* %187, align 8
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 2
  store double %185, double* %189, align 8
  %190 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %195

195:                                              ; preds = %182, %90
  %196 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %196)
  br label %254

197:                                              ; preds = %21
  br label %198

198:                                              ; preds = %197, %2
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %200 = load i32, i32* @AUDIO_PKT_SIZE, align 4
  %201 = call i64 @av_new_packet(%struct.TYPE_9__* %199, i32 %200)
  %202 = icmp slt i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load i32, i32* @ENOMEM, align 4
  %205 = call i32 @AVERROR(i32 %204)
  store i32 %205, i32* %3, align 4
  br label %254

206:                                              ; preds = %198
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 7
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %224

211:                                              ; preds = %206
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 3
  %214 = load double, double* %213, align 8
  %215 = fadd double %214, 1.000000e+00
  store double %215, double* %213, align 8
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 4
  %218 = load double, double* %217, align 8
  %219 = fmul double %214, %218
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 3
  store double %219, double* %221, align 8
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 2
  store double %219, double* %223, align 8
  br label %224

224:                                              ; preds = %211, %206
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 6
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* @AUDIO_PKT_SIZE, align 4
  %232 = call i64 @ModPlug_Read(i32 %227, i32* %230, i32 %231)
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 4
  store i64 %232, i64* %234, align 8
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 4
  %237 = load i64, i64* %236, align 8
  %238 = icmp sle i64 %237, 0
  br i1 %238, label %239, label %253

239:                                              ; preds = %224
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %241 = call i32 @av_packet_unref(%struct.TYPE_9__* %240)
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 4
  %244 = load i64, i64* %243, align 8
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %239
  %247 = load i32, i32* @AVERROR_EOF, align 4
  br label %251

248:                                              ; preds = %239
  %249 = load i32, i32* @EIO, align 4
  %250 = call i32 @AVERROR(i32 %249)
  br label %251

251:                                              ; preds = %248, %246
  %252 = phi i32 [ %247, %246 ], [ %250, %248 ]
  store i32 %252, i32* %3, align 4
  br label %254

253:                                              ; preds = %224
  store i32 0, i32* %3, align 4
  br label %254

254:                                              ; preds = %253, %251, %203, %195
  %255 = load i32, i32* %3, align 4
  ret i32 %255
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local double @ModPlug_GetCurrentSpeed(i32) #2

declare dso_local double @ModPlug_GetCurrentTempo(i32) #2

declare dso_local double @ModPlug_GetCurrentOrder(i32) #2

declare dso_local double @ModPlug_GetCurrentPattern(i32) #2

declare dso_local double @ModPlug_GetCurrentRow(i32) #2

declare dso_local i64 @av_new_packet(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @PRINT_INFO(i32, i8*, i64) #2

declare dso_local double @av_expr_eval(i64, double*, i32*) #2

declare dso_local i32 @av_clip(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i64 @ModPlug_Read(i32, i32*, i32) #2

declare dso_local i32 @av_packet_unref(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
