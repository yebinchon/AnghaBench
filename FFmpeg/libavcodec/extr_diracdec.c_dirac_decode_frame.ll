; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_dirac_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_dirac_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, %struct.TYPE_22__*, %struct.TYPE_30__**, %struct.TYPE_29__*, %struct.TYPE_23__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_30__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i64* }
%struct.TYPE_27__ = type { i8*, i32 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_21__*, i32 }

@MAX_FRAMES = common dso_local global i32 0, align 4
@DATA_UNIT_HEADER_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Data unit with size %d is larger than input buffer, discarding\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Error in dirac_decode_data_unit\0A\00", align 1
@DELAYED_PIC_REF = common dso_local global i32 0, align 4
@MAX_DELAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Delay frame overflow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*, i8*, i32*, %struct.TYPE_27__*)* @dirac_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dirac_decode_frame(%struct.TYPE_29__* %0, i8* %1, i32* %2, %struct.TYPE_27__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_25__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_27__* %3, %struct.TYPE_27__** %9, align 8
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  store %struct.TYPE_26__* %22, %struct.TYPE_26__** %10, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %24, %struct.TYPE_28__** %11, align 8
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %12, align 8
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %79, %4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @MAX_FRAMES, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %82

35:                                               ; preds = %31
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %37, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %35
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %49
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %66, align 8
  %68 = call i32 @av_frame_unref(%struct.TYPE_20__* %67)
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @memset(i32 %76, i32 0, i32 4)
  br label %78

78:                                               ; preds = %59, %49, %35
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  br label %31

82:                                               ; preds = %31
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 1
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %84, align 8
  %85 = load i32*, i32** %8, align 8
  store i32 0, i32* %85, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = bitcast i8* %90 to %struct.TYPE_28__*
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 @get_delayed_pic(%struct.TYPE_26__* %89, %struct.TYPE_28__* %91, i32* %92)
  store i32 %93, i32* %5, align 4
  br label %370

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %197, %177, %94
  br label %96

96:                                               ; preds = %139, %95
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* @DATA_UNIT_HEADER_SIZE, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %142

102:                                              ; preds = %96
  %103 = load i8*, i8** %12, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 66
  br i1 %109, label %110, label %138

110:                                              ; preds = %102
  %111 = load i8*, i8** %12, align 8
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 66
  br i1 %118, label %119, label %138

119:                                              ; preds = %110
  %120 = load i8*, i8** %12, align 8
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, 2
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %120, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 67
  br i1 %127, label %128, label %138

128:                                              ; preds = %119
  %129 = load i8*, i8** %12, align 8
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, 3
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 68
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  br label %142

138:                                              ; preds = %128, %119, %110, %102
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %15, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %15, align 4
  br label %96

142:                                              ; preds = %137, %96
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* @DATA_UNIT_HEADER_SIZE, align 4
  %145 = add nsw i32 %143, %144
  %146 = load i32, i32* %13, align 4
  %147 = icmp sge i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  br label %201

149:                                              ; preds = %142
  %150 = load i8*, i8** %12, align 8
  %151 = load i32, i32* %15, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = getelementptr inbounds i8, i8* %153, i64 5
  %155 = call i32 @AV_RB32(i8* %154)
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %15, align 4
  %159 = sub nsw i32 %157, %158
  %160 = icmp ugt i32 %156, %159
  br i1 %160, label %164, label %161

161:                                              ; preds = %149
  %162 = load i32, i32* %17, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %180, label %164

164:                                              ; preds = %161, %149
  %165 = load i32, i32* %17, align 4
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %15, align 4
  %168 = sub nsw i32 %166, %167
  %169 = icmp ugt i32 %165, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %164
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %172, align 8
  %174 = load i32, i32* @AV_LOG_ERROR, align 4
  %175 = load i32, i32* %17, align 4
  %176 = call i32 (%struct.TYPE_29__*, i32, i8*, ...) @av_log(%struct.TYPE_29__* %173, i32 %174, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %170, %164
  %178 = load i32, i32* %15, align 4
  %179 = add nsw i32 %178, 4
  store i32 %179, i32* %15, align 4
  br label %95

180:                                              ; preds = %161
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %182 = load i8*, i8** %12, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = load i32, i32* %17, align 4
  %187 = call i32 @dirac_decode_data_unit(%struct.TYPE_29__* %181, i8* %185, i32 %186)
  store i32 %187, i32* %16, align 4
  %188 = load i32, i32* %16, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %180
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 3
  %193 = load %struct.TYPE_29__*, %struct.TYPE_29__** %192, align 8
  %194 = load i32, i32* @AV_LOG_ERROR, align 4
  %195 = call i32 (%struct.TYPE_29__*, i32, i8*, ...) @av_log(%struct.TYPE_29__* %193, i32 %194, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %196 = load i32, i32* %16, align 4
  store i32 %196, i32* %5, align 4
  br label %370

197:                                              ; preds = %180
  %198 = load i32, i32* %17, align 4
  %199 = load i32, i32* %15, align 4
  %200 = add i32 %199, %198
  store i32 %200, i32* %15, align 4
  br label %95

201:                                              ; preds = %148
  %202 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %203, align 8
  %205 = icmp ne %struct.TYPE_22__* %204, null
  br i1 %205, label %208, label %206

206:                                              ; preds = %201
  %207 = load i32, i32* %13, align 4
  store i32 %207, i32* %5, align 4
  br label %370

208:                                              ; preds = %201
  %209 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp sgt i64 %215, %218
  br i1 %219, label %220, label %331

220:                                              ; preds = %208
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %222, align 8
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = trunc i64 %226 to i32
  %228 = call %struct.TYPE_25__* @remove_frame(%struct.TYPE_30__** %223, i32 %227)
  store %struct.TYPE_25__* %228, %struct.TYPE_25__** %18, align 8
  %229 = load i32, i32* @DELAYED_PIC_REF, align 4
  %230 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = or i32 %234, %229
  store i32 %235, i32* %233, align 8
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %237, align 8
  %239 = load i32, i32* @MAX_DELAY, align 4
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %241, align 8
  %243 = call i64 @add_frame(%struct.TYPE_30__** %238, i32 %239, %struct.TYPE_22__* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %311

245:                                              ; preds = %220
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %246, i32 0, i32 2
  %248 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %248, i64 0
  %250 = load %struct.TYPE_30__*, %struct.TYPE_30__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  store i32 %254, i32* %19, align 4
  %255 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %256 = load i32, i32* @AV_LOG_ERROR, align 4
  %257 = call i32 (%struct.TYPE_29__*, i32, i8*, ...) @av_log(%struct.TYPE_29__* %255, i32 %256, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %258

258:                                              ; preds = %294, %245
  %259 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %260, align 8
  %262 = load i32, i32* %14, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %261, i64 %263
  %265 = load %struct.TYPE_30__*, %struct.TYPE_30__** %264, align 8
  %266 = icmp ne %struct.TYPE_30__* %265, null
  br i1 %266, label %267, label %297

267:                                              ; preds = %258
  %268 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %268, i32 0, i32 2
  %270 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %269, align 8
  %271 = load i32, i32* %14, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %270, i64 %272
  %274 = load %struct.TYPE_30__*, %struct.TYPE_30__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_24__*, %struct.TYPE_24__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %19, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %293

281:                                              ; preds = %267
  %282 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %282, i32 0, i32 2
  %284 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %283, align 8
  %285 = load i32, i32* %14, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %284, i64 %286
  %288 = load %struct.TYPE_30__*, %struct.TYPE_30__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %288, i32 0, i32 0
  %290 = load %struct.TYPE_24__*, %struct.TYPE_24__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  store i32 %292, i32* %19, align 4
  br label %293

293:                                              ; preds = %281, %267
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %14, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %14, align 4
  br label %258

297:                                              ; preds = %258
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %298, i32 0, i32 2
  %300 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %299, align 8
  %301 = load i32, i32* %19, align 4
  %302 = call %struct.TYPE_25__* @remove_frame(%struct.TYPE_30__** %300, i32 %301)
  store %struct.TYPE_25__* %302, %struct.TYPE_25__** %18, align 8
  %303 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %304 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %303, i32 0, i32 2
  %305 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %304, align 8
  %306 = load i32, i32* @MAX_DELAY, align 4
  %307 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %308 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %307, i32 0, i32 1
  %309 = load %struct.TYPE_22__*, %struct.TYPE_22__** %308, align 8
  %310 = call i64 @add_frame(%struct.TYPE_30__** %305, i32 %306, %struct.TYPE_22__* %309)
  br label %311

311:                                              ; preds = %297, %220
  %312 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %313 = icmp ne %struct.TYPE_25__* %312, null
  br i1 %313, label %314, label %330

314:                                              ; preds = %311
  %315 = load i32, i32* @DELAYED_PIC_REF, align 4
  %316 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = xor i32 %318, %315
  store i32 %319, i32* %317, align 8
  %320 = load i8*, i8** %7, align 8
  %321 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %322 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %321, i32 0, i32 0
  %323 = load %struct.TYPE_21__*, %struct.TYPE_21__** %322, align 8
  %324 = call i32 @av_frame_ref(i8* %320, %struct.TYPE_21__* %323)
  store i32 %324, i32* %16, align 4
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %314
  %327 = load i32, i32* %16, align 4
  store i32 %327, i32* %5, align 4
  br label %370

328:                                              ; preds = %314
  %329 = load i32*, i32** %8, align 8
  store i32 1, i32* %329, align 4
  br label %330

330:                                              ; preds = %328, %311
  br label %357

331:                                              ; preds = %208
  %332 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %333 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_22__*, %struct.TYPE_22__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %334, i32 0, i32 0
  %336 = load %struct.TYPE_21__*, %struct.TYPE_21__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %340 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = icmp eq i64 %338, %341
  br i1 %342, label %343, label %356

343:                                              ; preds = %331
  %344 = load i8*, i8** %7, align 8
  %345 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %346 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %345, i32 0, i32 1
  %347 = load %struct.TYPE_22__*, %struct.TYPE_22__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %347, i32 0, i32 0
  %349 = load %struct.TYPE_21__*, %struct.TYPE_21__** %348, align 8
  %350 = call i32 @av_frame_ref(i8* %344, %struct.TYPE_21__* %349)
  store i32 %350, i32* %16, align 4
  %351 = icmp slt i32 %350, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %343
  %353 = load i32, i32* %16, align 4
  store i32 %353, i32* %5, align 4
  br label %370

354:                                              ; preds = %343
  %355 = load i32*, i32** %8, align 8
  store i32 1, i32* %355, align 4
  br label %356

356:                                              ; preds = %354, %331
  br label %357

357:                                              ; preds = %356, %330
  %358 = load i32*, i32** %8, align 8
  %359 = load i32, i32* %358, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %368

361:                                              ; preds = %357
  %362 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %363 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = add nsw i64 %364, 1
  %366 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %367 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %366, i32 0, i32 0
  store i64 %365, i64* %367, align 8
  br label %368

368:                                              ; preds = %361, %357
  %369 = load i32, i32* %15, align 4
  store i32 %369, i32* %5, align 4
  br label %370

370:                                              ; preds = %368, %352, %326, %206, %190, %88
  %371 = load i32, i32* %5, align 4
  ret i32 %371
}

declare dso_local i32 @av_frame_unref(%struct.TYPE_20__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @get_delayed_pic(%struct.TYPE_26__*, %struct.TYPE_28__*, i32*) #1

declare dso_local i32 @AV_RB32(i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_29__*, i32, i8*, ...) #1

declare dso_local i32 @dirac_decode_data_unit(%struct.TYPE_29__*, i8*, i32) #1

declare dso_local %struct.TYPE_25__* @remove_frame(%struct.TYPE_30__**, i32) #1

declare dso_local i64 @add_frame(%struct.TYPE_30__**, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @av_frame_ref(i8*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
