; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bitstream_filter.c_av_bitstream_filter_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bitstream_filter.c_av_bitstream_filter_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_20__*, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_21__*, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_25__ = type { i32, i32*, i32 }
%struct.TYPE_23__ = type { i32, i32*, i32 }
%struct.TYPE_24__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"private_spspps_buf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_bitstream_filter_filter(%struct.TYPE_26__* %0, %struct.TYPE_25__* %1, i8* %2, i32** %3, i32* %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_22__*, align 8
  %19 = alloca %struct.TYPE_23__, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_24__*, align 8
  %22 = alloca [2 x i8*], align 16
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %10, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32** %3, i32*** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  store %struct.TYPE_22__* %25, %struct.TYPE_22__** %18, align 8
  %26 = bitcast %struct.TYPE_23__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 24, i1 false)
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %30 = icmp ne %struct.TYPE_19__* %29, null
  br i1 %30, label %114, label %31

31:                                               ; preds = %8
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 1
  %37 = call i32 @av_bsf_alloc(%struct.TYPE_20__* %34, %struct.TYPE_19__** %36)
  store i32 %37, i32* %20, align 4
  %38 = load i32, i32* %20, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %20, align 4
  store i32 %41, i32* %9, align 4
  br label %264

42:                                               ; preds = %31
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %49 = call i32 @avcodec_parameters_from_context(i32 %47, %struct.TYPE_25__* %48)
  store i32 %49, i32* %20, align 4
  %50 = load i32, i32* %20, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* %20, align 4
  store i32 %53, i32* %9, align 4
  br label %264

54:                                               ; preds = %42
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 2
  store i32 %57, i32* %61, align 4
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %104

66:                                               ; preds = %54
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %104

73:                                               ; preds = %66
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call %struct.TYPE_24__* @av_opt_next(i32 %78, i32* null)
  store %struct.TYPE_24__* %79, %struct.TYPE_24__** %21, align 8
  %80 = bitcast [2 x i8*]* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %80, i8 0, i64 16, i1 false)
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %82 = icmp ne %struct.TYPE_24__* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds [2 x i8*], [2 x i8*]* %22, i64 0, i64 0
  store i8* %86, i8** %87, align 16
  br label %88

88:                                               ; preds = %83, %73
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds [2 x i8*], [2 x i8*]* %22, i64 0, i64 0
  %98 = call i32 @av_opt_set_from_string(i32 %93, i32 %96, i8** %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %98, i32* %20, align 4
  %99 = load i32, i32* %20, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %88
  %102 = load i32, i32* %20, align 4
  store i32 %102, i32* %9, align 4
  br label %264

103:                                              ; preds = %88
  br label %104

104:                                              ; preds = %103, %66, %54
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %106, align 8
  %108 = call i32 @av_bsf_init(%struct.TYPE_19__* %107)
  store i32 %108, i32* %20, align 4
  %109 = load i32, i32* %20, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* %20, align 4
  store i32 %112, i32* %9, align 4
  br label %264

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %113, %8
  %115 = load i32*, i32** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  store i32* %115, i32** %116, align 8
  %117 = load i32, i32* %16, align 4
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  store i32 %117, i32* %118, align 8
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %120, align 8
  %122 = call i32 @av_bsf_send_packet(%struct.TYPE_19__* %121, %struct.TYPE_23__* %19)
  store i32 %122, i32* %20, align 4
  %123 = load i32, i32* %20, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %114
  %126 = load i32, i32* %20, align 4
  store i32 %126, i32* %9, align 4
  br label %264

127:                                              ; preds = %114
  %128 = load i32**, i32*** %13, align 8
  store i32* null, i32** %128, align 8
  %129 = load i32*, i32** %14, align 8
  store i32 0, i32* %129, align 4
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %131, align 8
  %133 = call i32 @av_bsf_receive_packet(%struct.TYPE_19__* %132, %struct.TYPE_23__* %19)
  store i32 %133, i32* %20, align 4
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* @EAGAIN, align 4
  %136 = call i32 @AVERROR(i32 %135)
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %142, label %138

138:                                              ; preds = %127
  %139 = load i32, i32* %20, align 4
  %140 = load i32, i32* @AVERROR_EOF, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %138, %127
  store i32 0, i32* %9, align 4
  br label %264

143:                                              ; preds = %138
  %144 = load i32, i32* %20, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = load i32, i32* %20, align 4
  store i32 %147, i32* %9, align 4
  br label %264

148:                                              ; preds = %143
  br label %149

149:                                              ; preds = %148
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32* @av_malloc(i64 %154)
  %156 = load i32**, i32*** %13, align 8
  store i32* %155, i32** %156, align 8
  %157 = load i32**, i32*** %13, align 8
  %158 = load i32*, i32** %157, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %164, label %160

160:                                              ; preds = %149
  %161 = call i32 @av_packet_unref(%struct.TYPE_23__* %19)
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = call i32 @AVERROR(i32 %162)
  store i32 %163, i32* %9, align 4
  br label %264

164:                                              ; preds = %149
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32*, i32** %14, align 8
  store i32 %166, i32* %167, align 4
  %168 = load i32**, i32*** %13, align 8
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @memcpy(i32* %169, i32* %171, i32 %173)
  %175 = call i32 @av_packet_unref(%struct.TYPE_23__* %19)
  br label %176

176:                                              ; preds = %179, %164
  %177 = load i32, i32* %20, align 4
  %178 = icmp sge i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %176
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %181, align 8
  %183 = call i32 @av_bsf_receive_packet(%struct.TYPE_19__* %182, %struct.TYPE_23__* %19)
  store i32 %183, i32* %20, align 4
  %184 = call i32 @av_packet_unref(%struct.TYPE_23__* %19)
  br label %176

185:                                              ; preds = %176
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %263, label %190

190:                                              ; preds = %185
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %260

199:                                              ; preds = %190
  %200 = load i8*, i8** %12, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %206

202:                                              ; preds = %199
  %203 = load i8*, i8** %12, align 8
  %204 = call i32 @strstr(i8* %203, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %260, label %206

206:                                              ; preds = %202, %199
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 1
  %209 = call i32 @av_freep(i32** %208)
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 0
  store i32 0, i32* %211, align 8
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = sext i32 %218 to i64
  %220 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %221 = add nsw i64 %219, %220
  %222 = call i32* @av_mallocz(i64 %221)
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %223, i32 0, i32 1
  store i32* %222, i32** %224, align 8
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %232, label %229

229:                                              ; preds = %206
  %230 = load i32, i32* @ENOMEM, align 4
  %231 = call i32 @AVERROR(i32 %230)
  store i32 %231, i32* %9, align 4
  br label %264

232:                                              ; preds = %206
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @memcpy(i32* %235, i32* %242, i32 %249)
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %259 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %258, i32 0, i32 0
  store i32 %257, i32* %259, align 8
  br label %260

260:                                              ; preds = %232, %202, %190
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 0
  store i32 1, i32* %262, align 8
  br label %263

263:                                              ; preds = %260, %185
  store i32 1, i32* %9, align 4
  br label %264

264:                                              ; preds = %263, %229, %160, %146, %142, %125, %111, %101, %52, %40
  %265 = load i32, i32* %9, align 4
  ret i32 %265
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_bsf_alloc(%struct.TYPE_20__*, %struct.TYPE_19__**) #2

declare dso_local i32 @avcodec_parameters_from_context(i32, %struct.TYPE_25__*) #2

declare dso_local %struct.TYPE_24__* @av_opt_next(i32, i32*) #2

declare dso_local i32 @av_opt_set_from_string(i32, i32, i8**, i8*, i8*) #2

declare dso_local i32 @av_bsf_init(%struct.TYPE_19__*) #2

declare dso_local i32 @av_bsf_send_packet(%struct.TYPE_19__*, %struct.TYPE_23__*) #2

declare dso_local i32 @av_bsf_receive_packet(%struct.TYPE_19__*, %struct.TYPE_23__*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32* @av_malloc(i64) #2

declare dso_local i32 @av_packet_unref(%struct.TYPE_23__*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @strstr(i8*, i8*) #2

declare dso_local i32 @av_freep(i32**) #2

declare dso_local i32* @av_mallocz(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
