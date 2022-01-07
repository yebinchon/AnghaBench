; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmaprodec.c_decode_channel_transform.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmaprodec.c_decode_channel_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32*, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { float**, i32, i32, double*, i64* }

@.str = private unnamed_addr constant [22 x i8] c"Channel transform bit\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unknown channel transform type\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Coupled channels > 6\00", align 1
@default_decorrelation = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @decode_channel_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_channel_transform(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca float**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %349

17:                                               ; preds = %1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 5
  %23 = call i64 @get_bits1(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @avpriv_request_sample(i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %30, i32* %2, align 4
  br label %350

31:                                               ; preds = %17
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %343, %31
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %40, %44
  br label %46

46:                                               ; preds = %37, %34
  %47 = phi i1 [ false, %34 ], [ %45, %37 ]
  br i1 %47, label %48, label %348

48:                                               ; preds = %46
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %54
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %6, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load float**, float*** %57, align 8
  store float** %58, float*** %7, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i32 0, i32* %60, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  store i32 0, i32* %62, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp sgt i32 %63, 2
  br i1 %64, label %65, label %123

65:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %119, %65
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %122

72:                                               ; preds = %66
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %8, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 7
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %118, label %89

89:                                               ; preds = %72
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 5
  %92 = call i64 @get_bits1(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %118

94:                                               ; preds = %89
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 7
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  store i32 1, i32* %105, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 7
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to float*
  %116 = load float**, float*** %7, align 8
  %117 = getelementptr inbounds float*, float** %116, i32 1
  store float** %117, float*** %7, align 8
  store float* %115, float** %116, align 8
  br label %118

118:                                              ; preds = %94, %89, %72
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %66

122:                                              ; preds = %66
  br label %175

123:                                              ; preds = %48
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %171, %123
  %128 = load i32, i32* %4, align 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %174

133:                                              ; preds = %127
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %4, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %9, align 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 7
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %163, label %150

150:                                              ; preds = %133
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 7
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to float*
  %161 = load float**, float*** %7, align 8
  %162 = getelementptr inbounds float*, float** %161, i32 1
  store float** %162, float*** %7, align 8
  store float* %160, float** %161, align 8
  br label %163

163:                                              ; preds = %150, %133
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 7
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  store i32 1, i32* %170, align 4
  br label %171

171:                                              ; preds = %163
  %172 = load i32, i32* %4, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %4, align 4
  br label %127

174:                                              ; preds = %127
  br label %175

175:                                              ; preds = %174, %122
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = icmp eq i32 %178, 2
  br i1 %179, label %180, label %240

180:                                              ; preds = %175
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 5
  %183 = call i64 @get_bits1(i32* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %197

185:                                              ; preds = %180
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 5
  %188 = call i64 @get_bits1(i32* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %185
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @avpriv_request_sample(i32 %193, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %195 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %195, i32* %2, align 4
  br label %350

196:                                              ; preds = %185
  br label %239

197:                                              ; preds = %180
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 2
  store i32 1, i32* %199, align 4
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = icmp eq i32 %202, 2
  br i1 %203, label %204, label %221

204:                                              ; preds = %197
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 3
  %207 = load double*, double** %206, align 8
  %208 = getelementptr inbounds double, double* %207, i64 0
  store double 1.000000e+00, double* %208, align 8
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 3
  %211 = load double*, double** %210, align 8
  %212 = getelementptr inbounds double, double* %211, i64 1
  store double -1.000000e+00, double* %212, align 8
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 3
  %215 = load double*, double** %214, align 8
  %216 = getelementptr inbounds double, double* %215, i64 2
  store double 1.000000e+00, double* %216, align 8
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 3
  %219 = load double*, double** %218, align 8
  %220 = getelementptr inbounds double, double* %219, i64 3
  store double 1.000000e+00, double* %220, align 8
  br label %238

221:                                              ; preds = %197
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 3
  %224 = load double*, double** %223, align 8
  %225 = getelementptr inbounds double, double* %224, i64 0
  store double 0x3FE6A00000000000, double* %225, align 8
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 3
  %228 = load double*, double** %227, align 8
  %229 = getelementptr inbounds double, double* %228, i64 1
  store double 0xBFE6A00000000000, double* %229, align 8
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 3
  %232 = load double*, double** %231, align 8
  %233 = getelementptr inbounds double, double* %232, i64 2
  store double 0x3FE6A00000000000, double* %233, align 8
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 3
  %236 = load double*, double** %235, align 8
  %237 = getelementptr inbounds double, double* %236, i64 3
  store double 0x3FE6A00000000000, double* %237, align 8
  br label %238

238:                                              ; preds = %221, %204
  br label %239

239:                                              ; preds = %238, %196
  br label %297

240:                                              ; preds = %175
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = icmp sgt i32 %243, 2
  br i1 %244, label %245, label %296

245:                                              ; preds = %240
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 5
  %248 = call i64 @get_bits1(i32* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %295

250:                                              ; preds = %245
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 2
  store i32 1, i32* %252, align 4
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 5
  %255 = call i64 @get_bits1(i32* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %250
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %260 = call i32 @decode_decorrelation_matrix(%struct.TYPE_8__* %258, %struct.TYPE_9__* %259)
  br label %294

261:                                              ; preds = %250
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = icmp sgt i32 %264, 6
  br i1 %265, label %266, label %271

266:                                              ; preds = %261
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 6
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @avpriv_request_sample(i32 %269, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %293

271:                                              ; preds = %261
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 3
  %274 = load double*, double** %273, align 8
  %275 = load i32*, i32** @default_decorrelation, align 8
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %275, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = mul nsw i32 %284, %287
  %289 = sext i32 %288 to i64
  %290 = mul i64 %289, 8
  %291 = trunc i64 %290 to i32
  %292 = call i32 @memcpy(double* %274, i32 %281, i32 %291)
  br label %293

293:                                              ; preds = %271, %266
  br label %294

294:                                              ; preds = %293, %257
  br label %295

295:                                              ; preds = %294, %245
  br label %296

296:                                              ; preds = %295, %240
  br label %297

297:                                              ; preds = %296, %239
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %337

302:                                              ; preds = %297
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 5
  %305 = call i64 @get_bits1(i32* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %328, label %307

307:                                              ; preds = %302
  store i32 0, i32* %10, align 4
  br label %308

308:                                              ; preds = %324, %307
  %309 = load i32, i32* %10, align 4
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 8
  %313 = icmp slt i32 %309, %312
  br i1 %313, label %314, label %327

314:                                              ; preds = %308
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 5
  %317 = call i64 @get_bits1(i32* %316)
  %318 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 4
  %320 = load i64*, i64** %319, align 8
  %321 = load i32, i32* %10, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i64, i64* %320, i64 %322
  store i64 %317, i64* %323, align 8
  br label %324

324:                                              ; preds = %314
  %325 = load i32, i32* %10, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %10, align 4
  br label %308

327:                                              ; preds = %308
  br label %336

328:                                              ; preds = %302
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 4
  %331 = load i64*, i64** %330, align 8
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 4
  %334 = load i32, i32* %333, align 8
  %335 = call i32 @memset(i64* %331, i32 1, i32 %334)
  br label %336

336:                                              ; preds = %328, %327
  br label %337

337:                                              ; preds = %336, %297
  %338 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* %5, align 4
  %342 = sub nsw i32 %341, %340
  store i32 %342, i32* %5, align 4
  br label %343

343:                                              ; preds = %337
  %344 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = add nsw i64 %346, 1
  store i64 %347, i64* %345, align 8
  br label %34

348:                                              ; preds = %46
  br label %349

349:                                              ; preds = %348, %1
  store i32 0, i32* %2, align 4
  br label %350

350:                                              ; preds = %349, %190, %25
  %351 = load i32, i32* %2, align 4
  ret i32 %351
}

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @avpriv_request_sample(i32, i8*) #1

declare dso_local i32 @decode_decorrelation_matrix(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @memcpy(double*, i32, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
