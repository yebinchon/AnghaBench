; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nvenc.c_ff_nvenc_send_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nvenc.c_ff_nvenc_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_40__ = type { i32, %struct.TYPE_32__*, %struct.TYPE_35__* }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_35__ = type { i32, i64*, i64, i32, i32, i32, i32, i64, i64, i32, i32, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i64 (i32, %struct.TYPE_37__*)* }
%struct.TYPE_37__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_39__ = type { i64, i64, i64 }
%struct.TYPE_33__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_36__ = type { i32, i32*, i64 }

@NV_ENC_PIC_PARAMS_VER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@AV_CODEC_FLAG_INTERLACED_DCT = common dso_local global i32 0, align 4
@NV_ENC_PIC_STRUCT_FIELD_TOP_BOTTOM = common dso_local global i32 0, align 4
@NV_ENC_PIC_STRUCT_FIELD_BOTTOM_TOP = common dso_local global i32 0, align 4
@NV_ENC_PIC_STRUCT_FRAME = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i64 0, align 8
@NV_ENC_PIC_FLAG_FORCEIDR = common dso_local global i64 0, align 8
@NV_ENC_PIC_FLAG_FORCEINTRA = common dso_local global i64 0, align 8
@AV_FRAME_DATA_A53_CC = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Not enough memory for closed captions, skipping\0A\00", align 1
@NV_ENC_PIC_FLAG_EOS = common dso_local global i64 0, align 8
@NV_ENC_SUCCESS = common dso_local global i64 0, align 8
@NV_ENC_ERR_NEED_MORE_INPUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"EncodePicture failed!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_nvenc_send_frame(%struct.TYPE_40__* %0, %struct.TYPE_39__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_40__*, align 8
  %5 = alloca %struct.TYPE_39__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_36__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_35__*, align 8
  %14 = alloca %struct.TYPE_34__*, align 8
  %15 = alloca %struct.TYPE_38__*, align 8
  %16 = alloca %struct.TYPE_37__, align 8
  store %struct.TYPE_40__* %0, %struct.TYPE_40__** %4, align 8
  store %struct.TYPE_39__* %1, %struct.TYPE_39__** %5, align 8
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %11, align 8
  %17 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  store %struct.TYPE_35__* %19, %struct.TYPE_35__** %13, align 8
  %20 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %20, i32 0, i32 11
  store %struct.TYPE_34__* %21, %struct.TYPE_34__** %14, align 8
  %22 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %22, i32 0, i32 0
  store %struct.TYPE_38__* %23, %struct.TYPE_38__** %15, align 8
  %24 = bitcast %struct.TYPE_37__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 56, i1 false)
  %25 = load i32, i32* @NV_ENC_PIC_PARAMS_VER, align 4
  %26 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %16, i32 0, i32 9
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %2
  %32 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31, %2
  %37 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36, %31
  %42 = load i32, i32* @EINVAL, align 4
  %43 = call i32 @AVERROR(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %337

44:                                               ; preds = %36
  %45 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %44
  %50 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_32__*, %struct.TYPE_32__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %57, i32* %3, align 4
  br label %337

58:                                               ; preds = %49
  %59 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %61, i32 0, i32 8
  store i64 0, i64* %62, align 8
  %63 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %64 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  store i64 %63, i64* %67, align 8
  %68 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %69 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  store i64 %68, i64* %72, align 8
  %73 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @av_fifo_reset(i32 %75)
  br label %77

77:                                               ; preds = %58, %44
  %78 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %79 = icmp ne %struct.TYPE_39__* %78, null
  br i1 %79, label %80, label %227

80:                                               ; preds = %77
  %81 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %82 = call %struct.TYPE_33__* @get_free_frame(%struct.TYPE_35__* %81)
  store %struct.TYPE_33__* %82, %struct.TYPE_33__** %8, align 8
  %83 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %84 = icmp ne %struct.TYPE_33__* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @EAGAIN, align 4
  %87 = call i32 @AVERROR(i32 %86)
  store i32 %87, i32* %3, align 4
  br label %337

88:                                               ; preds = %80
  %89 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %90 = call i32 @nvenc_push_context(%struct.TYPE_40__* %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %3, align 4
  br label %337

95:                                               ; preds = %88
  %96 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %97 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %98 = call i32 @reconfig_encoder(%struct.TYPE_40__* %96, %struct.TYPE_39__* %97)
  %99 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %100 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %101 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %102 = call i32 @nvenc_upload_frame(%struct.TYPE_40__* %99, %struct.TYPE_39__* %100, %struct.TYPE_33__* %101)
  store i32 %102, i32* %9, align 4
  %103 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %104 = call i32 @nvenc_pop_context(%struct.TYPE_40__* %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %95
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %3, align 4
  br label %337

109:                                              ; preds = %95
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %3, align 4
  br label %337

114:                                              ; preds = %109
  %115 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %16, i32 0, i32 8
  store i32 %117, i32* %118, align 8
  %119 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %16, i32 0, i32 7
  store i32 %121, i32* %122, align 4
  %123 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %16, i32 0, i32 6
  store i32 %125, i32* %126, align 8
  %127 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %16, i32 0, i32 5
  store i32 %129, i32* %130, align 4
  %131 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %16, i32 0, i32 4
  store i32 %133, i32* %134, align 8
  %135 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %16, i32 0, i32 3
  store i32 %137, i32* %138, align 4
  %139 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @AV_CODEC_FLAG_INTERLACED_DCT, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %114
  %146 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load i32, i32* @NV_ENC_PIC_STRUCT_FIELD_TOP_BOTTOM, align 4
  %152 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %16, i32 0, i32 2
  store i32 %151, i32* %152, align 8
  br label %156

153:                                              ; preds = %145
  %154 = load i32, i32* @NV_ENC_PIC_STRUCT_FIELD_BOTTOM_TOP, align 4
  %155 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %16, i32 0, i32 2
  store i32 %154, i32* %155, align 8
  br label %156

156:                                              ; preds = %153, %150
  br label %160

157:                                              ; preds = %114
  %158 = load i32, i32* @NV_ENC_PIC_STRUCT_FRAME, align 4
  %159 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %16, i32 0, i32 2
  store i32 %158, i32* %159, align 8
  br label %160

160:                                              ; preds = %157, %156
  %161 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp sge i64 %163, 0
  br i1 %164, label %165, label %183

165:                                              ; preds = %160
  %166 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %183

171:                                              ; preds = %165
  %172 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = load i64, i64* @NV_ENC_PIC_FLAG_FORCEIDR, align 8
  br label %180

178:                                              ; preds = %171
  %179 = load i64, i64* @NV_ENC_PIC_FLAG_FORCEINTRA, align 8
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi i64 [ %177, %176 ], [ %179, %178 ]
  %182 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %16, i32 0, i32 1
  store i64 %181, i64* %182, align 8
  br label %185

183:                                              ; preds = %165, %160
  %184 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %16, i32 0, i32 1
  store i64 0, i64* %184, align 8
  br label %185

185:                                              ; preds = %183, %180
  %186 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %16, i32 0, i32 0
  store i64 %188, i64* %189, align 8
  %190 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %190, i32 0, i32 7
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %223

194:                                              ; preds = %185
  %195 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %196 = load i32, i32* @AV_FRAME_DATA_A53_CC, align 4
  %197 = call i64 @av_frame_get_side_data(%struct.TYPE_39__* %195, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %223

199:                                              ; preds = %194
  %200 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %201 = bitcast %struct.TYPE_36__** %11 to i8**
  %202 = call i64 @ff_alloc_a53_sei(%struct.TYPE_39__* %200, i32 24, i8** %201, i64* %12)
  %203 = icmp slt i64 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %199
  %205 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %206 = load i32, i32* @AV_LOG_ERROR, align 4
  %207 = call i32 @av_log(%struct.TYPE_35__* %205, i32 %206, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %208

208:                                              ; preds = %204, %199
  %209 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %210 = icmp ne %struct.TYPE_36__* %209, null
  br i1 %210, label %211, label %222

211:                                              ; preds = %208
  %212 = load i64, i64* %12, align 8
  %213 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %213, i32 0, i32 2
  store i64 %212, i64* %214, align 8
  %215 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %215, i32 0, i32 0
  store i32 4, i32* %216, align 8
  %217 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %217, i64 1
  %219 = bitcast %struct.TYPE_36__* %218 to i32*
  %220 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %220, i32 0, i32 1
  store i32* %219, i32** %221, align 8
  br label %222

222:                                              ; preds = %211, %208
  br label %223

223:                                              ; preds = %222, %194, %185
  %224 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %225 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %226 = call i32 @nvenc_codec_specific_pic_params(%struct.TYPE_40__* %224, %struct.TYPE_37__* %16, %struct.TYPE_36__* %225)
  br label %232

227:                                              ; preds = %77
  %228 = load i64, i64* @NV_ENC_PIC_FLAG_EOS, align 8
  %229 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %16, i32 0, i32 1
  store i64 %228, i64* %229, align 8
  %230 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %230, i32 0, i32 0
  store i32 1, i32* %231, align 8
  br label %232

232:                                              ; preds = %227, %223
  %233 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %234 = call i32 @nvenc_push_context(%struct.TYPE_40__* %233)
  store i32 %234, i32* %9, align 4
  %235 = load i32, i32* %9, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %232
  %238 = load i32, i32* %9, align 4
  store i32 %238, i32* %3, align 4
  br label %337

239:                                              ; preds = %232
  %240 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %241 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %240, i32 0, i32 0
  %242 = load i64 (i32, %struct.TYPE_37__*)*, i64 (i32, %struct.TYPE_37__*)** %241, align 8
  %243 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %243, i32 0, i32 6
  %245 = load i32, i32* %244, align 4
  %246 = call i64 %242(i32 %245, %struct.TYPE_37__* %16)
  store i64 %246, i64* %6, align 8
  %247 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %248 = call i32 @av_free(%struct.TYPE_36__* %247)
  %249 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %250 = call i32 @nvenc_pop_context(%struct.TYPE_40__* %249)
  store i32 %250, i32* %9, align 4
  %251 = load i32, i32* %9, align 4
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %239
  %254 = load i32, i32* %9, align 4
  store i32 %254, i32* %3, align 4
  br label %337

255:                                              ; preds = %239
  %256 = load i64, i64* %6, align 8
  %257 = load i64, i64* @NV_ENC_SUCCESS, align 8
  %258 = icmp ne i64 %256, %257
  br i1 %258, label %259, label %267

259:                                              ; preds = %255
  %260 = load i64, i64* %6, align 8
  %261 = load i64, i64* @NV_ENC_ERR_NEED_MORE_INPUT, align 8
  %262 = icmp ne i64 %260, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %259
  %264 = load %struct.TYPE_40__*, %struct.TYPE_40__** %4, align 8
  %265 = load i64, i64* %6, align 8
  %266 = call i32 @nvenc_print_error(%struct.TYPE_40__* %264, i64 %265, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 %266, i32* %3, align 4
  br label %337

267:                                              ; preds = %259, %255
  %268 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %269 = icmp ne %struct.TYPE_39__* %268, null
  br i1 %269, label %270, label %315

270:                                              ; preds = %267
  %271 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %272 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @av_fifo_generic_write(i32 %273, %struct.TYPE_33__** %8, i32 8, i32* null)
  %275 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %276 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = call i32 @timestamp_queue_enqueue(i32 %277, i64 %280)
  %282 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %283 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %282, i32 0, i32 1
  %284 = load i64*, i64** %283, align 8
  %285 = getelementptr inbounds i64, i64* %284, i64 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %297

289:                                              ; preds = %270
  %290 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %294 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %293, i32 0, i32 1
  %295 = load i64*, i64** %294, align 8
  %296 = getelementptr inbounds i64, i64* %295, i64 0
  store i64 %292, i64* %296, align 8
  br label %314

297:                                              ; preds = %270
  %298 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %299 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %298, i32 0, i32 1
  %300 = load i64*, i64** %299, align 8
  %301 = getelementptr inbounds i64, i64* %300, i64 1
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %305, label %313

305:                                              ; preds = %297
  %306 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %310 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %309, i32 0, i32 1
  %311 = load i64*, i64** %310, align 8
  %312 = getelementptr inbounds i64, i64* %311, i64 1
  store i64 %308, i64* %312, align 8
  br label %313

313:                                              ; preds = %305, %297
  br label %314

314:                                              ; preds = %313, %289
  br label %315

315:                                              ; preds = %314, %267
  %316 = load i64, i64* %6, align 8
  %317 = load i64, i64* @NV_ENC_SUCCESS, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %336

319:                                              ; preds = %315
  br label %320

320:                                              ; preds = %326, %319
  %321 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %322 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %321, i32 0, i32 4
  %323 = load i32, i32* %322, align 4
  %324 = call i64 @av_fifo_size(i32 %323)
  %325 = icmp sgt i64 %324, 0
  br i1 %325, label %326, label %335

326:                                              ; preds = %320
  %327 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %328 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @av_fifo_generic_read(i32 %329, %struct.TYPE_33__** %7, i32 8, i32* null)
  %331 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %332 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @av_fifo_generic_write(i32 %333, %struct.TYPE_33__** %7, i32 8, i32* null)
  br label %320

335:                                              ; preds = %320
  br label %336

336:                                              ; preds = %335, %315
  store i32 0, i32* %3, align 4
  br label %337

337:                                              ; preds = %336, %263, %253, %237, %112, %107, %93, %85, %56, %41
  %338 = load i32, i32* %3, align 4
  ret i32 %338
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @av_fifo_reset(i32) #2

declare dso_local %struct.TYPE_33__* @get_free_frame(%struct.TYPE_35__*) #2

declare dso_local i32 @nvenc_push_context(%struct.TYPE_40__*) #2

declare dso_local i32 @reconfig_encoder(%struct.TYPE_40__*, %struct.TYPE_39__*) #2

declare dso_local i32 @nvenc_upload_frame(%struct.TYPE_40__*, %struct.TYPE_39__*, %struct.TYPE_33__*) #2

declare dso_local i32 @nvenc_pop_context(%struct.TYPE_40__*) #2

declare dso_local i64 @av_frame_get_side_data(%struct.TYPE_39__*, i32) #2

declare dso_local i64 @ff_alloc_a53_sei(%struct.TYPE_39__*, i32, i8**, i64*) #2

declare dso_local i32 @av_log(%struct.TYPE_35__*, i32, i8*) #2

declare dso_local i32 @nvenc_codec_specific_pic_params(%struct.TYPE_40__*, %struct.TYPE_37__*, %struct.TYPE_36__*) #2

declare dso_local i32 @av_free(%struct.TYPE_36__*) #2

declare dso_local i32 @nvenc_print_error(%struct.TYPE_40__*, i64, i8*) #2

declare dso_local i32 @av_fifo_generic_write(i32, %struct.TYPE_33__**, i32, i32*) #2

declare dso_local i32 @timestamp_queue_enqueue(i32, i64) #2

declare dso_local i64 @av_fifo_size(i32) #2

declare dso_local i32 @av_fifo_generic_read(i32, %struct.TYPE_33__**, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
