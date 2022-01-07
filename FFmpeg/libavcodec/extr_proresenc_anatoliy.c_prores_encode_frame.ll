; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_anatoliy.c_prores_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_anatoliy.c_prores_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i64, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, i64 }
%struct.TYPE_15__ = type { i32*, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i64 }

@AV_INPUT_BUFFER_MIN_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"icpf\00", align 1
@FF_PROFILE_PRORES_4444 = common dso_local global i64 0, align 8
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"use interlaced encoding, top field first\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"use interlaced encoding, bottom field first\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"use progressive encoding\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"frame color primaries\00", align 1
@valid_primaries = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"frame color trc\00", align 1
@valid_trc = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"frame colorspace\00", align 1
@valid_colorspace = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV444P10 = common dso_local global i64 0, align 8
@QMAT_LUMA = common dso_local global i8** null, align 8
@QMAT_CHROMA = common dso_local global i8** null, align 8
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_15__*, %struct.TYPE_16__*, i32*)* @prores_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prores_encode_frame(%struct.TYPE_17__* %0, %struct.TYPE_15__* %1, %struct.TYPE_16__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %10, align 8
  store i32 148, i32* %11, align 4
  store i32 0, i32* %16, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @FFALIGN(i32 %24, i32 16)
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @FFALIGN(i32 %28, i32 16)
  %30 = mul nsw i32 %25, %29
  %31 = mul nsw i32 %30, 16
  %32 = add nsw i32 %31, 500
  %33 = load i32, i32* @AV_INPUT_BUFFER_MIN_SIZE, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %18, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* @AV_INPUT_BUFFER_MIN_SIZE, align 4
  %39 = add nsw i32 %37, %38
  %40 = call i32 @ff_alloc_packet2(%struct.TYPE_17__* %35, %struct.TYPE_15__* %36, i32 %39, i32 0)
  store i32 %40, i32* %15, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %4
  %43 = load i32, i32* %15, align 4
  store i32 %43, i32* %5, align 4
  br label %245

44:                                               ; preds = %4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %12, align 8
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 8, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @bytestream_put_be32(i32** %12, i32 %50)
  %52 = call i32 @bytestream_put_buffer(i32** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @bytestream_put_be16(i32** %12, i32 %53)
  %55 = call i32 @bytestream_put_be16(i32** %12, i32 0)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @bytestream_put_buffer(i32** %12, i8* %58, i32 4)
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @bytestream_put_be16(i32** %12, i32 %62)
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @bytestream_put_be16(i32** %12, i32 %66)
  store i32 130, i32* %17, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @FF_PROFILE_PRORES_4444, align 8
  %72 = icmp uge i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %44
  %74 = load i32, i32* %17, align 4
  %75 = or i32 %74, 64
  store i32 %75, i32* %17, align 4
  br label %76

76:                                               ; preds = %73, %44
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %76
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %93 = load i32, i32* @AV_LOG_DEBUG, align 4
  %94 = call i32 @av_log(%struct.TYPE_17__* %92, i32 %93, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* %17, align 4
  %96 = or i32 %95, 4
  store i32 %96, i32* %17, align 4
  store i32 1, i32* %16, align 4
  br label %103

97:                                               ; preds = %86
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %99 = load i32, i32* @AV_LOG_DEBUG, align 4
  %100 = call i32 @av_log(%struct.TYPE_17__* %98, i32 %99, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i32, i32* %17, align 4
  %102 = or i32 %101, 8
  store i32 %102, i32* %17, align 4
  br label %103

103:                                              ; preds = %97, %91
  br label %108

104:                                              ; preds = %76
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %106 = load i32, i32* @AV_LOG_DEBUG, align 4
  %107 = call i32 @av_log(%struct.TYPE_17__* %105, i32 %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %108

108:                                              ; preds = %104, %103
  %109 = load i32, i32* %17, align 4
  %110 = load i32*, i32** %12, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %12, align 8
  store i32 %109, i32* %110, align 4
  %112 = load i32*, i32** %12, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %12, align 8
  store i32 0, i32* %112, align 4
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @valid_primaries, align 4
  %119 = call i8* @ff_int_from_list_or_default(%struct.TYPE_17__* %114, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %117, i32 %118, i32 0)
  %120 = ptrtoint i8* %119 to i32
  %121 = load i32*, i32** %12, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %12, align 8
  store i32 %120, i32* %121, align 4
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @valid_trc, align 4
  %128 = call i8* @ff_int_from_list_or_default(%struct.TYPE_17__* %123, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %126, i32 %127, i32 0)
  %129 = ptrtoint i8* %128 to i32
  %130 = load i32*, i32** %12, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %12, align 8
  store i32 %129, i32* %130, align 4
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @valid_colorspace, align 4
  %137 = call i8* @ff_int_from_list_or_default(%struct.TYPE_17__* %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %135, i32 %136, i32 0)
  %138 = ptrtoint i8* %137 to i32
  %139 = load i32*, i32** %12, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %12, align 8
  store i32 %138, i32* %139, align 4
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @FF_PROFILE_PRORES_4444, align 8
  %145 = icmp uge i64 %143, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %108
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @AV_PIX_FMT_YUV444P10, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load i32*, i32** %12, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %12, align 8
  store i32 160, i32* %153, align 4
  br label %158

155:                                              ; preds = %146
  %156 = load i32*, i32** %12, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %12, align 8
  store i32 162, i32* %156, align 4
  br label %158

158:                                              ; preds = %155, %152
  br label %162

159:                                              ; preds = %108
  %160 = load i32*, i32** %12, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %12, align 8
  store i32 32, i32* %160, align 4
  br label %162

162:                                              ; preds = %159, %158
  %163 = load i32*, i32** %12, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %12, align 8
  store i32 0, i32* %163, align 4
  %165 = load i32*, i32** %12, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %166, i32** %12, align 8
  store i32 3, i32* %165, align 4
  %167 = load i8**, i8*** @QMAT_LUMA, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds i8*, i8** %167, i64 %170
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @bytestream_put_buffer(i32** %12, i8* %172, i32 64)
  %174 = load i8**, i8*** @QMAT_CHROMA, align 8
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds i8*, i8** %174, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @bytestream_put_buffer(i32** %12, i8* %179, i32 64)
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %183 = load i32*, i32** %12, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %13, align 4
  %188 = sub nsw i32 %186, %187
  %189 = load i32, i32* %16, align 4
  %190 = call i32 @prores_encode_picture(%struct.TYPE_17__* %181, %struct.TYPE_16__* %182, i32* %183, i32 %188, i32 0, i32 %189)
  store i32 %190, i32* %14, align 4
  %191 = load i32, i32* %14, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %162
  %194 = load i32, i32* %14, align 4
  store i32 %194, i32* %5, align 4
  br label %245

195:                                              ; preds = %162
  %196 = load i32, i32* %14, align 4
  %197 = load i32, i32* %13, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %13, align 4
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %230

203:                                              ; preds = %195
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %13, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %13, align 4
  %216 = sub nsw i32 %214, %215
  %217 = load i32, i32* %16, align 4
  %218 = icmp ne i32 %217, 0
  %219 = xor i1 %218, true
  %220 = zext i1 %219 to i32
  %221 = call i32 @prores_encode_picture(%struct.TYPE_17__* %204, %struct.TYPE_16__* %205, i32* %211, i32 %216, i32 1, i32 %220)
  store i32 %221, i32* %14, align 4
  %222 = load i32, i32* %14, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %203
  %225 = load i32, i32* %14, align 4
  store i32 %225, i32* %5, align 4
  br label %245

226:                                              ; preds = %203
  %227 = load i32, i32* %14, align 4
  %228 = load i32, i32* %13, align 4
  %229 = add nsw i32 %228, %227
  store i32 %229, i32* %13, align 4
  br label %230

230:                                              ; preds = %226, %195
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %13, align 4
  %235 = call i32 @AV_WB32(i32* %233, i32 %234)
  %236 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %239, %236
  store i32 %240, i32* %238, align 4
  %241 = load i32, i32* %13, align 4
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 1
  store i32 %241, i32* %243, align 8
  %244 = load i32*, i32** %9, align 8
  store i32 1, i32* %244, align 4
  store i32 0, i32* %5, align 4
  br label %245

245:                                              ; preds = %230, %224, %193, %42
  %246 = load i32, i32* %5, align 4
  ret i32 %246
}

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_17__*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @bytestream_put_be32(i32**, i32) #1

declare dso_local i32 @bytestream_put_buffer(i32**, i8*, i32) #1

declare dso_local i32 @bytestream_put_be16(i32**, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i8* @ff_int_from_list_or_default(%struct.TYPE_17__*, i8*, i32, i32, i32) #1

declare dso_local i32 @prores_encode_picture(%struct.TYPE_17__*, %struct.TYPE_16__*, i32*, i32, i32, i32) #1

declare dso_local i32 @AV_WB32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
