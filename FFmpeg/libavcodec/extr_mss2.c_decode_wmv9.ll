; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss2.c_decode_wmv9.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss2.c_decode_wmv9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i8*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_18__, %struct.TYPE_20__, %struct.TYPE_21__ }
%struct.TYPE_18__ = type { i32 (i64, i32, i32, i64, i32, i32, i64, i32, i32)*, i32 (i64, i32, i32, i64, i32, i32, i64, i32, i32, i64, i32, i32)*, i32 (i32, i64, i32, i32)* }
%struct.TYPE_20__ = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_17__, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64*, i32* }
%struct.TYPE_21__ = type { i32, i32, i64, i64 }

@AVDISCARD_ALL = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"header error\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"expected I-frame\0A\00", align 1
@AV_PIX_FMT_YUV420P = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"ff_mpv_frame_start error\0A\00", align 1
@AV_PIX_FMT_RGB24 = common dso_local global i8* null, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [71 x i8] c"disabling error correction due to block count mismatch %dx%d != %dx%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Asymmetric WMV9 rectangle subsampling\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i32*, i32, i32, i32, i32, i32, i32)* @decode_wmv9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_wmv9(%struct.TYPE_23__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_19__*, align 8
  %19 = alloca %struct.TYPE_21__*, align 8
  %20 = alloca %struct.TYPE_19__*, align 8
  %21 = alloca %struct.TYPE_20__*, align 8
  %22 = alloca %struct.TYPE_22__*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %18, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 5
  store %struct.TYPE_21__* %28, %struct.TYPE_21__** %19, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %30, align 8
  store %struct.TYPE_19__* %31, %struct.TYPE_19__** %20, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 4
  store %struct.TYPE_20__* %33, %struct.TYPE_20__** %21, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %35 = call i32 @ff_mpeg_flush(%struct.TYPE_23__* %34)
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 8
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @init_get_bits8(i32* %37, i32* %38, i32 %39)
  store i32 %40, i32* %23, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %8
  %43 = load i32, i32* %23, align 4
  store i32 %43, i32* %9, align 4
  br label %404

44:                                               ; preds = %8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AVDISCARD_ALL, align 8
  %49 = icmp slt i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 8
  %56 = call i64 @ff_vc1_parse_frame_header(%struct.TYPE_19__* %53, i32* %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %44
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @AV_LOG_ERROR, align 4
  %64 = call i32 (i32, i32, i8*, ...) @av_log(i32 %62, i32 %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %65, i32* %9, align 4
  br label %404

66:                                               ; preds = %44
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AV_LOG_ERROR, align 4
  %78 = call i32 (i32, i32, i8*, ...) @av_log(i32 %76, i32 %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %79, i32* %9, align 4
  br label %404

80:                                               ; preds = %66
  %81 = load i8*, i8** @AV_PIX_FMT_YUV420P, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %86 = call i32 @ff_mpv_frame_start(%struct.TYPE_20__* %84, %struct.TYPE_23__* %85)
  store i32 %86, i32* %23, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %80
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @AV_LOG_ERROR, align 4
  %94 = call i32 (i32, i32, i8*, ...) @av_log(i32 %92, i32 %93, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i8*, i8** @AV_PIX_FMT_RGB24, align 8
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* %23, align 4
  store i32 %98, i32* %9, align 4
  br label %404

99:                                               ; preds = %80
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %101 = call i32 @ff_mpeg_er_frame_start(%struct.TYPE_20__* %100)
  %102 = load i32, i32* %12, align 4
  %103 = mul nsw i32 %102, 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %106, 15
  %108 = ashr i32 %107, 4
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %16, align 4
  %112 = add nsw i32 %111, 15
  %113 = ashr i32 %112, 4
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = and i32 %118, 1
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %99
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  %126 = ashr i32 %125, 1
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %121, %99
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = and i32 %132, 2
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %129
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  %140 = ashr i32 %139, 1
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %135, %129
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %145 = call i32 @ff_vc1_decode_blocks(%struct.TYPE_19__* %144)
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %148, %151
  br i1 %152, label %153, label %165

153:                                              ; preds = %143
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = icmp eq i32 %156, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %153
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 7
  %164 = call i32 @ff_er_frame_end(i32* %163)
  br label %184

165:                                              ; preds = %153, %143
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @AV_LOG_WARNING, align 4
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = call i32 (i32, i32, i8*, ...) @av_log(i32 %169, i32 %170, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %173, i32 %176, i32 %179, i32 %182)
  br label %184

184:                                              ; preds = %165, %161
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %186 = call i32 @ff_mpv_frame_end(%struct.TYPE_20__* %185)
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 6
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %189, align 8
  store %struct.TYPE_22__* %190, %struct.TYPE_22__** %22, align 8
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 3
  br i1 %194, label %195, label %255

195:                                              ; preds = %184
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 2
  %199 = load i32 (i32, i64, i32, i32)*, i32 (i32, i64, i32, i32)** %198, align 8
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 0
  %207 = load i64*, i64** %206, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 0
  %209 = load i64, i64* %208, align 8
  %210 = load i32, i32* %15, align 4
  %211 = load i32, i32* %16, align 4
  %212 = call i32 %199(i32 %204, i64 %209, i32 %210, i32 %211)
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 2
  %216 = load i32 (i32, i64, i32, i32)*, i32 (i32, i64, i32, i32)** %215, align 8
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 0
  %224 = load i64*, i64** %223, align 8
  %225 = getelementptr inbounds i64, i64* %224, i64 1
  %226 = load i64, i64* %225, align 8
  %227 = load i32, i32* %15, align 4
  %228 = add nsw i32 %227, 1
  %229 = ashr i32 %228, 1
  %230 = load i32, i32* %16, align 4
  %231 = add nsw i32 %230, 1
  %232 = ashr i32 %231, 1
  %233 = call i32 %216(i32 %221, i64 %226, i32 %229, i32 %232)
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 2
  %237 = load i32 (i32, i64, i32, i32)*, i32 (i32, i64, i32, i32)** %236, align 8
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 2
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 0
  %245 = load i64*, i64** %244, align 8
  %246 = getelementptr inbounds i64, i64* %245, i64 2
  %247 = load i64, i64* %246, align 8
  %248 = load i32, i32* %15, align 4
  %249 = add nsw i32 %248, 1
  %250 = ashr i32 %249, 1
  %251 = load i32, i32* %16, align 4
  %252 = add nsw i32 %251, 1
  %253 = ashr i32 %252, 1
  %254 = call i32 %237(i32 %242, i64 %247, i32 %250, i32 %253)
  br label %267

255:                                              ; preds = %184
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %255
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 4
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @avpriv_request_sample(i32 %264, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %266

266:                                              ; preds = %260, %255
  br label %267

267:                                              ; preds = %266, %195
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 0
  %270 = load i64*, i64** %269, align 8
  %271 = getelementptr inbounds i64, i64* %270, i64 1
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 0
  %275 = load i64*, i64** %274, align 8
  %276 = getelementptr inbounds i64, i64* %275, i64 2
  %277 = load i64, i64* %276, align 8
  %278 = icmp eq i64 %272, %277
  %279 = zext i1 %278 to i32
  %280 = call i32 @av_assert0(i32 %279)
  %281 = load i32, i32* %17, align 4
  %282 = icmp ne i32 %281, -1
  br i1 %282, label %283, label %350

283:                                              ; preds = %267
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 1
  %287 = load i32 (i64, i32, i32, i64, i32, i32, i64, i32, i32, i64, i32, i32)*, i32 (i64, i32, i32, i64, i32, i32, i64, i32, i32, i64, i32, i32)** %286, align 8
  %288 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %289 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = load i32, i32* %14, align 4
  %292 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %293 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = mul nsw i32 %291, %294
  %296 = sext i32 %295 to i64
  %297 = add nsw i64 %290, %296
  %298 = load i32, i32* %13, align 4
  %299 = mul nsw i32 %298, 3
  %300 = sext i32 %299 to i64
  %301 = add nsw i64 %297, %300
  %302 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* %17, align 4
  %306 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %307 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %306, i32 0, i32 3
  %308 = load i64, i64* %307, align 8
  %309 = load i32, i32* %14, align 4
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %311 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = mul nsw i32 %309, %312
  %314 = sext i32 %313 to i64
  %315 = add nsw i64 %308, %314
  %316 = load i32, i32* %13, align 4
  %317 = sext i32 %316 to i64
  %318 = add nsw i64 %315, %317
  %319 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %323 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %322, i32 0, i32 1
  %324 = load i32*, i32** %323, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 0
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %328 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %327, i32 0, i32 0
  %329 = load i64*, i64** %328, align 8
  %330 = getelementptr inbounds i64, i64* %329, i64 0
  %331 = load i64, i64* %330, align 8
  %332 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %333 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %332, i32 0, i32 1
  %334 = load i32*, i32** %333, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 1
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %338 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %337, i32 0, i32 1
  %339 = load i32*, i32** %338, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 2
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %343 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %342, i32 0, i32 0
  %344 = load i64*, i64** %343, align 8
  %345 = getelementptr inbounds i64, i64* %344, i64 1
  %346 = load i64, i64* %345, align 8
  %347 = load i32, i32* %15, align 4
  %348 = load i32, i32* %16, align 4
  %349 = call i32 %287(i64 %301, i32 %304, i32 %305, i64 %318, i32 %321, i32 %326, i64 %331, i32 %336, i32 %341, i64 %346, i32 %347, i32 %348)
  br label %400

350:                                              ; preds = %267
  %351 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %352 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %351, i32 0, i32 3
  %353 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %352, i32 0, i32 0
  %354 = load i32 (i64, i32, i32, i64, i32, i32, i64, i32, i32)*, i32 (i64, i32, i32, i64, i32, i32, i64, i32, i32)** %353, align 8
  %355 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %356 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %355, i32 0, i32 2
  %357 = load i64, i64* %356, align 8
  %358 = load i32, i32* %14, align 4
  %359 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %360 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = mul nsw i32 %358, %361
  %363 = sext i32 %362 to i64
  %364 = add nsw i64 %357, %363
  %365 = load i32, i32* %13, align 4
  %366 = mul nsw i32 %365, 3
  %367 = sext i32 %366 to i64
  %368 = add nsw i64 %364, %367
  %369 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %370 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %373 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %372, i32 0, i32 1
  %374 = load i32*, i32** %373, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 0
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %378 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %377, i32 0, i32 0
  %379 = load i64*, i64** %378, align 8
  %380 = getelementptr inbounds i64, i64* %379, i64 0
  %381 = load i64, i64* %380, align 8
  %382 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %383 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %382, i32 0, i32 1
  %384 = load i32*, i32** %383, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 1
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %388 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %387, i32 0, i32 1
  %389 = load i32*, i32** %388, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 2
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %393 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %392, i32 0, i32 0
  %394 = load i64*, i64** %393, align 8
  %395 = getelementptr inbounds i64, i64* %394, i64 1
  %396 = load i64, i64* %395, align 8
  %397 = load i32, i32* %15, align 4
  %398 = load i32, i32* %16, align 4
  %399 = call i32 %354(i64 %368, i32 %371, i32 %376, i64 %381, i32 %386, i32 %391, i64 %396, i32 %397, i32 %398)
  br label %400

400:                                              ; preds = %350, %283
  %401 = load i8*, i8** @AV_PIX_FMT_RGB24, align 8
  %402 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %403 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %402, i32 0, i32 1
  store i8* %401, i8** %403, align 8
  store i32 0, i32* %9, align 4
  br label %404

404:                                              ; preds = %400, %88, %72, %58, %42
  %405 = load i32, i32* %9, align 4
  ret i32 %405
}

declare dso_local i32 @ff_mpeg_flush(%struct.TYPE_23__*) #1

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i64 @ff_vc1_parse_frame_header(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @ff_mpv_frame_start(%struct.TYPE_20__*, %struct.TYPE_23__*) #1

declare dso_local i32 @ff_mpeg_er_frame_start(%struct.TYPE_20__*) #1

declare dso_local i32 @ff_vc1_decode_blocks(%struct.TYPE_19__*) #1

declare dso_local i32 @ff_er_frame_end(i32*) #1

declare dso_local i32 @ff_mpv_frame_end(%struct.TYPE_20__*) #1

declare dso_local i32 @avpriv_request_sample(i32, i8*) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
