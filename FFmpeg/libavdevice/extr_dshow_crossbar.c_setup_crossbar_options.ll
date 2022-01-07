; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow_crossbar.c_setup_crossbar_options.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow_crossbar.c_setup_crossbar_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.dshow_ctx* }
%struct.dshow_ctx = type { i32, i32, i8**, i64 }

@AV_LOG_INFO = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Crossbar Switching Information for %s:\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Unable to get crossbar pin counts\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@PhysConn_Video_VideoDecoder = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Routing video input from pin %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Unable to route video input from pin %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@PhysConn_Audio_AudioDecoder = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Routing audio input from pin %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Unable to route audio input from pin %d\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [80 x i8] c"Unexpected output pin type, please report the type if you want to use this (%s)\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Unable to get crossbar is routed to from pin %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"  Crossbar Output pin %d: \22%s\22 related output pin: %ld \00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"current input pin: %ld \00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"compatible input pins: \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [53 x i8] c"unable to get crossbar info audio input from pin %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"  Crossbar Input pin %d - \22%s\22 \00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"related input pin: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, %struct.TYPE_4__*)* @setup_crossbar_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @setup_crossbar_options(i32* %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.dshow_ctx*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.dshow_ctx*, %struct.dshow_ctx** %24, align 8
  store %struct.dshow_ctx* %25, %struct.dshow_ctx** %8, align 8
  %26 = load %struct.dshow_ctx*, %struct.dshow_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @AV_LOG_INFO, align 4
  br label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @AV_LOG_DEBUG, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %12, align 4
  %36 = load %struct.dshow_ctx*, %struct.dshow_ctx** %8, align 8
  %37 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %13, align 4
  %39 = load %struct.dshow_ctx*, %struct.dshow_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %14, align 4
  %42 = load %struct.dshow_ctx*, %struct.dshow_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %42, i32 0, i32 2
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %15, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i8*, i8** %15, align 8
  %52 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %49, i32 %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %51)
  %53 = load i32*, i32** %5, align 8
  %54 = call i64 @IAMCrossbar_get_PinCounts(i32* %53, i64* %9, i64* %10)
  store i64 %54, i64* %16, align 8
  %55 = load i64, i64* %16, align 8
  %56 = load i64, i64* @S_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %34
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %60 = load i32, i32* @AV_LOG_ERROR, align 4
  %61 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %59, i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i64, i64* %16, align 8
  store i64 %62, i64* %4, align 8
  br label %228

63:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %189, %63
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %9, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %192

69:                                               ; preds = %64
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* @FALSE, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i64 @IAMCrossbar_get_CrossbarPinInfo(i32* %70, i32 %71, i32 %72, i64* %18, i64* %19)
  store i64 %73, i64* %16, align 8
  %74 = load i64, i64* %19, align 8
  %75 = load i64, i64* @PhysConn_Video_VideoDecoder, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %69
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %80, label %100

80:                                               ; preds = %77
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %81, i32 %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i64 @IAMCrossbar_Route(i32* %85, i32 %86, i32 %87)
  store i64 %88, i64* %16, align 8
  %89 = load i64, i64* %16, align 8
  %90 = load i64, i64* @S_OK, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %80
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %94 = load i32, i32* @AV_LOG_ERROR, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %93, i32 %94, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @EIO, align 4
  %98 = call i64 @AVERROR(i32 %97)
  store i64 %98, i64* %4, align 8
  br label %228

99:                                               ; preds = %80
  br label %100

100:                                              ; preds = %99, %77
  br label %135

101:                                              ; preds = %69
  %102 = load i64, i64* %19, align 8
  %103 = load i64, i64* @PhysConn_Audio_AudioDecoder, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %128

105:                                              ; preds = %101
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, -1
  br i1 %107, label %108, label %127

108:                                              ; preds = %105
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %14, align 4
  %112 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %109, i32 %110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %14, align 4
  %116 = call i64 @IAMCrossbar_Route(i32* %113, i32 %114, i32 %115)
  store i64 %116, i64* %16, align 8
  %117 = load i64, i64* %16, align 8
  %118 = load i64, i64* @S_OK, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %108
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %122 = load i32, i32* @AV_LOG_ERROR, align 4
  %123 = load i32, i32* %14, align 4
  %124 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %121, i32 %122, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  %125 = load i64, i64* %16, align 8
  store i64 %125, i64* %4, align 8
  br label %228

126:                                              ; preds = %108
  br label %127

127:                                              ; preds = %126, %105
  br label %134

128:                                              ; preds = %101
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %130 = load i32, i32* @AV_LOG_WARNING, align 4
  %131 = load i64, i64* %19, align 8
  %132 = call i64 @GetPhysicalPinName(i64 %131)
  %133 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %129, i32 %130, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.6, i64 0, i64 0), i64 %132)
  br label %134

134:                                              ; preds = %128, %127
  br label %135

135:                                              ; preds = %134, %100
  %136 = load i32*, i32** %5, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call i64 @IAMCrossbar_get_IsRoutedTo(i32* %136, i32 %137, i64* %20)
  store i64 %138, i64* %16, align 8
  %139 = load i64, i64* %16, align 8
  %140 = load i64, i64* @S_OK, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %135
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %144 = load i32, i32* @AV_LOG_ERROR, align 4
  %145 = load i32, i32* %11, align 4
  %146 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %143, i32 %144, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %145)
  %147 = load i64, i64* %16, align 8
  store i64 %147, i64* %4, align 8
  br label %228

148:                                              ; preds = %135
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %11, align 4
  %152 = load i64, i64* %19, align 8
  %153 = call i64 @GetPhysicalPinName(i64 %152)
  %154 = load i64, i64* %18, align 8
  %155 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %149, i32 %150, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i32 %151, i64 %153, i64 %154)
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %157 = load i32, i32* %12, align 4
  %158 = load i64, i64* %20, align 8
  %159 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %156, i32 %157, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i64 %158)
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %161 = load i32, i32* %12, align 4
  %162 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %160, i32 %161, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %163

163:                                              ; preds = %182, %148
  %164 = load i32, i32* %17, align 4
  %165 = sext i32 %164 to i64
  %166 = load i64, i64* %10, align 8
  %167 = icmp slt i64 %165, %166
  br i1 %167, label %168, label %185

168:                                              ; preds = %163
  %169 = load i32*, i32** %5, align 8
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %17, align 4
  %172 = call i64 @IAMCrossbar_CanRoute(i32* %169, i32 %170, i32 %171)
  store i64 %172, i64* %16, align 8
  %173 = load i64, i64* %16, align 8
  %174 = load i64, i64* @S_OK, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %168
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %17, align 4
  %180 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %177, i32 %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %179)
  br label %181

181:                                              ; preds = %176, %168
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %17, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %17, align 4
  br label %163

185:                                              ; preds = %163
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %187 = load i32, i32* %12, align 4
  %188 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %186, i32 %187, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %189

189:                                              ; preds = %185
  %190 = load i32, i32* %11, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %11, align 4
  br label %64

192:                                              ; preds = %64
  store i32 0, i32* %11, align 4
  br label %193

193:                                              ; preds = %223, %192
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = load i64, i64* %10, align 8
  %197 = icmp slt i64 %195, %196
  br i1 %197, label %198, label %226

198:                                              ; preds = %193
  %199 = load i32*, i32** %5, align 8
  %200 = load i32, i32* @TRUE, align 4
  %201 = load i32, i32* %11, align 4
  %202 = call i64 @IAMCrossbar_get_CrossbarPinInfo(i32* %199, i32 %200, i32 %201, i64* %21, i64* %22)
  store i64 %202, i64* %16, align 8
  %203 = load i64, i64* %16, align 8
  %204 = load i64, i64* @S_OK, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %198
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %208 = load i32, i32* @AV_LOG_ERROR, align 4
  %209 = load i32, i32* %11, align 4
  %210 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %207, i32 %208, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i32 %209)
  %211 = load i64, i64* %16, align 8
  store i64 %211, i64* %4, align 8
  br label %228

212:                                              ; preds = %198
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* %11, align 4
  %216 = load i64, i64* %22, align 8
  %217 = call i64 @GetPhysicalPinName(i64 %216)
  %218 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %213, i32 %214, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i32 %215, i64 %217)
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %220 = load i32, i32* %12, align 4
  %221 = load i64, i64* %21, align 8
  %222 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @av_log(%struct.TYPE_4__* %219, i32 %220, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i64 %221)
  br label %223

223:                                              ; preds = %212
  %224 = load i32, i32* %11, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %11, align 4
  br label %193

226:                                              ; preds = %193
  %227 = load i64, i64* @S_OK, align 8
  store i64 %227, i64* %4, align 8
  br label %228

228:                                              ; preds = %226, %206, %142, %120, %92, %58
  %229 = load i64, i64* %4, align 8
  ret i64 %229
}

declare dso_local i32 @av_log(%struct.TYPE_4__*, i32, i8*, ...) #1

declare dso_local i64 @IAMCrossbar_get_PinCounts(i32*, i64*, i64*) #1

declare dso_local i64 @IAMCrossbar_get_CrossbarPinInfo(i32*, i32, i32, i64*, i64*) #1

declare dso_local i64 @IAMCrossbar_Route(i32*, i32, i32) #1

declare dso_local i64 @AVERROR(i32) #1

declare dso_local i64 @GetPhysicalPinName(i64) #1

declare dso_local i64 @IAMCrossbar_get_IsRoutedTo(i32*, i32, i64*) #1

declare dso_local i64 @IAMCrossbar_CanRoute(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
