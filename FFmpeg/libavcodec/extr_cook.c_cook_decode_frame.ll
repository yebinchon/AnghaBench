; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cook.c_cook_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cook.c_cook_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_13__ = type { i32*, i32 }
%struct.TYPE_14__ = type { i64, i32 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"frame subpacket size total > avctx->block_align!\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"subpacket[%i] size %i js %i %i block_align %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"subpacket[%i] %i %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i32*, %struct.TYPE_13__*)* @cook_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cook_decode_frame(%struct.TYPE_15__* %0, i8* %1, i32* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca float**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %10, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %11, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %12, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %13, align 8
  store float** null, float*** %14, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %5, align 4
  br label %270

37:                                               ; preds = %4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %40, 2
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %50 = call i32 @ff_get_buffer(%struct.TYPE_15__* %48, %struct.TYPE_14__* %49, i32 0)
  store i32 %50, i32* %16, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* %16, align 4
  store i32 %53, i32* %5, align 4
  br label %270

54:                                               ; preds = %42
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to float**
  store float** %58, float*** %14, align 8
  br label %59

59:                                               ; preds = %54, %37
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  store i32 %62, i32* %67, align 8
  store i32 1, i32* %15, align 4
  br label %68

68:                                               ; preds = %125, %59
  %69 = load i32, i32* %15, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %128

74:                                               ; preds = %68
  %75 = load i32*, i32** %11, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %78, %81
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %75, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 2, %87
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  store i32 %88, i32* %95, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %97, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %110, %104
  store i32 %111, i32* %109, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %74
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %121 = load i32, i32* @AV_LOG_DEBUG, align 4
  %122 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %120, i32 %121, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %123 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %123, i32* %5, align 4
  br label %270

124:                                              ; preds = %74
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %15, align 4
  br label %68

128:                                              ; preds = %68
  store i32 0, i32* %15, align 4
  br label %129

129:                                              ; preds = %248, %128
  %130 = load i32, i32* %15, align 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %251

135:                                              ; preds = %129
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %137, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = mul nsw i32 %143, 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %146, align 8
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = ashr i32 %144, %152
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  store i32 %153, i32* %160, align 4
  %161 = load i32, i32* %18, align 4
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %163, align 8
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 3
  store i32 %161, i32* %168, align 4
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %170 = load i32, i32* @AV_LOG_DEBUG, align 4
  %171 = load i32, i32* %15, align 4
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 3
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %173, align 8
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 3
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %181, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %17, align 4
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %169, i32 %170, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %171, i32 %179, i32 %187, i32 %188, i32 %191)
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 3
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %195, align 8
  %197 = load i32, i32* %15, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i64 %198
  %200 = load i32*, i32** %11, align 8
  %201 = load i32, i32* %17, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load float**, float*** %14, align 8
  %205 = call i32 @decode_subpacket(%struct.TYPE_12__* %193, %struct.TYPE_16__* %199, i32* %203, float** %204)
  store i32 %205, i32* %16, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %135
  %208 = load i32, i32* %16, align 4
  store i32 %208, i32* %5, align 4
  br label %270

209:                                              ; preds = %135
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 3
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %211, align 8
  %213 = load i32, i32* %15, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* %17, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* %17, align 4
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 3
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %221, align 8
  %223 = load i32, i32* %15, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 4
  %227 = load i64, i64* %226, align 8
  %228 = load i32, i32* %18, align 4
  %229 = sext i32 %228 to i64
  %230 = add nsw i64 %229, %227
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %18, align 4
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %233 = load i32, i32* @AV_LOG_DEBUG, align 4
  %234 = load i32, i32* %15, align 4
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 3
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %236, align 8
  %238 = load i32, i32* %15, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = mul nsw i32 %242, 8
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 2
  %246 = call i32 @get_bits_count(i32* %245)
  %247 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %232, i32 %233, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %234, i32 %243, i32 %246)
  br label %248

248:                                              ; preds = %209
  %249 = load i32, i32* %15, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %15, align 4
  br label %129

251:                                              ; preds = %129
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp slt i32 %254, 2
  br i1 %255, label %256, label %265

256:                                              ; preds = %251
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %258, align 8
  %261 = load i32*, i32** %8, align 8
  store i32 0, i32* %261, align 4
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  store i32 %264, i32* %5, align 4
  br label %270

265:                                              ; preds = %251
  %266 = load i32*, i32** %8, align 8
  store i32 1, i32* %266, align 4
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  store i32 %269, i32* %5, align 4
  br label %270

270:                                              ; preds = %265, %256, %207, %119, %52, %35
  %271 = load i32, i32* %5, align 4
  ret i32 %271
}

declare dso_local i32 @ff_get_buffer(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i32 @decode_subpacket(%struct.TYPE_12__*, %struct.TYPE_16__*, i32*, float**) #1

declare dso_local i32 @get_bits_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
