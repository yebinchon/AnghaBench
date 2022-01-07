; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_config_input.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_config_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, double, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, float, float, float, float, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@DFT_R2C = common dso_local global i32 0, align 4
@AV_CH_FRONT_CENTER = common dso_local global i32 0, align 4
@AV_CH_FRONT_LEFT = common dso_local global i32 0, align 4
@AV_CH_FRONT_RIGHT = common dso_local global i32 0, align 4
@AV_CH_SIDE_LEFT = common dso_local global i32 0, align 4
@AV_CH_SIDE_RIGHT = common dso_local global i32 0, align 4
@AV_CH_BACK_LEFT = common dso_local global i32 0, align 4
@AV_CH_BACK_RIGHT = common dso_local global i32 0, align 4
@AV_CH_BACK_CENTER = common dso_local global i32 0, align 4
@AV_CH_LOW_FREQUENCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @config_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %5, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32* @av_calloc(i32 %15, i32 4)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 19
  store i32* %16, i32** %18, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 19
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = call i32 @AVERROR(i32 %24)
  store i32 %25, i32* %2, align 4
  br label %355

26:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %58, %26
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %61

33:                                               ; preds = %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ff_log2(i32 %36)
  %38 = load i32, i32* @DFT_R2C, align 4
  %39 = call i32 @av_rdft_init(i32 %37, i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 19
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 19
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %33
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = call i32 @AVERROR(i32 %55)
  store i32 %56, i32* %2, align 4
  br label %355

57:                                               ; preds = %33
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %27

61:                                               ; preds = %27
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32* @av_malloc_array(i32 %69, i32 4)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 9
  store i32* %70, i32** %72, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 9
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %61
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = call i32 @AVERROR(i32 %78)
  store i32 %79, i32* %2, align 4
  br label %355

80:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %97, %80
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %81
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 18
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 9
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %90, i32* %96, align 4
  br label %97

97:                                               ; preds = %87
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %81

100:                                              ; preds = %81
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @AV_CH_FRONT_CENTER, align 4
  %105 = call i32 @av_get_channel_layout_channel_index(i32 %103, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %100
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 17
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 9
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %118, %111
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %108, %100
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @AV_CH_FRONT_LEFT, align 4
  %125 = call i32 @av_get_channel_layout_channel_index(i32 %123, i32 %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %120
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 16
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 9
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 %138, %131
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %128, %120
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @AV_CH_FRONT_RIGHT, align 4
  %145 = call i32 @av_get_channel_layout_channel_index(i32 %143, i32 %144)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = icmp sge i32 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %140
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 15
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 9
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 %158, %151
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %148, %140
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @AV_CH_SIDE_LEFT, align 4
  %165 = call i32 @av_get_channel_layout_channel_index(i32 %163, i32 %164)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp sge i32 %166, 0
  br i1 %167, label %168, label %180

168:                                              ; preds = %160
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 14
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 9
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = mul nsw i32 %178, %171
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %168, %160
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @AV_CH_SIDE_RIGHT, align 4
  %185 = call i32 @av_get_channel_layout_channel_index(i32 %183, i32 %184)
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = icmp sge i32 %186, 0
  br i1 %187, label %188, label %200

188:                                              ; preds = %180
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 13
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 9
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %6, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = mul nsw i32 %198, %191
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %188, %180
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @AV_CH_BACK_LEFT, align 4
  %205 = call i32 @av_get_channel_layout_channel_index(i32 %203, i32 %204)
  store i32 %205, i32* %6, align 4
  %206 = load i32, i32* %6, align 4
  %207 = icmp sge i32 %206, 0
  br i1 %207, label %208, label %220

208:                                              ; preds = %200
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 12
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 9
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %6, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = mul nsw i32 %218, %211
  store i32 %219, i32* %217, align 4
  br label %220

220:                                              ; preds = %208, %200
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @AV_CH_BACK_RIGHT, align 4
  %225 = call i32 @av_get_channel_layout_channel_index(i32 %223, i32 %224)
  store i32 %225, i32* %6, align 4
  %226 = load i32, i32* %6, align 4
  %227 = icmp sge i32 %226, 0
  br i1 %227, label %228, label %240

228:                                              ; preds = %220
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 11
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 9
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %6, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = mul nsw i32 %238, %231
  store i32 %239, i32* %237, align 4
  br label %240

240:                                              ; preds = %228, %220
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @AV_CH_BACK_CENTER, align 4
  %245 = call i32 @av_get_channel_layout_channel_index(i32 %243, i32 %244)
  store i32 %245, i32* %6, align 4
  %246 = load i32, i32* %6, align 4
  %247 = icmp sge i32 %246, 0
  br i1 %247, label %248, label %260

248:                                              ; preds = %240
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 10
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 9
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %6, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = mul nsw i32 %258, %251
  store i32 %259, i32* %257, align 4
  br label %260

260:                                              ; preds = %248, %240
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @AV_CH_LOW_FREQUENCY, align 4
  %265 = call i32 @av_get_channel_layout_channel_index(i32 %263, i32 %264)
  store i32 %265, i32* %6, align 4
  %266 = load i32, i32* %6, align 4
  %267 = icmp sge i32 %266, 0
  br i1 %267, label %268, label %280

268:                                              ; preds = %260
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 8
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 9
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = mul nsw i32 %278, %271
  store i32 %279, i32* %277, align 4
  br label %280

280:                                              ; preds = %268, %260
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = mul nsw i32 %284, 2
  %286 = call i32 @ff_get_audio_buffer(%struct.TYPE_7__* %281, i32 %285)
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 7
  store i32 %286, i32* %288, align 4
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 7
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %280
  %294 = load i32, i32* @ENOMEM, align 4
  %295 = call i32 @AVERROR(i32 %294)
  store i32 %295, i32* %2, align 4
  br label %355

296:                                              ; preds = %280
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @av_audio_fifo_alloc(i32 %299, i32 %302, i32 %305)
  %307 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 6
  store i32 %306, i32* %308, align 8
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 6
  %311 = load i32, i32* %310, align 8
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %316, label %313

313:                                              ; preds = %296
  %314 = load i32, i32* @ENOMEM, align 4
  %315 = call i32 @AVERROR(i32 %314)
  store i32 %315, i32* %2, align 4
  br label %355

316:                                              ; preds = %296
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 3
  %319 = load float, float* %318, align 4
  %320 = fmul float 1.000000e+00, %319
  %321 = fpext float %320 to double
  %322 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 1
  %324 = load double, double* %323, align 8
  %325 = fmul double %324, 5.000000e-01
  %326 = fdiv double %321, %325
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = sdiv i32 %329, 2
  %331 = sitofp i32 %330 to double
  %332 = fmul double %326, %331
  %333 = fptrunc double %332 to float
  %334 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 2
  store float %333, float* %335, align 8
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 5
  %338 = load float, float* %337, align 4
  %339 = fmul float 1.000000e+00, %338
  %340 = fpext float %339 to double
  %341 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 1
  %343 = load double, double* %342, align 8
  %344 = fmul double %343, 5.000000e-01
  %345 = fdiv double %340, %344
  %346 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = sdiv i32 %348, 2
  %350 = sitofp i32 %349 to double
  %351 = fmul double %345, %350
  %352 = fptrunc double %351 to float
  %353 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 4
  store float %352, float* %354, align 8
  store i32 0, i32* %2, align 4
  br label %355

355:                                              ; preds = %316, %313, %293, %77, %54, %23
  %356 = load i32, i32* %2, align 4
  ret i32 %356
}

declare dso_local i32* @av_calloc(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_rdft_init(i32, i32) #1

declare dso_local i32 @ff_log2(i32) #1

declare dso_local i32* @av_malloc_array(i32, i32) #1

declare dso_local i32 @av_get_channel_layout_channel_index(i32, i32) #1

declare dso_local i32 @ff_get_audio_buffer(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @av_audio_fifo_alloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
