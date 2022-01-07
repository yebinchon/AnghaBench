; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavsdec.c_decode_pic.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavsdec.c_decode_pic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32*, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_13__, i32, i64, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32*, i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"No sequence header decoded yet\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@PIC_PB_START_CODE = common dso_local global i64 0, align 8
@AV_PICTURE_TYPE_I = common dso_local global i64 0, align 8
@AV_PICTURE_TYPE_B = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"illegal picture type\0A\00", align 1
@AV_GET_BUFFER_FLAG_REF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"sym_factor %d too large\0A\00", align 1
@AV_PICTURE_TYPE_P = common dso_local global i64 0, align 8
@P_SKIP = common dso_local global i32 0, align 4
@P_8X8 = common dso_local global i32 0, align 4
@B_SKIP = common dso_local global i32 0, align 4
@B_8X8 = common dso_local global i32 0, align 4
@AVSFrame = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @decode_pic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_pic(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 -1, i32* %5, align 4
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 22
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 20
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @AV_LOG_ERROR, align 4
  %17 = call i32 (i32, i32, i8*, ...) @av_log(i32 %15, i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %18, i32* %2, align 4
  br label %824

19:                                               ; preds = %1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 17
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = call i32 @av_frame_unref(%struct.TYPE_15__* %23)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 18
  %27 = call i32 @skip_bits(i32* %26, i32 16)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PIC_PB_START_CODE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %96

33:                                               ; preds = %19
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 18
  %36 = call i32 @get_bits(i32* %35, i32 2)
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %39 = add nsw i64 %37, %38
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 17
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  store i64 %39, i64* %44, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 17
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %33
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 20
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @AV_LOG_ERROR, align 4
  %58 = call i32 (i32, i32, i8*, ...) @av_log(i32 %56, i32 %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %59, i32* %2, align 4
  br label %824

60:                                               ; preds = %33
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 16
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %60
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 16
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i64 1
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %72
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 17
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %84, %60
  %94 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %94, i32* %2, align 4
  br label %824

95:                                               ; preds = %84, %72
  br label %145

96:                                               ; preds = %19
  %97 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 17
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  store i64 %97, i64* %102, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 18
  %105 = call i32 @get_bits1(i32* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %96
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 18
  %110 = call i32 @skip_bits(i32* %109, i32 24)
  br label %111

111:                                              ; preds = %107, %96
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 19
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %111
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 18
  %119 = call i32 @show_bits(i32* %118, i32 9)
  %120 = and i32 %119, 1
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %116, %111
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  store i32 1, i32* %124, align 8
  br label %135

125:                                              ; preds = %116
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 18
  %128 = call i32 @show_bits(i32* %127, i32 11)
  %129 = and i32 %128, 3
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  store i32 1, i32* %133, align 8
  br label %134

134:                                              ; preds = %131, %125
  br label %135

135:                                              ; preds = %134, %122
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 18
  %143 = call i32 @skip_bits(i32* %142, i32 1)
  br label %144

144:                                              ; preds = %140, %135
  br label %145

145:                                              ; preds = %144, %95
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 20
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 17
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %151, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 17
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %145
  br label %164

162:                                              ; preds = %145
  %163 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  br label %164

164:                                              ; preds = %162, %161
  %165 = phi i32 [ 0, %161 ], [ %163, %162 ]
  %166 = call i32 @ff_get_buffer(i32 %148, %struct.TYPE_15__* %152, i32 %165)
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %4, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  %170 = load i32, i32* %4, align 4
  store i32 %170, i32* %2, align 4
  br label %824

171:                                              ; preds = %164
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 21
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %202, label %176

176:                                              ; preds = %171
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 17
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @FFABS(i32 %184)
  %186 = add nsw i32 %185, 32
  %187 = call i32 @FFALIGN(i32 %186, i32 32)
  store i32 %187, i32* %7, align 4
  %188 = load i32, i32* %7, align 4
  %189 = mul nsw i32 %188, 2
  %190 = mul nsw i32 %189, 24
  %191 = call i32 @av_mallocz(i32 %190)
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 21
  store i32 %191, i32* %193, align 4
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 21
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %176
  %199 = load i32, i32* @ENOMEM, align 4
  %200 = call i32 @AVERROR(i32 %199)
  store i32 %200, i32* %2, align 4
  br label %824

201:                                              ; preds = %176
  br label %202

202:                                              ; preds = %201, %171
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %204 = call i32 @ff_cavs_init_pic(%struct.TYPE_14__* %203)
  store i32 %204, i32* %4, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %202
  %207 = load i32, i32* %4, align 4
  store i32 %207, i32* %2, align 4
  br label %824

208:                                              ; preds = %202
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 18
  %211 = call i32 @get_bits(i32* %210, i32 8)
  %212 = mul nsw i32 %211, 2
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 17
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  store i32 %212, i32* %215, align 8
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 17
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %223 = icmp ne i64 %221, %222
  br i1 %223, label %224, label %241

224:                                              ; preds = %208
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 17
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 16
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i64 0
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = sub nsw i32 %228, %234
  %236 = and i32 %235, 511
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  store i32 %236, i32* %240, align 4
  br label %258

241:                                              ; preds = %208
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 16
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i64 0
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 17
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = sub nsw i32 %247, %251
  %253 = and i32 %252, 511
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 2
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 0
  store i32 %253, i32* %257, align 4
  br label %258

258:                                              ; preds = %241, %224
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 17
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 16
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i64 1
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = sub nsw i32 %262, %268
  %270 = and i32 %269, 511
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 2
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 1
  store i32 %270, i32* %274, align 4
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 2
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 0
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %288

281:                                              ; preds = %258
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 2
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 0
  %286 = load i32, i32* %285, align 4
  %287 = sdiv i32 512, %286
  br label %289

288:                                              ; preds = %258
  br label %289

289:                                              ; preds = %288, %281
  %290 = phi i32 [ %287, %281 ], [ 0, %288 ]
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 3
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 0
  store i32 %290, i32* %294, align 4
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 2
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 1
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %308

301:                                              ; preds = %289
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 2
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 1
  %306 = load i32, i32* %305, align 4
  %307 = sdiv i32 512, %306
  br label %309

308:                                              ; preds = %289
  br label %309

309:                                              ; preds = %308, %301
  %310 = phi i32 [ %307, %301 ], [ 0, %308 ]
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 3
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 1
  store i32 %310, i32* %314, align 4
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 17
  %317 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %316, i32 0, i32 1
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %323, label %353

323:                                              ; preds = %309
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 2
  %326 = load i32*, i32** %325, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 0
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 3
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 1
  %333 = load i32, i32* %332, align 4
  %334 = mul nsw i32 %328, %333
  %335 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 4
  store i32 %334, i32* %336, align 8
  %337 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %337, i32 0, i32 4
  %339 = load i32, i32* %338, align 8
  %340 = call i32 @FFABS(i32 %339)
  %341 = icmp sgt i32 %340, 32768
  br i1 %341, label %342, label %352

342:                                              ; preds = %323
  %343 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 20
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @AV_LOG_ERROR, align 4
  %347 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i32 0, i32 4
  %349 = load i32, i32* %348, align 8
  %350 = call i32 (i32, i32, i8*, ...) @av_log(i32 %345, i32 %346, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %349)
  %351 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %351, i32* %2, align 4
  br label %824

352:                                              ; preds = %323
  br label %394

353:                                              ; preds = %309
  %354 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %354, i32 0, i32 2
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 0
  %358 = load i32, i32* %357, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %367

360:                                              ; preds = %353
  %361 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i32 0, i32 2
  %363 = load i32*, i32** %362, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 0
  %365 = load i32, i32* %364, align 4
  %366 = sdiv i32 16384, %365
  br label %368

367:                                              ; preds = %353
  br label %368

368:                                              ; preds = %367, %360
  %369 = phi i32 [ %366, %360 ], [ 0, %367 ]
  %370 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %371 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %370, i32 0, i32 5
  %372 = load i32*, i32** %371, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 0
  store i32 %369, i32* %373, align 4
  %374 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %375 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %374, i32 0, i32 2
  %376 = load i32*, i32** %375, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 1
  %378 = load i32, i32* %377, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %387

380:                                              ; preds = %368
  %381 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %381, i32 0, i32 2
  %383 = load i32*, i32** %382, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 1
  %385 = load i32, i32* %384, align 4
  %386 = sdiv i32 16384, %385
  br label %388

387:                                              ; preds = %368
  br label %388

388:                                              ; preds = %387, %380
  %389 = phi i32 [ %386, %380 ], [ 0, %387 ]
  %390 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %391 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %390, i32 0, i32 5
  %392 = load i32*, i32** %391, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 1
  store i32 %389, i32* %393, align 4
  br label %394

394:                                              ; preds = %388, %352
  %395 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %396 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %395, i32 0, i32 19
  %397 = load i64, i64* %396, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %403

399:                                              ; preds = %394
  %400 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %401 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %400, i32 0, i32 18
  %402 = call i32 @get_ue_golomb(i32* %401)
  br label %403

403:                                              ; preds = %399, %394
  %404 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %405 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %404, i32 0, i32 18
  %406 = call i32 @get_bits1(i32* %405)
  %407 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %408 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %407, i32 0, i32 6
  store i32 %406, i32* %408, align 8
  %409 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %410 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %409, i32 0, i32 7
  store i32 1, i32* %410, align 4
  %411 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %412 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %411, i32 0, i32 6
  %413 = load i32, i32* %412, align 8
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %421, label %415

415:                                              ; preds = %403
  %416 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %417 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %416, i32 0, i32 18
  %418 = call i32 @get_bits1(i32* %417)
  %419 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %420 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %419, i32 0, i32 7
  store i32 %418, i32* %420, align 4
  br label %421

421:                                              ; preds = %415, %403
  %422 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %423 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %422, i32 0, i32 7
  %424 = load i32, i32* %423, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %436, label %426

426:                                              ; preds = %421
  %427 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %428 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = load i64, i64* @PIC_PB_START_CODE, align 8
  %431 = icmp eq i64 %429, %430
  br i1 %431, label %432, label %436

432:                                              ; preds = %426
  %433 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %434 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %433, i32 0, i32 18
  %435 = call i32 @skip_bits1(i32* %434)
  br label %436

436:                                              ; preds = %432, %426, %421
  %437 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %438 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %437, i32 0, i32 18
  %439 = call i32 @skip_bits1(i32* %438)
  %440 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %441 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %440, i32 0, i32 18
  %442 = call i32 @skip_bits1(i32* %441)
  %443 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %444 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %443, i32 0, i32 18
  %445 = call i32 @get_bits1(i32* %444)
  %446 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %447 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %446, i32 0, i32 9
  store i32 %445, i32* %447, align 4
  %448 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %449 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %448, i32 0, i32 8
  store i32 %445, i32* %449, align 8
  %450 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %451 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %450, i32 0, i32 18
  %452 = call i32 @get_bits(i32* %451, i32 6)
  %453 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %454 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %453, i32 0, i32 10
  store i32 %452, i32* %454, align 8
  %455 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %456 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %455, i32 0, i32 17
  %457 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %456, i32 0, i32 1
  %458 = load %struct.TYPE_15__*, %struct.TYPE_15__** %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %458, i32 0, i32 0
  %460 = load i64, i64* %459, align 8
  %461 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %462 = icmp eq i64 %460, %461
  br i1 %462, label %463, label %481

463:                                              ; preds = %436
  %464 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %465 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %464, i32 0, i32 6
  %466 = load i32, i32* %465, align 8
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %477, label %468

468:                                              ; preds = %463
  %469 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %470 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %469, i32 0, i32 7
  %471 = load i32, i32* %470, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %477, label %473

473:                                              ; preds = %468
  %474 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %475 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %474, i32 0, i32 18
  %476 = call i32 @skip_bits1(i32* %475)
  br label %477

477:                                              ; preds = %473, %468, %463
  %478 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %479 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %478, i32 0, i32 18
  %480 = call i32 @skip_bits(i32* %479, i32 4)
  br label %510

481:                                              ; preds = %436
  %482 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %483 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %482, i32 0, i32 17
  %484 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %483, i32 0, i32 1
  %485 = load %struct.TYPE_15__*, %struct.TYPE_15__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %485, i32 0, i32 0
  %487 = load i64, i64* %486, align 8
  %488 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %489 = icmp eq i64 %487, %488
  br i1 %489, label %490, label %495

490:                                              ; preds = %481
  %491 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %492 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %491, i32 0, i32 7
  %493 = load i32, i32* %492, align 4
  %494 = icmp eq i32 %493, 1
  br i1 %494, label %501, label %495

495:                                              ; preds = %490, %481
  %496 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %497 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %496, i32 0, i32 18
  %498 = call i32 @get_bits1(i32* %497)
  %499 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %500 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %499, i32 0, i32 11
  store i32 %498, i32* %500, align 4
  br label %501

501:                                              ; preds = %495, %490
  %502 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %503 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %502, i32 0, i32 18
  %504 = call i32 @skip_bits(i32* %503, i32 4)
  %505 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %506 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %505, i32 0, i32 18
  %507 = call i32 @get_bits1(i32* %506)
  %508 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %509 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %508, i32 0, i32 12
  store i32 %507, i32* %509, align 8
  br label %510

510:                                              ; preds = %501, %477
  %511 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %512 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %511, i32 0, i32 18
  %513 = call i32 @get_bits1(i32* %512)
  %514 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %515 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %514, i32 0, i32 13
  store i32 %513, i32* %515, align 4
  %516 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %517 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %516, i32 0, i32 13
  %518 = load i32, i32* %517, align 4
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %564, label %520

520:                                              ; preds = %510
  %521 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %522 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %521, i32 0, i32 18
  %523 = call i32 @get_bits1(i32* %522)
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %564

525:                                              ; preds = %520
  %526 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %527 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %526, i32 0, i32 18
  %528 = call i8* @get_se_golomb(i32* %527)
  %529 = ptrtoint i8* %528 to i32
  %530 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %531 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %530, i32 0, i32 14
  store i32 %529, i32* %531, align 8
  %532 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %533 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %532, i32 0, i32 18
  %534 = call i8* @get_se_golomb(i32* %533)
  %535 = ptrtoint i8* %534 to i32
  %536 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %537 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %536, i32 0, i32 15
  store i32 %535, i32* %537, align 4
  %538 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %539 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %538, i32 0, i32 14
  %540 = load i32, i32* %539, align 8
  %541 = icmp slt i32 %540, -64
  br i1 %541, label %557, label %542

542:                                              ; preds = %525
  %543 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %544 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %543, i32 0, i32 14
  %545 = load i32, i32* %544, align 8
  %546 = icmp sgt i32 %545, 64
  br i1 %546, label %557, label %547

547:                                              ; preds = %542
  %548 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %549 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %548, i32 0, i32 15
  %550 = load i32, i32* %549, align 4
  %551 = icmp slt i32 %550, -64
  br i1 %551, label %557, label %552

552:                                              ; preds = %547
  %553 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %554 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %553, i32 0, i32 15
  %555 = load i32, i32* %554, align 4
  %556 = icmp sgt i32 %555, 64
  br i1 %556, label %557, label %563

557:                                              ; preds = %552, %547, %542, %525
  %558 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %559 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %558, i32 0, i32 15
  store i32 0, i32* %559, align 4
  %560 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %561 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %560, i32 0, i32 14
  store i32 0, i32* %561, align 8
  %562 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %562, i32* %2, align 4
  br label %824

563:                                              ; preds = %552
  br label %569

564:                                              ; preds = %520, %510
  %565 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %566 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %565, i32 0, i32 15
  store i32 0, i32* %566, align 4
  %567 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %568 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %567, i32 0, i32 14
  store i32 0, i32* %568, align 8
  br label %569

569:                                              ; preds = %564, %563
  store i32 0, i32* %4, align 4
  %570 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %571 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %570, i32 0, i32 17
  %572 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %571, i32 0, i32 1
  %573 = load %struct.TYPE_15__*, %struct.TYPE_15__** %572, align 8
  %574 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %573, i32 0, i32 0
  %575 = load i64, i64* %574, align 8
  %576 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %577 = icmp eq i64 %575, %576
  br i1 %577, label %578, label %593

578:                                              ; preds = %569
  br label %579

579:                                              ; preds = %588, %578
  %580 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %581 = call i64 @check_for_slice(%struct.TYPE_14__* %580)
  %582 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %583 = call i32 @decode_mb_i(%struct.TYPE_14__* %582, i32 0)
  store i32 %583, i32* %4, align 4
  %584 = load i32, i32* %4, align 4
  %585 = icmp slt i32 %584, 0
  br i1 %585, label %586, label %587

586:                                              ; preds = %579
  br label %592

587:                                              ; preds = %579
  br label %588

588:                                              ; preds = %587
  %589 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %590 = call i64 @ff_cavs_next_mb(%struct.TYPE_14__* %589)
  %591 = icmp ne i64 %590, 0
  br i1 %591, label %579, label %592

592:                                              ; preds = %588, %586
  br label %763

593:                                              ; preds = %569
  %594 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %595 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %594, i32 0, i32 17
  %596 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %595, i32 0, i32 1
  %597 = load %struct.TYPE_15__*, %struct.TYPE_15__** %596, align 8
  %598 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %597, i32 0, i32 0
  %599 = load i64, i64* %598, align 8
  %600 = load i64, i64* @AV_PICTURE_TYPE_P, align 8
  %601 = icmp eq i64 %599, %600
  br i1 %601, label %602, label %682

602:                                              ; preds = %593
  br label %603

603:                                              ; preds = %677, %602
  %604 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %605 = call i64 @check_for_slice(%struct.TYPE_14__* %604)
  %606 = icmp ne i64 %605, 0
  br i1 %606, label %607, label %608

607:                                              ; preds = %603
  store i32 -1, i32* %5, align 4
  br label %608

608:                                              ; preds = %607, %603
  %609 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %610 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %609, i32 0, i32 12
  %611 = load i32, i32* %610, align 8
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %613, label %627

613:                                              ; preds = %608
  %614 = load i32, i32* %5, align 4
  %615 = icmp slt i32 %614, 0
  br i1 %615, label %616, label %627

616:                                              ; preds = %613
  %617 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %618 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %617, i32 0, i32 18
  %619 = call i32 @get_bits_left(i32* %618)
  %620 = icmp slt i32 %619, 1
  br i1 %620, label %621, label %623

621:                                              ; preds = %616
  %622 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %622, i32* %4, align 4
  br label %681

623:                                              ; preds = %616
  %624 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %625 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %624, i32 0, i32 18
  %626 = call i32 @get_ue_golomb(i32* %625)
  store i32 %626, i32* %5, align 4
  br label %627

627:                                              ; preds = %623, %613, %608
  %628 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %629 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %628, i32 0, i32 12
  %630 = load i32, i32* %629, align 8
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %632, label %640

632:                                              ; preds = %627
  %633 = load i32, i32* %5, align 4
  %634 = add nsw i32 %633, -1
  store i32 %634, i32* %5, align 4
  %635 = icmp ne i32 %633, 0
  br i1 %635, label %636, label %640

636:                                              ; preds = %632
  %637 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %638 = load i32, i32* @P_SKIP, align 4
  %639 = call i32 @decode_mb_p(%struct.TYPE_14__* %637, i32 %638)
  br label %672

640:                                              ; preds = %632, %627
  %641 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %642 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %641, i32 0, i32 18
  %643 = call i32 @get_bits_left(i32* %642)
  %644 = icmp slt i32 %643, 1
  br i1 %644, label %645, label %647

645:                                              ; preds = %640
  %646 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %646, i32* %4, align 4
  br label %681

647:                                              ; preds = %640
  %648 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %649 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %648, i32 0, i32 18
  %650 = call i32 @get_ue_golomb(i32* %649)
  %651 = load i32, i32* @P_SKIP, align 4
  %652 = add nsw i32 %650, %651
  %653 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %654 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %653, i32 0, i32 12
  %655 = load i32, i32* %654, align 8
  %656 = add nsw i32 %652, %655
  store i32 %656, i32* %6, align 4
  %657 = load i32, i32* %6, align 4
  %658 = load i32, i32* @P_8X8, align 4
  %659 = icmp ugt i32 %657, %658
  br i1 %659, label %660, label %667

660:                                              ; preds = %647
  %661 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %662 = load i32, i32* %6, align 4
  %663 = load i32, i32* @P_8X8, align 4
  %664 = sub i32 %662, %663
  %665 = sub i32 %664, 1
  %666 = call i32 @decode_mb_i(%struct.TYPE_14__* %661, i32 %665)
  store i32 %666, i32* %4, align 4
  br label %671

667:                                              ; preds = %647
  %668 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %669 = load i32, i32* %6, align 4
  %670 = call i32 @decode_mb_p(%struct.TYPE_14__* %668, i32 %669)
  br label %671

671:                                              ; preds = %667, %660
  br label %672

672:                                              ; preds = %671, %636
  %673 = load i32, i32* %4, align 4
  %674 = icmp slt i32 %673, 0
  br i1 %674, label %675, label %676

675:                                              ; preds = %672
  br label %681

676:                                              ; preds = %672
  br label %677

677:                                              ; preds = %676
  %678 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %679 = call i64 @ff_cavs_next_mb(%struct.TYPE_14__* %678)
  %680 = icmp ne i64 %679, 0
  br i1 %680, label %603, label %681

681:                                              ; preds = %677, %675, %645, %621
  br label %762

682:                                              ; preds = %593
  br label %683

683:                                              ; preds = %757, %682
  %684 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %685 = call i64 @check_for_slice(%struct.TYPE_14__* %684)
  %686 = icmp ne i64 %685, 0
  br i1 %686, label %687, label %688

687:                                              ; preds = %683
  store i32 -1, i32* %5, align 4
  br label %688

688:                                              ; preds = %687, %683
  %689 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %690 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %689, i32 0, i32 12
  %691 = load i32, i32* %690, align 8
  %692 = icmp ne i32 %691, 0
  br i1 %692, label %693, label %707

693:                                              ; preds = %688
  %694 = load i32, i32* %5, align 4
  %695 = icmp slt i32 %694, 0
  br i1 %695, label %696, label %707

696:                                              ; preds = %693
  %697 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %698 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %697, i32 0, i32 18
  %699 = call i32 @get_bits_left(i32* %698)
  %700 = icmp slt i32 %699, 1
  br i1 %700, label %701, label %703

701:                                              ; preds = %696
  %702 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %702, i32* %4, align 4
  br label %761

703:                                              ; preds = %696
  %704 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %705 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %704, i32 0, i32 18
  %706 = call i32 @get_ue_golomb(i32* %705)
  store i32 %706, i32* %5, align 4
  br label %707

707:                                              ; preds = %703, %693, %688
  %708 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %709 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %708, i32 0, i32 12
  %710 = load i32, i32* %709, align 8
  %711 = icmp ne i32 %710, 0
  br i1 %711, label %712, label %720

712:                                              ; preds = %707
  %713 = load i32, i32* %5, align 4
  %714 = add nsw i32 %713, -1
  store i32 %714, i32* %5, align 4
  %715 = icmp ne i32 %713, 0
  br i1 %715, label %716, label %720

716:                                              ; preds = %712
  %717 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %718 = load i32, i32* @B_SKIP, align 4
  %719 = call i32 @decode_mb_b(%struct.TYPE_14__* %717, i32 %718)
  store i32 %719, i32* %4, align 4
  br label %752

720:                                              ; preds = %712, %707
  %721 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %722 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %721, i32 0, i32 18
  %723 = call i32 @get_bits_left(i32* %722)
  %724 = icmp slt i32 %723, 1
  br i1 %724, label %725, label %727

725:                                              ; preds = %720
  %726 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %726, i32* %4, align 4
  br label %761

727:                                              ; preds = %720
  %728 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %729 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %728, i32 0, i32 18
  %730 = call i32 @get_ue_golomb(i32* %729)
  %731 = load i32, i32* @B_SKIP, align 4
  %732 = add nsw i32 %730, %731
  %733 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %734 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %733, i32 0, i32 12
  %735 = load i32, i32* %734, align 8
  %736 = add nsw i32 %732, %735
  store i32 %736, i32* %6, align 4
  %737 = load i32, i32* %6, align 4
  %738 = load i32, i32* @B_8X8, align 4
  %739 = icmp ugt i32 %737, %738
  br i1 %739, label %740, label %747

740:                                              ; preds = %727
  %741 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %742 = load i32, i32* %6, align 4
  %743 = load i32, i32* @B_8X8, align 4
  %744 = sub i32 %742, %743
  %745 = sub i32 %744, 1
  %746 = call i32 @decode_mb_i(%struct.TYPE_14__* %741, i32 %745)
  store i32 %746, i32* %4, align 4
  br label %751

747:                                              ; preds = %727
  %748 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %749 = load i32, i32* %6, align 4
  %750 = call i32 @decode_mb_b(%struct.TYPE_14__* %748, i32 %749)
  store i32 %750, i32* %4, align 4
  br label %751

751:                                              ; preds = %747, %740
  br label %752

752:                                              ; preds = %751, %716
  %753 = load i32, i32* %4, align 4
  %754 = icmp slt i32 %753, 0
  br i1 %754, label %755, label %756

755:                                              ; preds = %752
  br label %761

756:                                              ; preds = %752
  br label %757

757:                                              ; preds = %756
  %758 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %759 = call i64 @ff_cavs_next_mb(%struct.TYPE_14__* %758)
  %760 = icmp ne i64 %759, 0
  br i1 %760, label %683, label %761

761:                                              ; preds = %757, %755, %725, %701
  br label %762

762:                                              ; preds = %761, %681
  br label %763

763:                                              ; preds = %762, %592
  %764 = call i32 (...) @emms_c()
  %765 = load i32, i32* %4, align 4
  %766 = icmp sge i32 %765, 0
  br i1 %766, label %767, label %822

767:                                              ; preds = %763
  %768 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %769 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %768, i32 0, i32 17
  %770 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %769, i32 0, i32 1
  %771 = load %struct.TYPE_15__*, %struct.TYPE_15__** %770, align 8
  %772 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %771, i32 0, i32 0
  %773 = load i64, i64* %772, align 8
  %774 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %775 = icmp ne i64 %773, %774
  br i1 %775, label %776, label %822

776:                                              ; preds = %767
  %777 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %778 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %777, i32 0, i32 16
  %779 = load %struct.TYPE_13__*, %struct.TYPE_13__** %778, align 8
  %780 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %779, i64 1
  %781 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %780, i32 0, i32 1
  %782 = load %struct.TYPE_15__*, %struct.TYPE_15__** %781, align 8
  %783 = call i32 @av_frame_unref(%struct.TYPE_15__* %782)
  %784 = load i32, i32* @AVSFrame, align 4
  %785 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %786 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %785, i32 0, i32 17
  %787 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %788 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %787, i32 0, i32 16
  %789 = load %struct.TYPE_13__*, %struct.TYPE_13__** %788, align 8
  %790 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %789, i64 1
  %791 = bitcast %struct.TYPE_13__* %786 to { i32, %struct.TYPE_15__* }*
  %792 = getelementptr inbounds { i32, %struct.TYPE_15__* }, { i32, %struct.TYPE_15__* }* %791, i32 0, i32 0
  %793 = load i32, i32* %792, align 8
  %794 = getelementptr inbounds { i32, %struct.TYPE_15__* }, { i32, %struct.TYPE_15__* }* %791, i32 0, i32 1
  %795 = load %struct.TYPE_15__*, %struct.TYPE_15__** %794, align 8
  %796 = bitcast %struct.TYPE_13__* %790 to { i32, %struct.TYPE_15__* }*
  %797 = getelementptr inbounds { i32, %struct.TYPE_15__* }, { i32, %struct.TYPE_15__* }* %796, i32 0, i32 0
  %798 = load i32, i32* %797, align 8
  %799 = getelementptr inbounds { i32, %struct.TYPE_15__* }, { i32, %struct.TYPE_15__* }* %796, i32 0, i32 1
  %800 = load %struct.TYPE_15__*, %struct.TYPE_15__** %799, align 8
  %801 = call i32 @FFSWAP(i32 %784, i32 %793, %struct.TYPE_15__* %795, i32 %798, %struct.TYPE_15__* %800)
  %802 = load i32, i32* @AVSFrame, align 4
  %803 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %804 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %803, i32 0, i32 16
  %805 = load %struct.TYPE_13__*, %struct.TYPE_13__** %804, align 8
  %806 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %805, i64 0
  %807 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %808 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %807, i32 0, i32 16
  %809 = load %struct.TYPE_13__*, %struct.TYPE_13__** %808, align 8
  %810 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %809, i64 1
  %811 = bitcast %struct.TYPE_13__* %806 to { i32, %struct.TYPE_15__* }*
  %812 = getelementptr inbounds { i32, %struct.TYPE_15__* }, { i32, %struct.TYPE_15__* }* %811, i32 0, i32 0
  %813 = load i32, i32* %812, align 8
  %814 = getelementptr inbounds { i32, %struct.TYPE_15__* }, { i32, %struct.TYPE_15__* }* %811, i32 0, i32 1
  %815 = load %struct.TYPE_15__*, %struct.TYPE_15__** %814, align 8
  %816 = bitcast %struct.TYPE_13__* %810 to { i32, %struct.TYPE_15__* }*
  %817 = getelementptr inbounds { i32, %struct.TYPE_15__* }, { i32, %struct.TYPE_15__* }* %816, i32 0, i32 0
  %818 = load i32, i32* %817, align 8
  %819 = getelementptr inbounds { i32, %struct.TYPE_15__* }, { i32, %struct.TYPE_15__* }* %816, i32 0, i32 1
  %820 = load %struct.TYPE_15__*, %struct.TYPE_15__** %819, align 8
  %821 = call i32 @FFSWAP(i32 %802, i32 %813, %struct.TYPE_15__* %815, i32 %818, %struct.TYPE_15__* %820)
  br label %822

822:                                              ; preds = %776, %767, %763
  %823 = load i32, i32* %4, align 4
  store i32 %823, i32* %2, align 4
  br label %824

824:                                              ; preds = %822, %557, %342, %206, %198, %169, %93, %53, %12
  %825 = load i32, i32* %2, align 4
  ret i32 %825
}

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_15__*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @show_bits(i32*, i32) #1

declare dso_local i32 @ff_get_buffer(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_cavs_init_pic(%struct.TYPE_14__*) #1

declare dso_local i32 @get_ue_golomb(i32*) #1

declare dso_local i32 @skip_bits1(i32*) #1

declare dso_local i8* @get_se_golomb(i32*) #1

declare dso_local i64 @check_for_slice(%struct.TYPE_14__*) #1

declare dso_local i32 @decode_mb_i(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @ff_cavs_next_mb(%struct.TYPE_14__*) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @decode_mb_p(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @decode_mb_b(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @emms_c(...) #1

declare dso_local i32 @FFSWAP(i32, i32, %struct.TYPE_15__*, i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
