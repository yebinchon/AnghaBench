; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac9dec.c_atrac9_decode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac9dec.c_atrac9_decode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_42__ = type { i32, i32, i64, i32, %struct.TYPE_39__*, %struct.TYPE_45__, %struct.TYPE_40__*, i32 }
%struct.TYPE_39__ = type { i32 (float*, i32, i64, i32, i32)* }
%struct.TYPE_45__ = type { i32 (%struct.TYPE_45__*, i64, i32)* }
%struct.TYPE_40__ = type { i64*, i32** }
%struct.TYPE_44__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_43__*, i64 }
%struct.TYPE_43__ = type { i32, i32*, i32*, i32*, i32*, i32, i32, i64* }
%struct.TYPE_41__ = type { i64* }

@ATRAC9_BLOCK_TYPE_CPE = common dso_local global i64 0, align 8
@ATRAC9_BLOCK_TYPE_LFE = common dso_local global i64 0, align 8
@at9_q_unit_to_coeff_idx = common dso_local global i32* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid block flags!\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@at9_tab_band_q_unit_map = common dso_local global i8** null, align 8
@at9_tab_sri_max_bands = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid band count %i!\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Invalid stereo band %i!\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Invalid extension band %i!\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"invalid block reused!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_42__*, i32*, %struct.TYPE_44__*, %struct.TYPE_41__*, i32, i32)* @atrac9_decode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atrac9_decode_block(%struct.TYPE_42__* %0, i32* %1, %struct.TYPE_44__* %2, %struct.TYPE_41__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_42__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_44__*, align 8
  %11 = alloca %struct.TYPE_41__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_43__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_43__*, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_43__*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca float*, align 8
  store %struct.TYPE_42__* %0, %struct.TYPE_42__** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_44__* %2, %struct.TYPE_44__** %10, align 8
  store %struct.TYPE_41__* %3, %struct.TYPE_41__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @get_bits1(i32* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %14, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @get_bits1(i32* %42)
  store i32 %43, i32* %15, align 4
  %44 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %44, i32 0, i32 6
  %46 = load %struct.TYPE_40__*, %struct.TYPE_40__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ATRAC9_BLOCK_TYPE_CPE, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %16, align 4
  %56 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %56, i32 0, i32 6
  %58 = load %struct.TYPE_40__*, %struct.TYPE_40__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ATRAC9_BLOCK_TYPE_LFE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %180

67:                                               ; preds = %6
  %68 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %68, i32 0, i32 9
  %70 = load %struct.TYPE_43__*, %struct.TYPE_43__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %70, i64 0
  store %struct.TYPE_43__* %71, %struct.TYPE_43__** %17, align 8
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 8, i32 4
  store i32 %75, i32* %18, align 4
  %76 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %76, i32 0, i32 0
  store i32 2, i32* %77, align 8
  %78 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %78, i32 0, i32 0
  store i32 2, i32* %79, align 8
  %80 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @memset(i32* %82, i32 0, i32 8)
  %84 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @memset(i32* %86, i32 0, i32 8)
  %88 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @memset(i32* %90, i32 0, i32 8)
  store i32 0, i32* %19, align 4
  br label %92

92:                                               ; preds = %120, %67
  %93 = load i32, i32* %19, align 4
  %94 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %123

98:                                               ; preds = %92
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @get_bits(i32* %99, i32 5)
  %101 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %19, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %100, i32* %106, align 4
  %107 = load i32, i32* %18, align 4
  %108 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %19, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %107, i32* %113, align 4
  %114 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %114, i32 0, i32 7
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %19, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  store i64 0, i64* %119, align 8
  br label %120

120:                                              ; preds = %98
  %121 = load i32, i32* %19, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %19, align 4
  br label %92

123:                                              ; preds = %92
  store i32 0, i32* %20, align 4
  br label %124

124:                                              ; preds = %169, %123
  %125 = load i32, i32* %20, align 4
  %126 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %127 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %172

130:                                              ; preds = %124
  %131 = load i32*, i32** @at9_q_unit_to_coeff_idx, align 8
  %132 = load i32, i32* %20, align 4
  %133 = add nsw i32 %132, 0
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %21, align 4
  %137 = load i32*, i32** @at9_q_unit_to_coeff_idx, align 8
  %138 = load i32, i32* %20, align 4
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %22, align 4
  %143 = load i32, i32* %21, align 4
  store i32 %143, i32* %23, align 4
  br label %144

144:                                              ; preds = %165, %130
  %145 = load i32, i32* %23, align 4
  %146 = load i32, i32* %22, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %168

148:                                              ; preds = %144
  %149 = load i32*, i32** %9, align 8
  %150 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %20, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  %158 = call i32 @get_bits(i32* %149, i32 %157)
  %159 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %160 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %23, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %158, i32* %164, align 4
  br label %165

165:                                              ; preds = %148
  %166 = load i32, i32* %23, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %23, align 4
  br label %144

168:                                              ; preds = %144
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %20, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %20, align 4
  br label %124

172:                                              ; preds = %124
  %173 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %174 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %175 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %176 = call i32 @dequantize(%struct.TYPE_42__* %173, %struct.TYPE_44__* %174, %struct.TYPE_43__* %175)
  %177 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %178 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %179 = call i32 @apply_scalefactors(%struct.TYPE_42__* %177, %struct.TYPE_44__* %178, i32 0)
  br label %511

180:                                              ; preds = %6
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %180
  %184 = load i32, i32* %15, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %183
  %187 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %187, i32 0, i32 7
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @AV_LOG_ERROR, align 4
  %191 = call i32 (i32, i32, i8*, ...) @av_log(i32 %189, i32 %190, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %192 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %192, i32* %7, align 4
  br label %608

193:                                              ; preds = %183, %180
  %194 = load i32, i32* %15, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %319, label %196

196:                                              ; preds = %193
  %197 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp sgt i32 %199, 7
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i32 1, i32 3
  store i32 %202, i32* %26, align 4
  %203 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %203, i32 0, i32 1
  store i32 0, i32* %204, align 4
  %205 = load i32*, i32** %9, align 8
  %206 = call i32 @get_bits(i32* %205, i32 4)
  %207 = load i32, i32* %26, align 4
  %208 = add nsw i32 %206, %207
  %209 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 8
  %211 = load i8**, i8*** @at9_tab_band_q_unit_map, align 8
  %212 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %211, i64 %215
  %217 = load i8*, i8** %216, align 8
  %218 = ptrtoint i8* %217 to i32
  %219 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  %221 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %224, i32 0, i32 4
  store i32 %223, i32* %225, align 8
  %226 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %226, i32 0, i32 3
  store i32 %223, i32* %227, align 4
  %228 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = sext i32 %230 to i64
  %232 = load i64*, i64** @at9_tab_sri_max_bands, align 8
  %233 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i64, i64* %232, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = icmp ugt i64 %231, %238
  br i1 %239, label %240, label %250

240:                                              ; preds = %196
  %241 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %241, i32 0, i32 7
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @AV_LOG_ERROR, align 4
  %245 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = call i32 (i32, i32, i8*, ...) @av_log(i32 %243, i32 %244, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %247)
  %249 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %249, i32* %7, align 4
  br label %608

250:                                              ; preds = %196
  %251 = load i32, i32* %16, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %280

253:                                              ; preds = %250
  %254 = load i32*, i32** %9, align 8
  %255 = call i32 @get_bits(i32* %254, i32 4)
  %256 = load i32, i32* %26, align 4
  %257 = add nsw i32 %255, %256
  store i32 %257, i32* %24, align 4
  %258 = load i32, i32* %24, align 4
  %259 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = icmp sgt i32 %258, %261
  br i1 %262, label %263, label %271

263:                                              ; preds = %253
  %264 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %264, i32 0, i32 7
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @AV_LOG_ERROR, align 4
  %268 = load i32, i32* %24, align 4
  %269 = call i32 (i32, i32, i8*, ...) @av_log(i32 %266, i32 %267, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %268)
  %270 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %270, i32* %7, align 4
  br label %608

271:                                              ; preds = %253
  %272 = load i8**, i8*** @at9_tab_band_q_unit_map, align 8
  %273 = load i32, i32* %24, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8*, i8** %272, i64 %274
  %276 = load i8*, i8** %275, align 8
  %277 = ptrtoint i8* %276 to i32
  %278 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %278, i32 0, i32 4
  store i32 %277, i32* %279, align 8
  br label %280

280:                                              ; preds = %271, %250
  %281 = load i32*, i32** %9, align 8
  %282 = call i32 @get_bits1(i32* %281)
  %283 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %284 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %283, i32 0, i32 5
  store i32 %282, i32* %284, align 4
  %285 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %316

289:                                              ; preds = %280
  %290 = load i32*, i32** %9, align 8
  %291 = call i32 @get_bits(i32* %290, i32 4)
  %292 = load i32, i32* %26, align 4
  %293 = add nsw i32 %291, %292
  store i32 %293, i32* %25, align 4
  %294 = load i32, i32* %25, align 4
  %295 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = icmp slt i32 %294, %297
  br i1 %298, label %299, label %307

299:                                              ; preds = %289
  %300 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @AV_LOG_ERROR, align 4
  %304 = load i32, i32* %25, align 4
  %305 = call i32 (i32, i32, i8*, ...) @av_log(i32 %302, i32 %303, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %304)
  %306 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %306, i32* %7, align 4
  br label %608

307:                                              ; preds = %289
  %308 = load i8**, i8*** @at9_tab_band_q_unit_map, align 8
  %309 = load i32, i32* %25, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8*, i8** %308, i64 %310
  %312 = load i8*, i8** %311, align 8
  %313 = ptrtoint i8* %312 to i32
  %314 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %315 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %314, i32 0, i32 3
  store i32 %313, i32* %315, align 4
  br label %316

316:                                              ; preds = %307, %280
  %317 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %318 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %317, i32 0, i32 1
  store i32 1, i32* %318, align 4
  br label %319

319:                                              ; preds = %316, %193
  %320 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %321 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %331, label %324

324:                                              ; preds = %319
  %325 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %325, i32 0, i32 7
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* @AV_LOG_ERROR, align 4
  %329 = call i32 (i32, i32, i8*, ...) @av_log(i32 %327, i32 %328, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %330 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %330, i32* %7, align 4
  br label %608

331:                                              ; preds = %319
  %332 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %333 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %334 = load i32*, i32** %9, align 8
  %335 = call i64 @parse_gradient(%struct.TYPE_42__* %332, %struct.TYPE_44__* %333, i32* %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %331
  %338 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %338, i32* %7, align 4
  br label %608

339:                                              ; preds = %331
  %340 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %341 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %340, i32 0, i32 6
  store i32 0, i32* %341, align 8
  %342 = load i32, i32* %16, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %397

344:                                              ; preds = %339
  %345 = load i32*, i32** %9, align 8
  %346 = call i32 @get_bits1(i32* %345)
  %347 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %348 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %347, i32 0, i32 6
  store i32 %346, i32* %348, align 8
  %349 = load i32*, i32** %9, align 8
  %350 = call i32 @get_bits1(i32* %349)
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %377

352:                                              ; preds = %344
  %353 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %354 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %353, i32 0, i32 4
  %355 = load i32, i32* %354, align 8
  store i32 %355, i32* %27, align 4
  br label %356

356:                                              ; preds = %373, %352
  %357 = load i32, i32* %27, align 4
  %358 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %359 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = icmp slt i32 %357, %360
  br i1 %361, label %362, label %376

362:                                              ; preds = %356
  %363 = load i32*, i32** %9, align 8
  %364 = call i32 @get_bits1(i32* %363)
  %365 = mul nsw i32 2, %364
  %366 = sub nsw i32 1, %365
  %367 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %368 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %367, i32 0, i32 7
  %369 = load i32*, i32** %368, align 8
  %370 = load i32, i32* %27, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  store i32 %366, i32* %372, align 4
  br label %373

373:                                              ; preds = %362
  %374 = load i32, i32* %27, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %27, align 4
  br label %356

376:                                              ; preds = %356
  br label %396

377:                                              ; preds = %344
  store i32 0, i32* %28, align 4
  br label %378

378:                                              ; preds = %392, %377
  %379 = load i32, i32* %28, align 4
  %380 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %381 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %380, i32 0, i32 7
  %382 = load i32*, i32** %381, align 8
  %383 = call i32 @FF_ARRAY_ELEMS(i32* %382)
  %384 = icmp slt i32 %379, %383
  br i1 %384, label %385, label %395

385:                                              ; preds = %378
  %386 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %387 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %386, i32 0, i32 7
  %388 = load i32*, i32** %387, align 8
  %389 = load i32, i32* %28, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %388, i64 %390
  store i32 1, i32* %391, align 4
  br label %392

392:                                              ; preds = %385
  %393 = load i32, i32* %28, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %28, align 4
  br label %378

395:                                              ; preds = %378
  br label %396

396:                                              ; preds = %395, %376
  br label %397

397:                                              ; preds = %396, %339
  %398 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %399 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %400 = load i32*, i32** %9, align 8
  %401 = load i32, i32* %16, align 4
  %402 = call i64 @parse_band_ext(%struct.TYPE_42__* %398, %struct.TYPE_44__* %399, i32* %400, i32 %401)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %406

404:                                              ; preds = %397
  %405 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %405, i32* %7, align 4
  br label %608

406:                                              ; preds = %397
  store i32 0, i32* %29, align 4
  br label %407

407:                                              ; preds = %468, %406
  %408 = load i32, i32* %29, align 4
  %409 = load i32, i32* %16, align 4
  %410 = icmp sle i32 %408, %409
  br i1 %410, label %411, label %471

411:                                              ; preds = %407
  %412 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %413 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %412, i32 0, i32 9
  %414 = load %struct.TYPE_43__*, %struct.TYPE_43__** %413, align 8
  %415 = load i32, i32* %29, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %414, i64 %416
  store %struct.TYPE_43__* %417, %struct.TYPE_43__** %30, align 8
  %418 = load i32, i32* %29, align 4
  %419 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %420 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %419, i32 0, i32 6
  %421 = load i32, i32* %420, align 8
  %422 = icmp eq i32 %418, %421
  br i1 %422, label %423, label %427

423:                                              ; preds = %411
  %424 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %425 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  br label %431

427:                                              ; preds = %411
  %428 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %429 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %428, i32 0, i32 4
  %430 = load i32, i32* %429, align 8
  br label %431

431:                                              ; preds = %427, %423
  %432 = phi i32 [ %426, %423 ], [ %430, %427 ]
  %433 = load %struct.TYPE_43__*, %struct.TYPE_43__** %30, align 8
  %434 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %433, i32 0, i32 0
  store i32 %432, i32* %434, align 8
  %435 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %436 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %437 = load %struct.TYPE_43__*, %struct.TYPE_43__** %30, align 8
  %438 = load i32*, i32** %9, align 8
  %439 = load i32, i32* %29, align 4
  %440 = load i32, i32* %14, align 4
  %441 = call i64 @read_scalefactors(%struct.TYPE_42__* %435, %struct.TYPE_44__* %436, %struct.TYPE_43__* %437, i32* %438, i32 %439, i32 %440)
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %445

443:                                              ; preds = %431
  %444 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %444, i32* %7, align 4
  br label %608

445:                                              ; preds = %431
  %446 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %447 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %448 = load %struct.TYPE_43__*, %struct.TYPE_43__** %30, align 8
  %449 = call i32 @calc_precision(%struct.TYPE_42__* %446, %struct.TYPE_44__* %447, %struct.TYPE_43__* %448)
  %450 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %451 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %452 = load %struct.TYPE_43__*, %struct.TYPE_43__** %30, align 8
  %453 = call i32 @calc_codebook_idx(%struct.TYPE_42__* %450, %struct.TYPE_44__* %451, %struct.TYPE_43__* %452)
  %454 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %455 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %456 = load %struct.TYPE_43__*, %struct.TYPE_43__** %30, align 8
  %457 = load i32*, i32** %9, align 8
  %458 = call i32 @read_coeffs_coarse(%struct.TYPE_42__* %454, %struct.TYPE_44__* %455, %struct.TYPE_43__* %456, i32* %457)
  %459 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %460 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %461 = load %struct.TYPE_43__*, %struct.TYPE_43__** %30, align 8
  %462 = load i32*, i32** %9, align 8
  %463 = call i32 @read_coeffs_fine(%struct.TYPE_42__* %459, %struct.TYPE_44__* %460, %struct.TYPE_43__* %461, i32* %462)
  %464 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %465 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %466 = load %struct.TYPE_43__*, %struct.TYPE_43__** %30, align 8
  %467 = call i32 @dequantize(%struct.TYPE_42__* %464, %struct.TYPE_44__* %465, %struct.TYPE_43__* %466)
  br label %468

468:                                              ; preds = %445
  %469 = load i32, i32* %29, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %29, align 4
  br label %407

471:                                              ; preds = %407
  %472 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %473 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %472, i32 0, i32 5
  %474 = load i32, i32* %473, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %480

476:                                              ; preds = %471
  %477 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %478 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %477, i32 0, i32 3
  %479 = load i32, i32* %478, align 4
  br label %484

480:                                              ; preds = %471
  %481 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %482 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 8
  br label %484

484:                                              ; preds = %480, %476
  %485 = phi i32 [ %479, %476 ], [ %483, %480 ]
  %486 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %487 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %486, i32 0, i32 8
  store i32 %485, i32* %487, align 8
  %488 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %489 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %490 = load i32, i32* %16, align 4
  %491 = call i32 @apply_intensity_stereo(%struct.TYPE_42__* %488, %struct.TYPE_44__* %489, i32 %490)
  %492 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %493 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %494 = load i32, i32* %16, align 4
  %495 = call i32 @apply_scalefactors(%struct.TYPE_42__* %492, %struct.TYPE_44__* %493, i32 %494)
  %496 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %497 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %496, i32 0, i32 5
  %498 = load i32, i32* %497, align 4
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %510

500:                                              ; preds = %484
  %501 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %502 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %501, i32 0, i32 10
  %503 = load i64, i64* %502, align 8
  %504 = icmp ne i64 %503, 0
  br i1 %504, label %505, label %510

505:                                              ; preds = %500
  %506 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %507 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %508 = load i32, i32* %16, align 4
  %509 = call i32 @apply_band_extension(%struct.TYPE_42__* %506, %struct.TYPE_44__* %507, i32 %508)
  br label %510

510:                                              ; preds = %505, %500, %484
  br label %511

511:                                              ; preds = %510, %172
  store i32 0, i32* %31, align 4
  br label %512

512:                                              ; preds = %604, %511
  %513 = load i32, i32* %31, align 4
  %514 = load i32, i32* %16, align 4
  %515 = icmp sle i32 %513, %514
  br i1 %515, label %516, label %607

516:                                              ; preds = %512
  %517 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %518 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %517, i32 0, i32 9
  %519 = load %struct.TYPE_43__*, %struct.TYPE_43__** %518, align 8
  %520 = load i32, i32* %31, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %519, i64 %521
  store %struct.TYPE_43__* %522, %struct.TYPE_43__** %32, align 8
  %523 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %524 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %523, i32 0, i32 6
  %525 = load %struct.TYPE_40__*, %struct.TYPE_40__** %524, align 8
  %526 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %525, i32 0, i32 1
  %527 = load i32**, i32*** %526, align 8
  %528 = load i32, i32* %13, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds i32*, i32** %527, i64 %529
  %531 = load i32*, i32** %530, align 8
  %532 = load i32, i32* %31, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i32, i32* %531, i64 %533
  %535 = load i32, i32* %534, align 4
  store i32 %535, i32* %33, align 4
  %536 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %537 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %536, i32 0, i32 1
  %538 = load i32, i32* %537, align 4
  %539 = shl i32 1, %538
  store i32 %539, i32* %34, align 4
  %540 = load i32, i32* %34, align 4
  %541 = load i32, i32* %12, align 4
  %542 = mul nsw i32 %540, %541
  %543 = sext i32 %542 to i64
  %544 = mul i64 %543, 4
  %545 = trunc i64 %544 to i32
  store i32 %545, i32* %35, align 4
  %546 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %547 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %546, i32 0, i32 0
  %548 = load i64*, i64** %547, align 8
  %549 = load i32, i32* %33, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i64, i64* %548, i64 %550
  %552 = load i64, i64* %551, align 8
  %553 = load i32, i32* %35, align 4
  %554 = sext i32 %553 to i64
  %555 = add nsw i64 %552, %554
  %556 = inttoptr i64 %555 to float*
  store float* %556, float** %36, align 8
  %557 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %558 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %557, i32 0, i32 5
  %559 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %558, i32 0, i32 0
  %560 = load i32 (%struct.TYPE_45__*, i64, i32)*, i32 (%struct.TYPE_45__*, i64, i32)** %559, align 8
  %561 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %562 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %561, i32 0, i32 5
  %563 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %564 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %563, i32 0, i32 2
  %565 = load i64, i64* %564, align 8
  %566 = load %struct.TYPE_43__*, %struct.TYPE_43__** %32, align 8
  %567 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %566, i32 0, i32 6
  %568 = load i32, i32* %567, align 4
  %569 = call i32 %560(%struct.TYPE_45__* %562, i64 %565, i32 %568)
  %570 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %571 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %570, i32 0, i32 4
  %572 = load %struct.TYPE_39__*, %struct.TYPE_39__** %571, align 8
  %573 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %572, i32 0, i32 0
  %574 = load i32 (float*, i32, i64, i32, i32)*, i32 (float*, i32, i64, i32, i32)** %573, align 8
  %575 = load float*, float** %36, align 8
  %576 = load %struct.TYPE_43__*, %struct.TYPE_43__** %32, align 8
  %577 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %576, i32 0, i32 5
  %578 = load i32, i32* %577, align 8
  %579 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %580 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %579, i32 0, i32 2
  %581 = load i64, i64* %580, align 8
  %582 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %583 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %582, i32 0, i32 3
  %584 = load i32, i32* %583, align 8
  %585 = load i32, i32* %34, align 4
  %586 = ashr i32 %585, 1
  %587 = call i32 %574(float* %575, i32 %578, i64 %581, i32 %584, i32 %586)
  %588 = load %struct.TYPE_43__*, %struct.TYPE_43__** %32, align 8
  %589 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %588, i32 0, i32 5
  %590 = load i32, i32* %589, align 8
  %591 = load %struct.TYPE_42__*, %struct.TYPE_42__** %8, align 8
  %592 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %591, i32 0, i32 2
  %593 = load i64, i64* %592, align 8
  %594 = load i32, i32* %34, align 4
  %595 = ashr i32 %594, 1
  %596 = sext i32 %595 to i64
  %597 = add nsw i64 %593, %596
  %598 = load i32, i32* %34, align 4
  %599 = sext i32 %598 to i64
  %600 = mul i64 4, %599
  %601 = lshr i64 %600, 1
  %602 = trunc i64 %601 to i32
  %603 = call i32 @memcpy(i32 %590, i64 %597, i32 %602)
  br label %604

604:                                              ; preds = %516
  %605 = load i32, i32* %31, align 4
  %606 = add nsw i32 %605, 1
  store i32 %606, i32* %31, align 4
  br label %512

607:                                              ; preds = %512
  store i32 0, i32* %7, align 4
  br label %608

608:                                              ; preds = %607, %443, %404, %337, %324, %299, %263, %240, %186
  %609 = load i32, i32* %7, align 4
  ret i32 %609
}

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @dequantize(%struct.TYPE_42__*, %struct.TYPE_44__*, %struct.TYPE_43__*) #1

declare dso_local i32 @apply_scalefactors(%struct.TYPE_42__*, %struct.TYPE_44__*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i64 @parse_gradient(%struct.TYPE_42__*, %struct.TYPE_44__*, i32*) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i64 @parse_band_ext(%struct.TYPE_42__*, %struct.TYPE_44__*, i32*, i32) #1

declare dso_local i64 @read_scalefactors(%struct.TYPE_42__*, %struct.TYPE_44__*, %struct.TYPE_43__*, i32*, i32, i32) #1

declare dso_local i32 @calc_precision(%struct.TYPE_42__*, %struct.TYPE_44__*, %struct.TYPE_43__*) #1

declare dso_local i32 @calc_codebook_idx(%struct.TYPE_42__*, %struct.TYPE_44__*, %struct.TYPE_43__*) #1

declare dso_local i32 @read_coeffs_coarse(%struct.TYPE_42__*, %struct.TYPE_44__*, %struct.TYPE_43__*, i32*) #1

declare dso_local i32 @read_coeffs_fine(%struct.TYPE_42__*, %struct.TYPE_44__*, %struct.TYPE_43__*, i32*) #1

declare dso_local i32 @apply_intensity_stereo(%struct.TYPE_42__*, %struct.TYPE_44__*, i32) #1

declare dso_local i32 @apply_band_extension(%struct.TYPE_42__*, %struct.TYPE_44__*, i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
