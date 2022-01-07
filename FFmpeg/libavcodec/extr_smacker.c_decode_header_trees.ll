; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_smacker.c_decode_header_trees.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_smacker.c_decode_header_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32*, i32*, i64*, %struct.TYPE_6__*, i64*, i64*, i64* }
%struct.TYPE_6__ = type { i64, i64 }

@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Skipping MMAP tree\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Skipping MCLR tree\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Skipping FULL tree\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Skipping TYPE tree\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @decode_header_trees to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_header_trees(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 5
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @AV_RL32(i64 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 4
  %23 = call i32 @AV_RL32(i64 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 5
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 8
  %30 = call i32 @AV_RL32(i64 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 5
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 12
  %37 = call i32 @AV_RL32(i64 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 5
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 16
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 5
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %48, 16
  %50 = call i32 @init_get_bits8(i32* %4, i64 %43, i64 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %1
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %2, align 4
  br label %273

55:                                               ; preds = %1
  %56 = call i32 @get_bits1(i32* %4)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %94, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 5
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i32, i32* @AV_LOG_INFO, align 4
  %65 = call i32 @av_log(%struct.TYPE_6__* %63, i32 %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %66 = call i8* @av_malloc(i32 8)
  %67 = bitcast i8* %66 to i64*
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 8
  store i64* %67, i64** %69, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 8
  %72 = load i64*, i64** %71, align 8
  %73 = icmp ne i64* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %58
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = call i32 @AVERROR(i32 %75)
  store i32 %76, i32* %2, align 4
  br label %273

77:                                               ; preds = %58
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 8
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  store i32 1, i32* %85, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 1, i32* %89, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 1, i32* %93, align 4
  br label %108

94:                                               ; preds = %55
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @smacker_decode_header_tree(%struct.TYPE_5__* %95, i32* %4, i64** %97, i32* %100, i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %94
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %2, align 4
  br label %273

107:                                              ; preds = %94
  br label %108

108:                                              ; preds = %107, %77
  %109 = call i32 @get_bits1(i32* %4)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %147, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 5
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = load i32, i32* @AV_LOG_INFO, align 4
  %118 = call i32 @av_log(%struct.TYPE_6__* %116, i32 %117, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %119 = call i8* @av_malloc(i32 8)
  %120 = bitcast i8* %119 to i64*
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 7
  store i64* %120, i64** %122, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 7
  %125 = load i64*, i64** %124, align 8
  %126 = icmp ne i64* %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %111
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = call i32 @AVERROR(i32 %128)
  store i32 %129, i32* %2, align 4
  br label %273

130:                                              ; preds = %111
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 7
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 0
  store i64 0, i64* %134, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  store i32 1, i32* %138, align 4
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  store i32 1, i32* %142, align 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  store i32 1, i32* %146, align 4
  br label %161

147:                                              ; preds = %108
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 7
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @smacker_decode_header_tree(%struct.TYPE_5__* %148, i32* %4, i64** %150, i32* %153, i32 %154)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %147
  %159 = load i32, i32* %9, align 4
  store i32 %159, i32* %2, align 4
  br label %273

160:                                              ; preds = %147
  br label %161

161:                                              ; preds = %160, %130
  %162 = call i32 @get_bits1(i32* %4)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %200, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 5
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = load i32, i32* @AV_LOG_INFO, align 4
  %171 = call i32 @av_log(%struct.TYPE_6__* %169, i32 %170, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %172 = call i8* @av_malloc(i32 8)
  %173 = bitcast i8* %172 to i64*
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 6
  store i64* %173, i64** %175, align 8
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 6
  %178 = load i64*, i64** %177, align 8
  %179 = icmp ne i64* %178, null
  br i1 %179, label %183, label %180

180:                                              ; preds = %164
  %181 = load i32, i32* @ENOMEM, align 4
  %182 = call i32 @AVERROR(i32 %181)
  store i32 %182, i32* %2, align 4
  br label %273

183:                                              ; preds = %164
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 6
  %186 = load i64*, i64** %185, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 0
  store i64 0, i64* %187, align 8
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 2
  store i32 1, i32* %191, align 4
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  store i32 1, i32* %195, align 4
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  store i32 1, i32* %199, align 4
  br label %214

200:                                              ; preds = %161
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 6
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %7, align 4
  %208 = call i32 @smacker_decode_header_tree(%struct.TYPE_5__* %201, i32* %4, i64** %203, i32* %206, i32 %207)
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* %9, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %200
  %212 = load i32, i32* %9, align 4
  store i32 %212, i32* %2, align 4
  br label %273

213:                                              ; preds = %200
  br label %214

214:                                              ; preds = %213, %183
  %215 = call i32 @get_bits1(i32* %4)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %253, label %217

217:                                              ; preds = %214
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %10, align 4
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 5
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = load i32, i32* @AV_LOG_INFO, align 4
  %224 = call i32 @av_log(%struct.TYPE_6__* %222, i32 %223, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %225 = call i8* @av_malloc(i32 8)
  %226 = bitcast i8* %225 to i64*
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 4
  store i64* %226, i64** %228, align 8
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 4
  %231 = load i64*, i64** %230, align 8
  %232 = icmp ne i64* %231, null
  br i1 %232, label %236, label %233

233:                                              ; preds = %217
  %234 = load i32, i32* @ENOMEM, align 4
  %235 = call i32 @AVERROR(i32 %234)
  store i32 %235, i32* %2, align 4
  br label %273

236:                                              ; preds = %217
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 4
  %239 = load i64*, i64** %238, align 8
  %240 = getelementptr inbounds i64, i64* %239, i64 0
  store i64 0, i64* %240, align 8
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 3
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 2
  store i32 1, i32* %244, align 4
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 3
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 1
  store i32 1, i32* %248, align 4
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 3
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 0
  store i32 1, i32* %252, align 4
  br label %267

253:                                              ; preds = %214
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 4
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 3
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %8, align 4
  %261 = call i32 @smacker_decode_header_tree(%struct.TYPE_5__* %254, i32* %4, i64** %256, i32* %259, i32 %260)
  store i32 %261, i32* %9, align 4
  %262 = load i32, i32* %9, align 4
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %253
  %265 = load i32, i32* %9, align 4
  store i32 %265, i32* %2, align 4
  br label %273

266:                                              ; preds = %253
  br label %267

267:                                              ; preds = %266, %236
  %268 = load i32, i32* %10, align 4
  %269 = icmp eq i32 %268, 4
  br i1 %269, label %270, label %272

270:                                              ; preds = %267
  %271 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %271, i32* %2, align 4
  br label %273

272:                                              ; preds = %267
  store i32 0, i32* %2, align 4
  br label %273

273:                                              ; preds = %272, %270, %264, %233, %211, %180, %158, %127, %105, %74, %53
  %274 = load i32, i32* %2, align 4
  ret i32 %274
}

declare dso_local i32 @AV_RL32(i64) #1

declare dso_local i32 @init_get_bits8(i32*, i64, i64) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @smacker_decode_header_tree(%struct.TYPE_5__*, i32*, i64**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
