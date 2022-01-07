; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_get_che.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_get_che.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32***, i32***, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i64 }

@TYPE_CPE = common dso_local global i32 0, align 4
@MAX_ELEM_ID = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"mono with CPE\0A\00", align 1
@OC_TRIAL_FRAME = common dso_local global i32 0, align 4
@TYPE_SCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"stereo with SCE\0A\00", align 1
@tags_per_config = common dso_local global i32* null, align 8
@TYPE_LFE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [87 x i8] c"This stream seems to incorrectly report its last channel as %s[%d], mapping to LFE[0]\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"SCE\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"LFE\00", align 1
@.str.5 = private unnamed_addr constant [87 x i8] c"This stream seems to incorrectly report its last channel as %s[%d], mapping to SCE[1]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i32, i32)* @get_che to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_che(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i64 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %3
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load i32***, i32**** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32**, i32*** %26, i64 %28
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %4, align 8
  br label %577

35:                                               ; preds = %3
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %98, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @TYPE_CPE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %98

44:                                               ; preds = %40
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %98

53:                                               ; preds = %44
  %54 = load i32, i32* @MAX_ELEM_ID, align 4
  %55 = mul nsw i32 %54, 4
  %56 = zext i32 %55 to i64
  %57 = call i8* @llvm.stacksave()
  store i8* %57, i8** %8, align 8
  %58 = alloca [3 x i32], i64 %56, align 16
  store i64 %56, i64* %9, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = call i32 @push_output_configuration(%struct.TYPE_9__* %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AV_LOG_DEBUG, align 4
  %65 = call i32 (i32, i32, i8*, ...) @av_log(i32 %63, i32 %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = bitcast [3 x i32]* %58 to i32**
  %70 = call i64 @set_default_channel_config(i32 %68, i32** %69, i32* %10, i32 2)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %53
  store i32* null, i32** %4, align 8
  store i32 1, i32* %11, align 4
  br label %94

73:                                               ; preds = %53
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = bitcast [3 x i32]* %58 to i32**
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @OC_TRIAL_FRAME, align 4
  %78 = call i64 @output_configure(%struct.TYPE_9__* %74, i32** %75, i32 %76, i32 %77, i32 1)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32* null, i32** %4, align 8
  store i32 1, i32* %11, align 4
  br label %94

81:                                               ; preds = %73
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i32 2, i32* %87, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  store i32 0, i32* %93, align 4
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %81, %80, %72
  %95 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %11, align 4
  switch i32 %96, label %579 [
    i32 0, label %97
    i32 1, label %577
  ]

97:                                               ; preds = %94
  br label %98

98:                                               ; preds = %97, %44, %40, %35
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %171, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @TYPE_SCE, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %171

107:                                              ; preds = %103
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %171

116:                                              ; preds = %107
  %117 = load i32, i32* @MAX_ELEM_ID, align 4
  %118 = mul nsw i32 %117, 4
  %119 = zext i32 %118 to i64
  %120 = call i8* @llvm.stacksave()
  store i8* %120, i8** %12, align 8
  %121 = alloca [3 x i32], i64 %119, align 16
  store i64 %119, i64* %13, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = call i32 @push_output_configuration(%struct.TYPE_9__* %122)
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @AV_LOG_DEBUG, align 4
  %128 = call i32 (i32, i32, i8*, ...) @av_log(i32 %126, i32 %127, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = bitcast [3 x i32]* %121 to i32**
  %133 = call i64 @set_default_channel_config(i32 %131, i32** %132, i32* %14, i32 1)
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %116
  store i32* null, i32** %4, align 8
  store i32 1, i32* %11, align 4
  br label %167

136:                                              ; preds = %116
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %138 = bitcast [3 x i32]* %121 to i32**
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* @OC_TRIAL_FRAME, align 4
  %141 = call i64 @output_configure(%struct.TYPE_9__* %137, i32** %138, i32 %139, i32 %140, i32 1)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  store i32* null, i32** %4, align 8
  store i32 1, i32* %11, align 4
  br label %167

144:                                              ; preds = %136
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i64 1
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  store i32 1, i32* %150, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i64 1
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %144
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i64 1
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  store i32 -1, i32* %165, align 4
  br label %166

166:                                              ; preds = %159, %144
  store i32 0, i32* %11, align 4
  br label %167

167:                                              ; preds = %166, %143, %135
  %168 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %168)
  %169 = load i32, i32* %11, align 4
  switch i32 %169, label %579 [
    i32 0, label %170
    i32 1, label %577
  ]

170:                                              ; preds = %167
  br label %171

171:                                              ; preds = %170, %107, %103, %98
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 3
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i64 1
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  switch i32 %178, label %576 [
    i32 12, label %179
    i32 7, label %179
    i32 11, label %213
    i32 6, label %256
    i32 5, label %334
    i32 4, label %368
    i32 3, label %488
    i32 2, label %488
    i32 1, label %542
  ]

179:                                              ; preds = %171, %171
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp eq i32 %182, 3
  br i1 %183, label %184, label %212

184:                                              ; preds = %179
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* @TYPE_CPE, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %212

188:                                              ; preds = %184
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  %195 = load i32***, i32**** %194, align 8
  %196 = load i32, i32* @TYPE_CPE, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32**, i32*** %195, i64 %197
  %199 = load i32**, i32*** %198, align 8
  %200 = getelementptr inbounds i32*, i32** %199, i64 2
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 2
  %204 = load i32***, i32**** %203, align 8
  %205 = load i32, i32* @TYPE_CPE, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32**, i32*** %204, i64 %206
  %208 = load i32**, i32*** %207, align 8
  %209 = load i32, i32* %7, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32*, i32** %208, i64 %210
  store i32* %201, i32** %211, align 8
  store i32* %201, i32** %4, align 8
  br label %577

212:                                              ; preds = %184, %179
  br label %213

213:                                              ; preds = %171, %212
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp eq i32 %216, 2
  br i1 %217, label %218, label %255

218:                                              ; preds = %213
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 3
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i64 1
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp eq i32 %225, 11
  br i1 %226, label %227, label %255

227:                                              ; preds = %218
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* @TYPE_SCE, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %255

231:                                              ; preds = %227
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %233, align 8
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 1
  %238 = load i32***, i32**** %237, align 8
  %239 = load i32, i32* @TYPE_SCE, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32**, i32*** %238, i64 %240
  %242 = load i32**, i32*** %241, align 8
  %243 = getelementptr inbounds i32*, i32** %242, i64 1
  %244 = load i32*, i32** %243, align 8
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 2
  %247 = load i32***, i32**** %246, align 8
  %248 = load i32, i32* @TYPE_SCE, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32**, i32*** %247, i64 %249
  %251 = load i32**, i32*** %250, align 8
  %252 = load i32, i32* %7, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32*, i32** %251, i64 %253
  store i32* %244, i32** %254, align 8
  store i32* %244, i32** %4, align 8
  br label %577

255:                                              ; preds = %227, %218, %213
  br label %256

256:                                              ; preds = %171, %255
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32*, i32** @tags_per_config, align 8
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 3
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i64 1
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %260, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = sub nsw i32 %270, 1
  %272 = icmp eq i32 %259, %271
  br i1 %272, label %273, label %333

273:                                              ; preds = %256
  %274 = load i32, i32* %6, align 4
  %275 = load i32, i32* @TYPE_LFE, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %281, label %277

277:                                              ; preds = %273
  %278 = load i32, i32* %6, align 4
  %279 = load i32, i32* @TYPE_SCE, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %333

281:                                              ; preds = %277, %273
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 8
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %309, label %286

286:                                              ; preds = %281
  %287 = load i32, i32* %6, align 4
  %288 = load i32, i32* @TYPE_LFE, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %293, label %290

290:                                              ; preds = %286
  %291 = load i32, i32* %7, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %309

293:                                              ; preds = %290, %286
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 5
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @AV_LOG_WARNING, align 4
  %298 = load i32, i32* %6, align 4
  %299 = load i32, i32* @TYPE_SCE, align 4
  %300 = icmp eq i32 %298, %299
  %301 = zext i1 %300 to i64
  %302 = select i1 %300, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %303 = load i32, i32* %7, align 4
  %304 = call i32 (i32, i32, i8*, ...) @av_log(i32 %296, i32 %297, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0), i8* %302, i32 %303)
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 8
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %306, align 8
  br label %309

309:                                              ; preds = %293, %290, %281
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %311, align 8
  %314 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 1
  %316 = load i32***, i32**** %315, align 8
  %317 = load i32, i32* @TYPE_LFE, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32**, i32*** %316, i64 %318
  %320 = load i32**, i32*** %319, align 8
  %321 = getelementptr inbounds i32*, i32** %320, i64 0
  %322 = load i32*, i32** %321, align 8
  %323 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 2
  %325 = load i32***, i32**** %324, align 8
  %326 = load i32, i32* %6, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32**, i32*** %325, i64 %327
  %329 = load i32**, i32*** %328, align 8
  %330 = load i32, i32* %7, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32*, i32** %329, i64 %331
  store i32* %322, i32** %332, align 8
  store i32* %322, i32** %4, align 8
  br label %577

333:                                              ; preds = %277, %256
  br label %334

334:                                              ; preds = %171, %333
  %335 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = icmp eq i32 %337, 2
  br i1 %338, label %339, label %367

339:                                              ; preds = %334
  %340 = load i32, i32* %6, align 4
  %341 = load i32, i32* @TYPE_CPE, align 4
  %342 = icmp eq i32 %340, %341
  br i1 %342, label %343, label %367

343:                                              ; preds = %339
  %344 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %345, align 8
  %348 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 1
  %350 = load i32***, i32**** %349, align 8
  %351 = load i32, i32* @TYPE_CPE, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32**, i32*** %350, i64 %352
  %354 = load i32**, i32*** %353, align 8
  %355 = getelementptr inbounds i32*, i32** %354, i64 1
  %356 = load i32*, i32** %355, align 8
  %357 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %357, i32 0, i32 2
  %359 = load i32***, i32**** %358, align 8
  %360 = load i32, i32* @TYPE_CPE, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32**, i32*** %359, i64 %361
  %363 = load i32**, i32*** %362, align 8
  %364 = load i32, i32* %7, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32*, i32** %363, i64 %365
  store i32* %356, i32** %366, align 8
  store i32* %356, i32** %4, align 8
  br label %577

367:                                              ; preds = %339, %334
  br label %368

368:                                              ; preds = %171, %367
  %369 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = load i32*, i32** @tags_per_config, align 8
  %373 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %373, i32 0, i32 3
  %375 = load %struct.TYPE_8__*, %struct.TYPE_8__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i64 1
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %372, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = sub nsw i32 %382, 1
  %384 = icmp eq i32 %371, %383
  br i1 %384, label %385, label %445

385:                                              ; preds = %368
  %386 = load i32, i32* %6, align 4
  %387 = load i32, i32* @TYPE_LFE, align 4
  %388 = icmp eq i32 %386, %387
  br i1 %388, label %393, label %389

389:                                              ; preds = %385
  %390 = load i32, i32* %6, align 4
  %391 = load i32, i32* @TYPE_SCE, align 4
  %392 = icmp eq i32 %390, %391
  br i1 %392, label %393, label %445

393:                                              ; preds = %389, %385
  %394 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %394, i32 0, i32 4
  %396 = load i32, i32* %395, align 8
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %421, label %398

398:                                              ; preds = %393
  %399 = load i32, i32* %6, align 4
  %400 = load i32, i32* @TYPE_SCE, align 4
  %401 = icmp ne i32 %399, %400
  br i1 %401, label %405, label %402

402:                                              ; preds = %398
  %403 = load i32, i32* %7, align 4
  %404 = icmp ne i32 %403, 1
  br i1 %404, label %405, label %421

405:                                              ; preds = %402, %398
  %406 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %407 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %406, i32 0, i32 5
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* @AV_LOG_WARNING, align 4
  %410 = load i32, i32* %6, align 4
  %411 = load i32, i32* @TYPE_SCE, align 4
  %412 = icmp eq i32 %410, %411
  %413 = zext i1 %412 to i64
  %414 = select i1 %412, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %415 = load i32, i32* %7, align 4
  %416 = call i32 (i32, i32, i8*, ...) @av_log(i32 %408, i32 %409, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.5, i64 0, i64 0), i8* %414, i32 %415)
  %417 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %418 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %417, i32 0, i32 4
  %419 = load i32, i32* %418, align 8
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %418, align 8
  br label %421

421:                                              ; preds = %405, %402, %393
  %422 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %423, align 8
  %426 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %427 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %426, i32 0, i32 1
  %428 = load i32***, i32**** %427, align 8
  %429 = load i32, i32* @TYPE_SCE, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32**, i32*** %428, i64 %430
  %432 = load i32**, i32*** %431, align 8
  %433 = getelementptr inbounds i32*, i32** %432, i64 1
  %434 = load i32*, i32** %433, align 8
  %435 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %436 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %435, i32 0, i32 2
  %437 = load i32***, i32**** %436, align 8
  %438 = load i32, i32* %6, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32**, i32*** %437, i64 %439
  %441 = load i32**, i32*** %440, align 8
  %442 = load i32, i32* %7, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32*, i32** %441, i64 %443
  store i32* %434, i32** %444, align 8
  store i32* %434, i32** %4, align 8
  br label %577

445:                                              ; preds = %389, %368
  %446 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %447 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = icmp eq i32 %448, 2
  br i1 %449, label %450, label %487

450:                                              ; preds = %445
  %451 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %452 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %451, i32 0, i32 3
  %453 = load %struct.TYPE_8__*, %struct.TYPE_8__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %453, i64 1
  %455 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = icmp eq i32 %457, 4
  br i1 %458, label %459, label %487

459:                                              ; preds = %450
  %460 = load i32, i32* %6, align 4
  %461 = load i32, i32* @TYPE_SCE, align 4
  %462 = icmp eq i32 %460, %461
  br i1 %462, label %463, label %487

463:                                              ; preds = %459
  %464 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %465 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %465, align 8
  %468 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %469 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %468, i32 0, i32 1
  %470 = load i32***, i32**** %469, align 8
  %471 = load i32, i32* @TYPE_SCE, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i32**, i32*** %470, i64 %472
  %474 = load i32**, i32*** %473, align 8
  %475 = getelementptr inbounds i32*, i32** %474, i64 1
  %476 = load i32*, i32** %475, align 8
  %477 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %478 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %477, i32 0, i32 2
  %479 = load i32***, i32**** %478, align 8
  %480 = load i32, i32* @TYPE_SCE, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i32**, i32*** %479, i64 %481
  %483 = load i32**, i32*** %482, align 8
  %484 = load i32, i32* %7, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i32*, i32** %483, i64 %485
  store i32* %476, i32** %486, align 8
  store i32* %476, i32** %4, align 8
  br label %577

487:                                              ; preds = %459, %450, %445
  br label %488

488:                                              ; preds = %171, %171, %487
  %489 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %490 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 8
  %492 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %493 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %492, i32 0, i32 3
  %494 = load %struct.TYPE_8__*, %struct.TYPE_8__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %494, i64 1
  %496 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %495, i32 0, i32 0
  %497 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 8
  %499 = icmp ne i32 %498, 2
  %500 = zext i1 %499 to i32
  %501 = icmp eq i32 %491, %500
  br i1 %501, label %502, label %530

502:                                              ; preds = %488
  %503 = load i32, i32* %6, align 4
  %504 = load i32, i32* @TYPE_CPE, align 4
  %505 = icmp eq i32 %503, %504
  br i1 %505, label %506, label %530

506:                                              ; preds = %502
  %507 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %508 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = add nsw i32 %509, 1
  store i32 %510, i32* %508, align 8
  %511 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %512 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %511, i32 0, i32 1
  %513 = load i32***, i32**** %512, align 8
  %514 = load i32, i32* @TYPE_CPE, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i32**, i32*** %513, i64 %515
  %517 = load i32**, i32*** %516, align 8
  %518 = getelementptr inbounds i32*, i32** %517, i64 0
  %519 = load i32*, i32** %518, align 8
  %520 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %521 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %520, i32 0, i32 2
  %522 = load i32***, i32**** %521, align 8
  %523 = load i32, i32* @TYPE_CPE, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i32**, i32*** %522, i64 %524
  %526 = load i32**, i32*** %525, align 8
  %527 = load i32, i32* %7, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds i32*, i32** %526, i64 %528
  store i32* %519, i32** %529, align 8
  store i32* %519, i32** %4, align 8
  br label %577

530:                                              ; preds = %502, %488
  %531 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %532 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %531, i32 0, i32 3
  %533 = load %struct.TYPE_8__*, %struct.TYPE_8__** %532, align 8
  %534 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %533, i64 1
  %535 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %534, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 8
  %538 = icmp eq i32 %537, 2
  br i1 %538, label %539, label %540

539:                                              ; preds = %530
  store i32* null, i32** %4, align 8
  br label %577

540:                                              ; preds = %530
  br label %541

541:                                              ; preds = %540
  br label %542

542:                                              ; preds = %171, %541
  %543 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %544 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 8
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %575, label %547

547:                                              ; preds = %542
  %548 = load i32, i32* %6, align 4
  %549 = load i32, i32* @TYPE_SCE, align 4
  %550 = icmp eq i32 %548, %549
  br i1 %550, label %551, label %575

551:                                              ; preds = %547
  %552 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %553 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 8
  %555 = add nsw i32 %554, 1
  store i32 %555, i32* %553, align 8
  %556 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %557 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %556, i32 0, i32 1
  %558 = load i32***, i32**** %557, align 8
  %559 = load i32, i32* @TYPE_SCE, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32**, i32*** %558, i64 %560
  %562 = load i32**, i32*** %561, align 8
  %563 = getelementptr inbounds i32*, i32** %562, i64 0
  %564 = load i32*, i32** %563, align 8
  %565 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %566 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %565, i32 0, i32 2
  %567 = load i32***, i32**** %566, align 8
  %568 = load i32, i32* @TYPE_SCE, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i32**, i32*** %567, i64 %569
  %571 = load i32**, i32*** %570, align 8
  %572 = load i32, i32* %7, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds i32*, i32** %571, i64 %573
  store i32* %564, i32** %574, align 8
  store i32* %564, i32** %4, align 8
  br label %577

575:                                              ; preds = %547, %542
  br label %576

576:                                              ; preds = %171, %575
  store i32* null, i32** %4, align 8
  br label %577

577:                                              ; preds = %576, %551, %539, %506, %463, %421, %343, %309, %231, %188, %167, %94, %23
  %578 = load i32*, i32** %4, align 8
  ret i32* %578

579:                                              ; preds = %167, %94
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @push_output_configuration(%struct.TYPE_9__*) #2

declare dso_local i32 @av_log(i32, i32, i8*, ...) #2

declare dso_local i64 @set_default_channel_config(i32, i32**, i32*, i32) #2

declare dso_local i64 @output_configure(%struct.TYPE_9__*, i32**, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
