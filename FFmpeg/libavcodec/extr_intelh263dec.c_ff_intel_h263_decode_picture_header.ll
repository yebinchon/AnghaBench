; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_intelh263dec.c_ff_intel_h263_decode_picture_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_intelh263dec.c_ff_intel_h263_decode_picture_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i8*, i8*, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }

@FRAME_SKIPPED = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Bad picture start code\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"after picture_number\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Bad H.263 id\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Intel H.263 free format not supported\0A\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"SAC not supported\0A\00", align 1
@ff_h263_format = common dso_local global i8*** null, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"Wrong Intel H.263 format\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Bad value for reserved field\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Invalid marker\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"in dimensions\00", align 1
@ff_h263_pixel_aspect = common dso_local global %struct.TYPE_8__* null, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"Invalid aspect ratio.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_mpeg1_dc_scale_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_intel_h263_decode_picture_header(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 11
  %8 = call i32 @get_bits_left(i32* %7)
  %9 = icmp eq i32 %8, 64
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @FRAME_SKIPPED, align 4
  store i32 %11, i32* %2, align 4
  br label %339

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 11
  %15 = call i32 @get_bits_long(i32* %14, i32 22)
  %16 = icmp ne i32 %15, 32
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 12
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = load i32, i32* @AV_LOG_ERROR, align 4
  %22 = call i32 @av_log(%struct.TYPE_9__* %20, i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %339

23:                                               ; preds = %12
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 11
  %26 = call i32 @get_bits(i32* %25, i32 8)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 12
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 11
  %34 = call i32 @check_marker(%struct.TYPE_9__* %31, i32* %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %339

37:                                               ; preds = %23
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 11
  %40 = call i32 @get_bits1(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 12
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = load i32, i32* @AV_LOG_ERROR, align 4
  %47 = call i32 @av_log(%struct.TYPE_9__* %45, i32 %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %339

48:                                               ; preds = %37
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 11
  %51 = call i32 @skip_bits1(i32* %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 11
  %54 = call i32 @skip_bits1(i32* %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 11
  %57 = call i32 @skip_bits1(i32* %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 11
  %60 = call i32 @get_bits(i32* %59, i32 3)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %64, 6
  br i1 %65, label %66, label %72

66:                                               ; preds = %63, %48
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 12
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = load i32, i32* @AV_LOG_ERROR, align 4
  %71 = call i32 @av_log(%struct.TYPE_9__* %69, i32 %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %339

72:                                               ; preds = %63
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 16
  store i64 0, i64* %74, align 8
  %75 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 11
  %78 = call i32 @get_bits1(i32* %77)
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %75, %79
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 15
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 11
  %85 = call i32 @get_bits1(i32* %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 11
  %90 = call i32 @get_bits1(i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %72
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 12
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = load i32, i32* @AV_LOG_ERROR, align 4
  %97 = call i32 @av_log(%struct.TYPE_9__* %95, i32 %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %339

98:                                               ; preds = %72
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 11
  %101 = call i32 @get_bits1(i32* %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %98
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br label %113

113:                                              ; preds = %108, %98
  %114 = phi i1 [ true, %98 ], [ %112, %108 ]
  %115 = zext i1 %114 to i32
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 11
  %120 = call i32 @get_bits1(i32* %119)
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %4, align 4
  %124 = icmp slt i32 %123, 6
  br i1 %124, label %125, label %154

125:                                              ; preds = %113
  %126 = load i8***, i8**** @ff_h263_format, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8**, i8*** %126, i64 %128
  %130 = load i8**, i8*** %129, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 0
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 14
  store i8* %132, i8** %134, align 8
  %135 = load i8***, i8**** @ff_h263_format, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8**, i8*** %135, i64 %137
  %139 = load i8**, i8*** %138, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 1
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 13
  store i8* %141, i8** %143, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 12
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  store i32 12, i32* %148, align 4
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 12
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  store i32 11, i32* %153, align 4
  br label %236

154:                                              ; preds = %113
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 11
  %157 = call i32 @get_bits(i32* %156, i32 3)
  store i32 %157, i32* %4, align 4
  %158 = load i32, i32* %4, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %154
  %161 = load i32, i32* %4, align 4
  %162 = icmp eq i32 %161, 7
  br i1 %162, label %163, label %169

163:                                              ; preds = %160, %154
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 12
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = load i32, i32* @AV_LOG_ERROR, align 4
  %168 = call i32 @av_log(%struct.TYPE_9__* %166, i32 %167, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %339

169:                                              ; preds = %160
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 11
  %172 = call i32 @get_bits(i32* %171, i32 2)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 12
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = load i32, i32* @AV_LOG_ERROR, align 4
  %179 = call i32 @av_log(%struct.TYPE_9__* %177, i32 %178, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %180

180:                                              ; preds = %174, %169
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 11
  %183 = call i32 @get_bits1(i32* %182)
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 12
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = mul nsw i32 %183, %191
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 5
  store i32 %192, i32* %194, align 4
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 11
  %197 = call i32 @get_bits1(i32* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %180
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 12
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %201, align 8
  %203 = load i32, i32* @AV_LOG_ERROR, align 4
  %204 = call i32 @av_log(%struct.TYPE_9__* %202, i32 %203, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %205

205:                                              ; preds = %199, %180
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 11
  %208 = call i32 @get_bits1(i32* %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 4
  store i32 2, i32* %212, align 8
  br label %213

213:                                              ; preds = %210, %205
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 11
  %216 = call i32 @get_bits(i32* %215, i32 5)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %213
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 12
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %220, align 8
  %222 = load i32, i32* @AV_LOG_ERROR, align 4
  %223 = call i32 @av_log(%struct.TYPE_9__* %221, i32 %222, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %224

224:                                              ; preds = %218, %213
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 11
  %227 = call i32 @get_bits(i32* %226, i32 5)
  %228 = icmp ne i32 %227, 1
  br i1 %228, label %229, label %235

229:                                              ; preds = %224
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 12
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %231, align 8
  %233 = load i32, i32* @AV_LOG_ERROR, align 4
  %234 = call i32 @av_log(%struct.TYPE_9__* %232, i32 %233, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %235

235:                                              ; preds = %229, %224
  br label %236

236:                                              ; preds = %235, %125
  %237 = load i32, i32* %4, align 4
  %238 = icmp eq i32 %237, 6
  br i1 %238, label %239, label %300

239:                                              ; preds = %236
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 11
  %242 = call i32 @get_bits(i32* %241, i32 4)
  store i32 %242, i32* %5, align 4
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 11
  %245 = call i32 @skip_bits(i32* %244, i32 9)
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 12
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %247, align 8
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 11
  %251 = call i32 @check_marker(%struct.TYPE_9__* %248, i32* %250, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 11
  %254 = call i32 @skip_bits(i32* %253, i32 9)
  %255 = load i32, i32* %5, align 4
  %256 = icmp eq i32 %255, 15
  br i1 %256, label %257, label %274

257:                                              ; preds = %239
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 11
  %260 = call i32 @get_bits(i32* %259, i32 8)
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 12
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  store i32 %260, i32* %265, align 4
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 11
  %268 = call i32 @get_bits(i32* %267, i32 8)
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 12
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 1
  store i32 %268, i32* %273, align 4
  br label %285

274:                                              ; preds = %239
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 12
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ff_h263_pixel_aspect, align 8
  %280 = load i32, i32* %5, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i64 %281
  %283 = bitcast %struct.TYPE_8__* %278 to i8*
  %284 = bitcast %struct.TYPE_8__* %282 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %283, i8* align 4 %284, i64 8, i1 false)
  br label %285

285:                                              ; preds = %274, %257
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 12
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %285
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 12
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %295, align 8
  %297 = load i32, i32* @AV_LOG_ERROR, align 4
  %298 = call i32 @av_log(%struct.TYPE_9__* %296, i32 %297, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %299

299:                                              ; preds = %293, %285
  br label %300

300:                                              ; preds = %299, %236
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 11
  %303 = call i32 @get_bits(i32* %302, i32 5)
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 7
  store i32 %303, i32* %305, align 4
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 6
  store i32 %303, i32* %307, align 8
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 11
  %310 = call i32 @skip_bits1(i32* %309)
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 4
  %313 = load i32, i32* %312, align 8
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %322

315:                                              ; preds = %300
  %316 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 11
  %318 = call i32 @skip_bits(i32* %317, i32 3)
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 11
  %321 = call i32 @skip_bits(i32* %320, i32 2)
  br label %322

322:                                              ; preds = %315, %300
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 11
  %325 = call i64 @skip_1stop_8data_bits(i32* %324)
  %326 = icmp slt i64 %325, 0
  br i1 %326, label %327, label %329

327:                                              ; preds = %322
  %328 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %328, i32* %2, align 4
  br label %339

329:                                              ; preds = %322
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 8
  store i32 1, i32* %331, align 8
  %332 = load i32, i32* @ff_mpeg1_dc_scale_table, align 4
  %333 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 9
  store i32 %332, i32* %334, align 4
  %335 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 10
  store i32 %332, i32* %336, align 8
  %337 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %338 = call i32 @ff_h263_show_pict_info(%struct.TYPE_7__* %337)
  store i32 0, i32* %2, align 4
  br label %339

339:                                              ; preds = %329, %327, %163, %92, %66, %42, %36, %17, %10
  %340 = load i32, i32* %2, align 4
  ret i32 %340
}

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @get_bits_long(i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @check_marker(%struct.TYPE_9__*, i32*, i8*) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @skip_bits1(i32*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @skip_1stop_8data_bits(i32*) #1

declare dso_local i32 @ff_h263_show_pict_info(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
