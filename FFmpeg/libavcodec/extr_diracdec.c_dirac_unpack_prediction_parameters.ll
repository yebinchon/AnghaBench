; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_dirac_unpack_prediction_parameters.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_dirac_unpack_prediction_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_7__*, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_7__ = type { i32, i32**, i32, i8**, i8** }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@dirac_unpack_prediction_parameters.default_blen = internal constant [4 x i32] [i32 4, i32 12, i32 16, i32 24], align 16
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Block prediction index too high\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"invalid x/y block length (%d/%d) for x/y chroma shift (%d/%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Block separation too small\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Block separation greater than size\0A\00", align 1
@MAX_BLOCKSIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"Unsupported large block size\0A\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"MV precision finer than eighth-pel\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Unknown picture prediction mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"weight_log2denom unsupported or invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @dirac_unpack_prediction_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dirac_unpack_prediction_parameters(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 10
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @align_get_bits(i32* %9)
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @get_interleaved_ue_golomb(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ugt i32 %13, 4
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @AV_LOG_ERROR, align 4
  %20 = call i32 (i32, i32, i8*, ...) @av_log(i32 %18, i32 %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %21, i32* %2, align 4
  br label %555

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %22
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @get_interleaved_ue_golomb(i32* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 9
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %27, i32* %32, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @get_interleaved_ue_golomb(i32* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 9
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i32 %34, i32* %39, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @get_interleaved_ue_golomb(i32* %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 9
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store i32 %41, i32* %46, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @get_interleaved_ue_golomb(i32* %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 9
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  store i32 %48, i32* %53, align 4
  br label %89

54:                                               ; preds = %22
  %55 = load i32, i32* %5, align 4
  %56 = sub i32 %55, 1
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* @dirac_unpack_prediction_parameters.default_blen, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 9
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32 %59, i32* %64, align 4
  %65 = load i32, i32* %5, align 4
  %66 = sub i32 %65, 1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* @dirac_unpack_prediction_parameters.default_blen, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 9
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i32 %69, i32* %74, align 4
  %75 = load i32, i32* %5, align 4
  %76 = mul i32 4, %75
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 9
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  store i32 %76, i32* %81, align 4
  %82 = load i32, i32* %5, align 4
  %83 = mul i32 4, %82
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 9
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 3
  store i32 %83, i32* %88, align 4
  br label %89

89:                                               ; preds = %54, %25
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 9
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = shl i32 1, %98
  %100 = srem i32 %95, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %131, label %102

102:                                              ; preds = %89
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 9
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 1, %111
  %113 = srem i32 %108, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %131, label %115

115:                                              ; preds = %102
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 9
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %115
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 9
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %156, label %131

131:                                              ; preds = %123, %115, %102, %89
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @AV_LOG_ERROR, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 9
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 9
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i64 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i32, i32, i8*, ...) @av_log(i32 %134, i32 %135, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %141, i32 %147, i32 %150, i32 %153)
  %155 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %155, i32* %2, align 4
  br label %555

156:                                              ; preds = %123
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 9
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %202

164:                                              ; preds = %156
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 9
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i64 0
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %202

172:                                              ; preds = %164
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 9
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i64 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 9
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i64 0
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = sdiv i32 %184, 2
  %186 = icmp slt i32 %178, %185
  br i1 %186, label %202, label %187

187:                                              ; preds = %172
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 9
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i64 0
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 9
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i64 0
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = sdiv i32 %199, 2
  %201 = icmp slt i32 %193, %200
  br i1 %201, label %202, label %209

202:                                              ; preds = %187, %172, %164, %156
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @AV_LOG_ERROR, align 4
  %207 = call i32 (i32, i32, i8*, ...) @av_log(i32 %205, i32 %206, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %208 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %208, i32* %2, align 4
  br label %555

209:                                              ; preds = %187
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 9
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i64 0
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 9
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i64 0
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = icmp sgt i32 %215, %221
  br i1 %222, label %237, label %223

223:                                              ; preds = %209
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 9
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i64 0
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 9
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i64 0
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = icmp sgt i32 %229, %235
  br i1 %236, label %237, label %244

237:                                              ; preds = %223, %209
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @AV_LOG_ERROR, align 4
  %242 = call i32 (i32, i32, i8*, ...) @av_log(i32 %240, i32 %241, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %243 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %243, i32* %2, align 4
  br label %555

244:                                              ; preds = %223
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 9
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i64 0
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 9
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i64 0
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i64 @FFMAX(i32 %250, i32 %256)
  %258 = load i64, i64* @MAX_BLOCKSIZE, align 8
  %259 = icmp sgt i64 %257, %258
  br i1 %259, label %260, label %267

260:                                              ; preds = %244
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @AV_LOG_ERROR, align 4
  %265 = call i32 (i32, i32, i8*, ...) @av_log(i32 %263, i32 %264, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %266 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %266, i32* %2, align 4
  br label %555

267:                                              ; preds = %244
  %268 = load i32*, i32** %4, align 8
  %269 = call i32 @get_interleaved_ue_golomb(i32* %268)
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 2
  store i32 %269, i32* %271, align 8
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = icmp sgt i32 %274, 3
  br i1 %275, label %276, label %283

276:                                              ; preds = %267
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 6
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @AV_LOG_ERROR, align 4
  %281 = call i32 (i32, i32, i8*, ...) @av_log(i32 %279, i32 %280, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %282 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %282, i32* %2, align 4
  br label %555

283:                                              ; preds = %267
  %284 = load i32*, i32** %4, align 8
  %285 = call i64 @get_bits1(i32* %284)
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 8
  store i64 %285, i64* %287, align 8
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 8
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %485

292:                                              ; preds = %283
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 7
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %294, align 8
  %296 = call i32 @memset(%struct.TYPE_7__* %295, i32 0, i32 8)
  store i32 0, i32* %6, align 4
  br label %297

297:                                              ; preds = %481, %292
  %298 = load i32, i32* %6, align 4
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  %302 = icmp ult i32 %298, %301
  br i1 %302, label %303, label %484

303:                                              ; preds = %297
  %304 = load i32*, i32** %4, align 8
  %305 = call i64 @get_bits1(i32* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %330

307:                                              ; preds = %303
  %308 = load i32*, i32** %4, align 8
  %309 = call i8* @dirac_get_se_golomb(i32* %308)
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 7
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %311, align 8
  %313 = load i32, i32* %6, align 4
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 4
  %317 = load i8**, i8*** %316, align 8
  %318 = getelementptr inbounds i8*, i8** %317, i64 0
  store i8* %309, i8** %318, align 8
  %319 = load i32*, i32** %4, align 8
  %320 = call i8* @dirac_get_se_golomb(i32* %319)
  %321 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 7
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %322, align 8
  %324 = load i32, i32* %6, align 4
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 4
  %328 = load i8**, i8*** %327, align 8
  %329 = getelementptr inbounds i8*, i8** %328, i64 1
  store i8* %320, i8** %329, align 8
  br label %330

330:                                              ; preds = %307, %303
  %331 = load i32*, i32** %4, align 8
  %332 = call i64 @get_bits1(i32* %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %400

334:                                              ; preds = %330
  %335 = load i32*, i32** %4, align 8
  %336 = call i32 @get_interleaved_ue_golomb(i32* %335)
  %337 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 7
  %339 = load %struct.TYPE_7__*, %struct.TYPE_7__** %338, align 8
  %340 = load i32, i32* %6, align 4
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i32 0, i32 0
  store i32 %336, i32* %343, align 8
  %344 = load i32*, i32** %4, align 8
  %345 = call i8* @dirac_get_se_golomb(i32* %344)
  %346 = ptrtoint i8* %345 to i32
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 7
  %349 = load %struct.TYPE_7__*, %struct.TYPE_7__** %348, align 8
  %350 = load i32, i32* %6, align 4
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 1
  %354 = load i32**, i32*** %353, align 8
  %355 = getelementptr inbounds i32*, i32** %354, i64 0
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 0
  store i32 %346, i32* %357, align 4
  %358 = load i32*, i32** %4, align 8
  %359 = call i8* @dirac_get_se_golomb(i32* %358)
  %360 = ptrtoint i8* %359 to i32
  %361 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 7
  %363 = load %struct.TYPE_7__*, %struct.TYPE_7__** %362, align 8
  %364 = load i32, i32* %6, align 4
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %366, i32 0, i32 1
  %368 = load i32**, i32*** %367, align 8
  %369 = getelementptr inbounds i32*, i32** %368, i64 0
  %370 = load i32*, i32** %369, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 1
  store i32 %360, i32* %371, align 4
  %372 = load i32*, i32** %4, align 8
  %373 = call i8* @dirac_get_se_golomb(i32* %372)
  %374 = ptrtoint i8* %373 to i32
  %375 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i32 0, i32 7
  %377 = load %struct.TYPE_7__*, %struct.TYPE_7__** %376, align 8
  %378 = load i32, i32* %6, align 4
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %380, i32 0, i32 1
  %382 = load i32**, i32*** %381, align 8
  %383 = getelementptr inbounds i32*, i32** %382, i64 1
  %384 = load i32*, i32** %383, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 0
  store i32 %374, i32* %385, align 4
  %386 = load i32*, i32** %4, align 8
  %387 = call i8* @dirac_get_se_golomb(i32* %386)
  %388 = ptrtoint i8* %387 to i32
  %389 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 7
  %391 = load %struct.TYPE_7__*, %struct.TYPE_7__** %390, align 8
  %392 = load i32, i32* %6, align 4
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %391, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %394, i32 0, i32 1
  %396 = load i32**, i32*** %395, align 8
  %397 = getelementptr inbounds i32*, i32** %396, i64 1
  %398 = load i32*, i32** %397, align 8
  %399 = getelementptr inbounds i32, i32* %398, i64 1
  store i32 %388, i32* %399, align 4
  br label %423

400:                                              ; preds = %330
  %401 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %402 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %401, i32 0, i32 7
  %403 = load %struct.TYPE_7__*, %struct.TYPE_7__** %402, align 8
  %404 = load i32, i32* %6, align 4
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %403, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %406, i32 0, i32 1
  %408 = load i32**, i32*** %407, align 8
  %409 = getelementptr inbounds i32*, i32** %408, i64 0
  %410 = load i32*, i32** %409, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 0
  store i32 1, i32* %411, align 4
  %412 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %412, i32 0, i32 7
  %414 = load %struct.TYPE_7__*, %struct.TYPE_7__** %413, align 8
  %415 = load i32, i32* %6, align 4
  %416 = zext i32 %415 to i64
  %417 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %414, i64 %416
  %418 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %417, i32 0, i32 1
  %419 = load i32**, i32*** %418, align 8
  %420 = getelementptr inbounds i32*, i32** %419, i64 1
  %421 = load i32*, i32** %420, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 1
  store i32 1, i32* %422, align 4
  br label %423

423:                                              ; preds = %400, %334
  %424 = load i32*, i32** %4, align 8
  %425 = call i64 @get_bits1(i32* %424)
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %459

427:                                              ; preds = %423
  %428 = load i32*, i32** %4, align 8
  %429 = call i32 @get_interleaved_ue_golomb(i32* %428)
  %430 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %431 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i32 0, i32 7
  %432 = load %struct.TYPE_7__*, %struct.TYPE_7__** %431, align 8
  %433 = load i32, i32* %6, align 4
  %434 = zext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %432, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %435, i32 0, i32 2
  store i32 %429, i32* %436, align 8
  %437 = load i32*, i32** %4, align 8
  %438 = call i8* @dirac_get_se_golomb(i32* %437)
  %439 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i32 0, i32 7
  %441 = load %struct.TYPE_7__*, %struct.TYPE_7__** %440, align 8
  %442 = load i32, i32* %6, align 4
  %443 = zext i32 %442 to i64
  %444 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %441, i64 %443
  %445 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %444, i32 0, i32 3
  %446 = load i8**, i8*** %445, align 8
  %447 = getelementptr inbounds i8*, i8** %446, i64 0
  store i8* %438, i8** %447, align 8
  %448 = load i32*, i32** %4, align 8
  %449 = call i8* @dirac_get_se_golomb(i32* %448)
  %450 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %451 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %450, i32 0, i32 7
  %452 = load %struct.TYPE_7__*, %struct.TYPE_7__** %451, align 8
  %453 = load i32, i32* %6, align 4
  %454 = zext i32 %453 to i64
  %455 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %452, i64 %454
  %456 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %455, i32 0, i32 3
  %457 = load i8**, i8*** %456, align 8
  %458 = getelementptr inbounds i8*, i8** %457, i64 1
  store i8* %449, i8** %458, align 8
  br label %459

459:                                              ; preds = %427, %423
  %460 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %461 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %460, i32 0, i32 7
  %462 = load %struct.TYPE_7__*, %struct.TYPE_7__** %461, align 8
  %463 = load i32, i32* %6, align 4
  %464 = zext i32 %463 to i64
  %465 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %462, i64 %464
  %466 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %465, i32 0, i32 2
  %467 = load i32, i32* %466, align 8
  %468 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %469 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %468, i32 0, i32 7
  %470 = load %struct.TYPE_7__*, %struct.TYPE_7__** %469, align 8
  %471 = load i32, i32* %6, align 4
  %472 = zext i32 %471 to i64
  %473 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %470, i64 %472
  %474 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = add nsw i32 %467, %475
  %477 = icmp sgt i32 %476, 30
  br i1 %477, label %478, label %480

478:                                              ; preds = %459
  %479 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %479, i32* %2, align 4
  br label %555

480:                                              ; preds = %459
  br label %481

481:                                              ; preds = %480
  %482 = load i32, i32* %6, align 4
  %483 = add i32 %482, 1
  store i32 %483, i32* %6, align 4
  br label %297

484:                                              ; preds = %297
  br label %485

485:                                              ; preds = %484, %283
  %486 = load i32*, i32** %4, align 8
  %487 = call i32 @get_interleaved_ue_golomb(i32* %486)
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %496

489:                                              ; preds = %485
  %490 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %491 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %490, i32 0, i32 6
  %492 = load i32, i32* %491, align 8
  %493 = load i32, i32* @AV_LOG_ERROR, align 4
  %494 = call i32 (i32, i32, i8*, ...) @av_log(i32 %492, i32 %493, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %495 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %495, i32* %2, align 4
  br label %555

496:                                              ; preds = %485
  %497 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %498 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %497, i32 0, i32 4
  store i32 1, i32* %498, align 8
  %499 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %500 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %499, i32 0, i32 5
  %501 = load i32*, i32** %500, align 8
  %502 = getelementptr inbounds i32, i32* %501, i64 0
  store i32 1, i32* %502, align 4
  %503 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %504 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %503, i32 0, i32 5
  %505 = load i32*, i32** %504, align 8
  %506 = getelementptr inbounds i32, i32* %505, i64 1
  store i32 1, i32* %506, align 4
  %507 = load i32*, i32** %4, align 8
  %508 = call i64 @get_bits1(i32* %507)
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %510, label %554

510:                                              ; preds = %496
  %511 = load i32*, i32** %4, align 8
  %512 = call i32 @get_interleaved_ue_golomb(i32* %511)
  %513 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %514 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %513, i32 0, i32 4
  store i32 %512, i32* %514, align 8
  %515 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %516 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %515, i32 0, i32 4
  %517 = load i32, i32* %516, align 8
  %518 = icmp slt i32 %517, 1
  br i1 %518, label %524, label %519

519:                                              ; preds = %510
  %520 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %521 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %520, i32 0, i32 4
  %522 = load i32, i32* %521, align 8
  %523 = icmp sgt i32 %522, 8
  br i1 %523, label %524, label %533

524:                                              ; preds = %519, %510
  %525 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %526 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %525, i32 0, i32 6
  %527 = load i32, i32* %526, align 8
  %528 = load i32, i32* @AV_LOG_ERROR, align 4
  %529 = call i32 (i32, i32, i8*, ...) @av_log(i32 %527, i32 %528, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %530 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %531 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %530, i32 0, i32 4
  store i32 1, i32* %531, align 8
  %532 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %532, i32* %2, align 4
  br label %555

533:                                              ; preds = %519
  %534 = load i32*, i32** %4, align 8
  %535 = call i8* @dirac_get_se_golomb(i32* %534)
  %536 = ptrtoint i8* %535 to i32
  %537 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %538 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %537, i32 0, i32 5
  %539 = load i32*, i32** %538, align 8
  %540 = getelementptr inbounds i32, i32* %539, i64 0
  store i32 %536, i32* %540, align 4
  %541 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %542 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %541, i32 0, i32 3
  %543 = load i32, i32* %542, align 4
  %544 = icmp eq i32 %543, 2
  br i1 %544, label %545, label %553

545:                                              ; preds = %533
  %546 = load i32*, i32** %4, align 8
  %547 = call i8* @dirac_get_se_golomb(i32* %546)
  %548 = ptrtoint i8* %547 to i32
  %549 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %550 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %549, i32 0, i32 5
  %551 = load i32*, i32** %550, align 8
  %552 = getelementptr inbounds i32, i32* %551, i64 1
  store i32 %548, i32* %552, align 4
  br label %553

553:                                              ; preds = %545, %533
  br label %554

554:                                              ; preds = %553, %496
  store i32 0, i32* %2, align 4
  br label %555

555:                                              ; preds = %554, %524, %489, %478, %276, %260, %237, %202, %131, %15
  %556 = load i32, i32* %2, align 4
  ret i32 %556
}

declare dso_local i32 @align_get_bits(i32*) #1

declare dso_local i32 @get_interleaved_ue_golomb(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i64 @FFMAX(i32, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i8* @dirac_get_se_golomb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
