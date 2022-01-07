; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsvenc.c_init_video_param_jpeg.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsvenc.c_init_video_param_jpeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i32, i64, i32, %struct.TYPE_32__, %struct.TYPE_30__, %struct.TYPE_27__*, i32, i32, %struct.TYPE_25__, i32 }
%struct.TYPE_32__ = type { i64, i64 }
%struct.TYPE_30__ = type { i64, i64 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32, i64, i32, i64, i32, %struct.TYPE_31__, i32 }
%struct.TYPE_31__ = type { i32, i32, i32, i64, i64, i8*, i8*, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i8*, i8* }

@AV_PIX_FMT_QSV = common dso_local global i64 0, align 8
@AVERROR_BUG = common dso_local global i32 0, align 4
@MFX_CHROMAFORMAT_YUV420 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_20__*)* @init_video_param_jpeg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_video_param_jpeg(%struct.TYPE_24__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AV_PIX_FMT_QSV, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi i64 [ %20, %16 ], [ %24, %21 ]
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ff_qsv_codec_id_to_mfx(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %35, i32* %3, align 4
  br label %284

36:                                               ; preds = %25
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %36
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %52, i32 0, i32 1
  store i64 %49, i64* %53, align 8
  br label %54

54:                                               ; preds = %46, %36
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %60, i32 0, i32 6
  store i32 %57, i32* %61, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call %struct.TYPE_22__* @av_pix_fmt_desc_get(i32 %62)
  store %struct.TYPE_22__* %63, %struct.TYPE_22__** %7, align 8
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %65 = icmp ne %struct.TYPE_22__* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %54
  %67 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %67, i32* %3, align 4
  br label %284

68:                                               ; preds = %54
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %73, i32 0, i32 14
  %75 = call i32 @ff_qsv_map_pixfmt(i32 %69, i32* %74)
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %79, i32 0, i32 13
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %84, i32 0, i32 12
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 11
  store i32 %88, i32* %93, align 8
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %100, i32 0, i32 10
  store i32 %96, i32* %101, align 4
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 9
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %109, i32 0, i32 9
  store i32 %105, i32* %110, align 8
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 9
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %118, i32 0, i32 8
  store i32 %114, i32* %119, align 4
  %120 = load i32, i32* @MFX_CHROMAFORMAT_YUV420, align 4
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %124, i32 0, i32 7
  store i32 %120, i32* %125, align 8
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %135, i32 0, i32 0
  store i32 %131, i32* %136, align 8
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i64 0
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %146, i32 0, i32 1
  store i32 %142, i32* %147, align 4
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i64 0
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp sgt i32 %153, 8
  %155 = zext i1 %154 to i32
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %159, i32 0, i32 2
  store i32 %155, i32* %160, align 8
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 4
  %164 = call i8* @FFALIGN(i32 %163, i32 16)
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %167, i32 0, i32 5
  %169 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %168, i32 0, i32 6
  store i8* %164, i8** %169, align 8
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 8
  %173 = call i8* @FFALIGN(i32 %172, i32 16)
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %177, i32 0, i32 5
  store i8* %173, i8** %178, align 8
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 6
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %180, align 8
  %182 = icmp ne %struct.TYPE_27__* %181, null
  br i1 %182, label %183, label %217

183:                                              ; preds = %68
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 6
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = inttoptr i64 %188 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %189, %struct.TYPE_23__** %9, align 8
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %191, align 8
  store %struct.TYPE_21__* %192, %struct.TYPE_21__** %10, align 8
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %195, i64 0
  %197 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %202, i32 0, i32 5
  %204 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %203, i32 0, i32 6
  store i8* %199, i8** %204, align 8
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_29__*, %struct.TYPE_29__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %207, i64 0
  %209 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %214, i32 0, i32 5
  %216 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %215, i32 0, i32 5
  store i8* %211, i8** %216, align 8
  br label %217

217:                                              ; preds = %183, %68
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp sgt i64 %221, 0
  br i1 %222, label %223, label %248

223:                                              ; preds = %217
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 5
  %226 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = icmp sgt i64 %227, 0
  br i1 %228, label %229, label %248

229:                                              ; preds = %223
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 5
  %232 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %236, i32 0, i32 5
  %238 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %237, i32 0, i32 3
  store i64 %233, i64* %238, align 8
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %239, i32 0, i32 5
  %241 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %245, i32 0, i32 5
  %247 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %246, i32 0, i32 4
  store i64 %242, i64* %247, align 8
  br label %267

248:                                              ; preds = %223, %217
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 4
  %251 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %255, i32 0, i32 5
  %257 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %256, i32 0, i32 3
  store i64 %252, i64* %257, align 8
  %258 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %258, i32 0, i32 4
  %260 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %264, i32 0, i32 5
  %266 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %265, i32 0, i32 4
  store i64 %261, i64* %266, align 8
  br label %267

267:                                              ; preds = %248, %229
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %270, i32 0, i32 2
  store i32 1, i32* %271, align 8
  %272 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @av_clip(i32 %274, i32 1, i32 100)
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %278, i32 0, i32 4
  store i32 %275, i32* %279, align 8
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %282, i32 0, i32 3
  store i64 0, i64* %283, align 8
  store i32 0, i32* %3, align 4
  br label %284

284:                                              ; preds = %267, %66, %34
  %285 = load i32, i32* %3, align 4
  ret i32 %285
}

declare dso_local i32 @ff_qsv_codec_id_to_mfx(i32) #1

declare dso_local %struct.TYPE_22__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @ff_qsv_map_pixfmt(i32, i32*) #1

declare dso_local i8* @FFALIGN(i32, i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
