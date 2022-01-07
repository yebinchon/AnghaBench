; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dnxhddec.c_dnxhd_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dnxhddec.c_dnxhd_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i64, i64, i64, i32 (%struct.TYPE_25__*, i32, %struct.TYPE_24__*, i32*, i32)*, %struct.TYPE_22__* }
%struct.TYPE_24__ = type { i32, i64, i32 }
%struct.TYPE_22__ = type { i64, i64, i64, i32, i32, i32, i32, %struct.TYPE_20__*, i64, %struct.TYPE_19__*, i32, i32* }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32* }
%struct.TYPE_21__ = type { i8* }

@.str = private unnamed_addr constant [15 x i8] c"frame size %d\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"frame size changed: %dx%d -> %ux%u\0A\00", align 1
@AV_PIX_FMT_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"pix_fmt changed: %s -> %s\0A\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@dnxhd_decode_row = common dso_local global i32 0, align 4
@dnxhd_decode_frame.act_warned = internal global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Unsupported: variable ACT flag.\0A\00", align 1
@AV_PIX_FMT_GBRP10 = common dso_local global i64 0, align 8
@AV_PIX_FMT_GBRP12 = common dso_local global i64 0, align 8
@AV_PIX_FMT_YUV444P10 = common dso_local global i64 0, align 8
@AV_PIX_FMT_YUV444P12 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"%d lines with errors\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i8*, i32*, %struct.TYPE_23__*)* @dnxhd_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnxhd_decode_frame(%struct.TYPE_25__* %0, i8* %1, i32* %2, %struct.TYPE_23__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_21__, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %9, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %10, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %11, align 4
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  store %struct.TYPE_22__* %27, %struct.TYPE_22__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %29 = load i8*, i8** %7, align 8
  store i8* %29, i8** %28, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %31, %struct.TYPE_24__** %14, align 8
  store i32 1, i32* %15, align 4
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @ff_dlog(%struct.TYPE_25__* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 0, i32* %17, align 4
  br label %35

35:                                               ; preds = %49, %4
  %36 = load i32, i32* %17, align 4
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 7
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %43, align 8
  %45 = load i32, i32* %17, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  store i32 -1, i32* %48, align 8
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %17, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %17, align 4
  br label %35

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %197, %52
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @dnxhd_decode_header(%struct.TYPE_22__* %54, %struct.TYPE_24__* %55, i32* %56, i32 %57, i32 %58)
  store i32 %59, i32* %16, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %5, align 4
  br label %352

63:                                               ; preds = %53
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %105

73:                                               ; preds = %68, %63
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %73
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %81, %73
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %91 = load i32, i32* @AV_LOG_WARNING, align 4
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %90, i32 %91, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %94, i64 %97, i64 %100, i64 %103)
  store i32 1, i32* %15, align 4
  br label %105

105:                                              ; preds = %89, %81, %68
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @AV_PIX_FMT_NONE, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %131

111:                                              ; preds = %105
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %111
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %121 = load i32, i32* @AV_LOG_WARNING, align 4
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @av_get_pix_fmt_name(i64 %124)
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @av_get_pix_fmt_name(i64 %128)
  %130 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %120, i32 %121, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %125, i32 %129)
  store i32 1, i32* %15, align 4
  br label %131

131:                                              ; preds = %119, %111, %105
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 3
  store i64 %134, i64* %136, align 8
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @ff_set_dimensions(%struct.TYPE_25__* %137, i64 %140, i64 %143)
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* %16, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %131
  %148 = load i32, i32* %16, align 4
  store i32 %148, i32* %5, align 4
  br label %352

149:                                              ; preds = %131
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %149
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %154 = call i32 @ff_thread_get_buffer(%struct.TYPE_25__* %153, %struct.TYPE_21__* %13, i32 0)
  store i32 %154, i32* %16, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i32, i32* %16, align 4
  store i32 %157, i32* %5, align 4
  br label %352

158:                                              ; preds = %152
  %159 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 0
  store i32 1, i32* %163, align 8
  br label %164

164:                                              ; preds = %158, %149
  %165 = load i32, i32* %11, align 4
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = sub nsw i32 %165, %168
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 8
  %172 = load i32*, i32** %10, align 8
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %172, i64 %176
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 11
  store i32* %177, i32** %179, align 8
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 4
  %182 = load i32 (%struct.TYPE_25__*, i32, %struct.TYPE_24__*, i32*, i32)*, i32 (%struct.TYPE_25__*, i32, %struct.TYPE_24__*, i32*, i32)** %181, align 8
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %184 = load i32, i32* @dnxhd_decode_row, align 4
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 10
  %188 = load i32, i32* %187, align 8
  %189 = call i32 %182(%struct.TYPE_25__* %183, i32 %184, %struct.TYPE_24__* %185, i32* null, i32 %188)
  %190 = load i32, i32* %15, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %214

192:                                              ; preds = %164
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %214

197:                                              ; preds = %192
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 9
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i32*, i32** %10, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 %202
  store i32* %204, i32** %10, align 8
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 9
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = sub nsw i64 %211, %209
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %53

214:                                              ; preds = %192, %164
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %215

215:                                              ; preds = %241, %214
  %216 = load i32, i32* %17, align 4
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp slt i32 %216, %219
  br i1 %220, label %221, label %244

221:                                              ; preds = %215
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 7
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %223, align 8
  %225 = load i32, i32* %17, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load i32, i32* %16, align 4
  %231 = sext i32 %230 to i64
  %232 = add nsw i64 %231, %229
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %16, align 4
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 7
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %235, align 8
  %237 = load i32, i32* %17, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 1
  store i64 0, i64* %240, align 8
  br label %241

241:                                              ; preds = %221
  %242 = load i32, i32* %17, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %17, align 4
  br label %215

244:                                              ; preds = %215
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 8
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %329

249:                                              ; preds = %244
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i32 0, i32 7
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i64 0
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  store i32 %255, i32* %18, align 4
  store i32 1, i32* %17, align 4
  br label %256

256:                                              ; preds = %285, %249
  %257 = load i32, i32* %17, align 4
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp slt i32 %257, %260
  br i1 %261, label %262, label %288

262:                                              ; preds = %256
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 7
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %264, align 8
  %266 = load i32, i32* %17, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* %18, align 4
  %272 = icmp ne i32 %270, %271
  br i1 %272, label %273, label %284

273:                                              ; preds = %262
  %274 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %274, i32 0, i32 7
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %275, align 8
  %277 = load i32, i32* %17, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = icmp ne i32 %281, -1
  br i1 %282, label %283, label %284

283:                                              ; preds = %273
  store i32 2, i32* %18, align 4
  br label %288

284:                                              ; preds = %273, %262
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %17, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %17, align 4
  br label %256

288:                                              ; preds = %283, %256
  %289 = load i32, i32* %18, align 4
  switch i32 %289, label %328 [
    i32 -1, label %290
    i32 2, label %290
    i32 0, label %302
    i32 1, label %315
  ]

290:                                              ; preds = %288, %288
  %291 = load i32, i32* @dnxhd_decode_frame.act_warned, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %301, label %293

293:                                              ; preds = %290
  store i32 1, i32* @dnxhd_decode_frame.act_warned, align 4
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %295 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %294, i32 0, i32 6
  %296 = load i32, i32* %295, align 4
  %297 = sext i32 %296 to i64
  %298 = inttoptr i64 %297 to %struct.TYPE_25__*
  %299 = load i32, i32* @AV_LOG_ERROR, align 4
  %300 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %298, i32 %299, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %301

301:                                              ; preds = %293, %290
  br label %328

302:                                              ; preds = %288
  %303 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %304 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %303, i32 0, i32 5
  %305 = load i32, i32* %304, align 8
  %306 = icmp eq i32 %305, 10
  br i1 %306, label %307, label %309

307:                                              ; preds = %302
  %308 = load i64, i64* @AV_PIX_FMT_GBRP10, align 8
  br label %311

309:                                              ; preds = %302
  %310 = load i64, i64* @AV_PIX_FMT_GBRP12, align 8
  br label %311

311:                                              ; preds = %309, %307
  %312 = phi i64 [ %308, %307 ], [ %310, %309 ]
  %313 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %314 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %313, i32 0, i32 2
  store i64 %312, i64* %314, align 8
  br label %328

315:                                              ; preds = %288
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %317 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %316, i32 0, i32 5
  %318 = load i32, i32* %317, align 8
  %319 = icmp eq i32 %318, 10
  br i1 %319, label %320, label %322

320:                                              ; preds = %315
  %321 = load i64, i64* @AV_PIX_FMT_YUV444P10, align 8
  br label %324

322:                                              ; preds = %315
  %323 = load i64, i64* @AV_PIX_FMT_YUV444P12, align 8
  br label %324

324:                                              ; preds = %322, %320
  %325 = phi i64 [ %321, %320 ], [ %323, %322 ]
  %326 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %327 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %326, i32 0, i32 2
  store i64 %325, i64* %327, align 8
  br label %328

328:                                              ; preds = %288, %324, %311, %301
  br label %329

329:                                              ; preds = %328, %244
  %330 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %331 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %330, i32 0, i32 2
  %332 = load i64, i64* %331, align 8
  %333 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %333, i32 0, i32 3
  store i64 %332, i64* %334, align 8
  %335 = load i32, i32* %16, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %347

337:                                              ; preds = %329
  %338 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %339 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %338, i32 0, i32 6
  %340 = load i32, i32* %339, align 4
  %341 = sext i32 %340 to i64
  %342 = inttoptr i64 %341 to %struct.TYPE_25__*
  %343 = load i32, i32* @AV_LOG_ERROR, align 4
  %344 = load i32, i32* %16, align 4
  %345 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %342, i32 %343, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %344)
  %346 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %346, i32* %5, align 4
  br label %352

347:                                              ; preds = %329
  %348 = load i32*, i32** %8, align 8
  store i32 1, i32* %348, align 4
  %349 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %350 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  store i32 %351, i32* %5, align 4
  br label %352

352:                                              ; preds = %347, %337, %156, %147, %61
  %353 = load i32, i32* %5, align 4
  ret i32 %353
}

declare dso_local i32 @ff_dlog(%struct.TYPE_25__*, i8*, i32) #1

declare dso_local i32 @dnxhd_decode_header(%struct.TYPE_22__*, %struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_25__*, i32, i8*, ...) #1

declare dso_local i32 @av_get_pix_fmt_name(i64) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_25__*, i64, i64) #1

declare dso_local i32 @ff_thread_get_buffer(%struct.TYPE_25__*, %struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
