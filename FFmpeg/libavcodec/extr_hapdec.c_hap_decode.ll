; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hapdec.c_hap_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hapdec.c_hap_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i32, i32 (%struct.TYPE_29__*, i32, %struct.TYPE_30__*, i64*, i32)*, %struct.TYPE_25__*, %struct.TYPE_27__* }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_27__ = type { i32, i32, i32, i64*, i32, i32, i32, i32, %struct.TYPE_24__, i64, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_30__* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Invalid section type in 2 textures mode %#04x.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@decompress_chunks_thread = common dso_local global i32 0, align 4
@TEXTURE_BLOCK_W = common dso_local global i32 0, align 4
@TEXTURE_BLOCK_H = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Insufficient data\0A\00", align 1
@decompress_texture_thread = common dso_local global i32 0, align 4
@decompress_texture2_thread = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*, i8*, i32*, %struct.TYPE_28__*)* @hap_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hap_decode(%struct.TYPE_29__* %0, i8* %1, i32* %2, %struct.TYPE_28__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_26__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [2 x i32], align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_28__* %3, %struct.TYPE_28__** %9, align 8
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  store %struct.TYPE_27__* %22, %struct.TYPE_27__** %10, align 8
  store i32 0, i32* %18, align 4
  %23 = bitcast [2 x i32]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 8, i1 false)
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 8
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bytestream2_init(%struct.TYPE_24__* %25, i32 %28, i32 %31)
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %64

41:                                               ; preds = %4
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 8
  %44 = call i32 @ff_hap_parse_section_header(%struct.TYPE_24__* %43, i32* %16, i32* %17)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %5, align 4
  br label %260

49:                                               ; preds = %41
  %50 = load i32, i32* %17, align 4
  %51 = and i32 %50, 15
  %52 = icmp ne i32 %51, 13
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = load i32, i32* %17, align 4
  %57 = call i32 (%struct.TYPE_29__*, i32, i8*, ...) @av_log(%struct.TYPE_29__* %54, i32 %55, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %58, i32* %5, align 4
  br label %260

59:                                               ; preds = %49
  store i32 4, i32* %18, align 4
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %4
  %65 = load i8*, i8** %7, align 8
  %66 = bitcast i8* %65 to %struct.TYPE_30__*
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 0
  store %struct.TYPE_30__* %66, %struct.TYPE_30__** %67, align 8
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %69 = call i32 @ff_thread_get_buffer(%struct.TYPE_29__* %68, %struct.TYPE_26__* %11, i32 0)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %5, align 4
  br label %260

74:                                               ; preds = %64
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %245, %74
  %76 = load i32, i32* %14, align 4
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %248

81:                                               ; preds = %75
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 8
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* @SEEK_SET, align 4
  %86 = call i32 @bytestream2_seek(%struct.TYPE_24__* %83, i32 %84, i32 %85)
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %88 = call i32 @hap_parse_frame_header(%struct.TYPE_29__* %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %5, align 4
  br label %260

93:                                               ; preds = %81
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 9
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 4
  %98 = load i32, i32* %18, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %18, align 4
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %93
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %110 = call i32 @ff_thread_finish_setup(%struct.TYPE_29__* %109)
  br label %111

111:                                              ; preds = %108, %93
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %113 = call i64 @hap_can_use_tex_in_place(%struct.TYPE_27__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %111
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 7
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 9
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 8
  %127 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_24__* %126)
  %128 = call i32 @FFMIN(i64 %124, i32 %127)
  store i32 %128, i32* %15, align 4
  br label %190

129:                                              ; preds = %111
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 6
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @av_reallocp(i32* %131, i32 %134)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %129
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %5, align 4
  br label %260

140:                                              ; preds = %129
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %141, i32 0, i32 2
  %143 = load i32 (%struct.TYPE_29__*, i32, %struct.TYPE_30__*, i64*, i32)*, i32 (%struct.TYPE_29__*, i32, %struct.TYPE_30__*, i64*, i32)** %142, align 8
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %145 = load i32, i32* @decompress_chunks_thread, align 4
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i32 0, i32 3
  %148 = load i64*, i64** %147, align 8
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = call i32 %143(%struct.TYPE_29__* %144, i32 %145, %struct.TYPE_30__* null, i64* %148, i32 %151)
  store i32 0, i32* %13, align 4
  br label %153

153:                                              ; preds = %178, %140
  %154 = load i32, i32* %13, align 4
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %181

159:                                              ; preds = %153
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 3
  %162 = load i64*, i64** %161, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %159
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 3
  %171 = load i64*, i64** %170, align 8
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %5, align 4
  br label %260

177:                                              ; preds = %159
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %13, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %13, align 4
  br label %153

181:                                              ; preds = %153
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %185, i32 0, i32 7
  store i32 %184, i32* %186, align 4
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  store i32 %189, i32* %15, align 4
  br label %190

190:                                              ; preds = %181, %115
  %191 = load i32, i32* %15, align 4
  %192 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @TEXTURE_BLOCK_W, align 4
  %196 = sdiv i32 %194, %195
  %197 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @TEXTURE_BLOCK_H, align 4
  %201 = sdiv i32 %199, %200
  %202 = mul nsw i32 %196, %201
  %203 = load i32, i32* %14, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %202, %206
  %208 = icmp slt i32 %191, %207
  br i1 %208, label %209, label %214

209:                                              ; preds = %190
  %210 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %211 = load i32, i32* @AV_LOG_ERROR, align 4
  %212 = call i32 (%struct.TYPE_29__*, i32, i8*, ...) @av_log(%struct.TYPE_29__* %210, i32 %211, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %213 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %213, i32* %5, align 4
  br label %260

214:                                              ; preds = %190
  %215 = load i32, i32* %14, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %229

217:                                              ; preds = %214
  %218 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %218, i32 0, i32 2
  %220 = load i32 (%struct.TYPE_29__*, i32, %struct.TYPE_30__*, i64*, i32)*, i32 (%struct.TYPE_29__*, i32, %struct.TYPE_30__*, i64*, i32)** %219, align 8
  %221 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %222 = load i32, i32* @decompress_texture_thread, align 4
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 0
  %224 = load %struct.TYPE_30__*, %struct.TYPE_30__** %223, align 8
  %225 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  %228 = call i32 %220(%struct.TYPE_29__* %221, i32 %222, %struct.TYPE_30__* %224, i64* null, i32 %227)
  br label %244

229:                                              ; preds = %214
  %230 = load i8*, i8** %7, align 8
  %231 = bitcast i8* %230 to %struct.TYPE_30__*
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 0
  store %struct.TYPE_30__* %231, %struct.TYPE_30__** %232, align 8
  %233 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %233, i32 0, i32 2
  %235 = load i32 (%struct.TYPE_29__*, i32, %struct.TYPE_30__*, i64*, i32)*, i32 (%struct.TYPE_29__*, i32, %struct.TYPE_30__*, i64*, i32)** %234, align 8
  %236 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %237 = load i32, i32* @decompress_texture2_thread, align 4
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 0
  %239 = load %struct.TYPE_30__*, %struct.TYPE_30__** %238, align 8
  %240 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 4
  %243 = call i32 %235(%struct.TYPE_29__* %236, i32 %237, %struct.TYPE_30__* %239, i64* null, i32 %242)
  br label %244

244:                                              ; preds = %229, %217
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %14, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %14, align 4
  br label %75

248:                                              ; preds = %75
  %249 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 0
  %251 = load %struct.TYPE_30__*, %struct.TYPE_30__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %251, i32 0, i32 1
  store i32 %249, i32* %252, align 4
  %253 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 0
  %254 = load %struct.TYPE_30__*, %struct.TYPE_30__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %254, i32 0, i32 0
  store i32 1, i32* %255, align 4
  %256 = load i32*, i32** %8, align 8
  store i32 1, i32* %256, align 4
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  store i32 %259, i32* %5, align 4
  br label %260

260:                                              ; preds = %248, %209, %168, %138, %91, %72, %53, %47
  %261 = load i32, i32* %5, align 4
  ret i32 %261
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bytestream2_init(%struct.TYPE_24__*, i32, i32) #2

declare dso_local i32 @ff_hap_parse_section_header(%struct.TYPE_24__*, i32*, i32*) #2

declare dso_local i32 @av_log(%struct.TYPE_29__*, i32, i8*, ...) #2

declare dso_local i32 @ff_thread_get_buffer(%struct.TYPE_29__*, %struct.TYPE_26__*, i32) #2

declare dso_local i32 @bytestream2_seek(%struct.TYPE_24__*, i32, i32) #2

declare dso_local i32 @hap_parse_frame_header(%struct.TYPE_29__*) #2

declare dso_local i32 @ff_thread_finish_setup(%struct.TYPE_29__*) #2

declare dso_local i64 @hap_can_use_tex_in_place(%struct.TYPE_27__*) #2

declare dso_local i32 @FFMIN(i64, i32) #2

declare dso_local i32 @bytestream2_get_bytes_left(%struct.TYPE_24__*) #2

declare dso_local i32 @av_reallocp(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
