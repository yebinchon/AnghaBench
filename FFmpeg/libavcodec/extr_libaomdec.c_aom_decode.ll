; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libaomdec.c_aom_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libaomdec.c_aom_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.aom_image = type { i32, i32, i64, i64, i32, i32, i32, i64 }

@AOM_CODEC_OK = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to decode frame: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"  Additional information: %s\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Display dimensions %dx%d exceed storage %dx%d\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Unsupported output colorspace (%d) / bit_depth (%d)\0A\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"dimension change! %dx%d -> %dx%d\0A\00", align 1
@AOM_IMG_FMT_HIGHBITDEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i32*, %struct.TYPE_13__*)* @aom_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aom_decode(%struct.TYPE_15__* %0, i8* %1, i32* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.aom_image*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %10, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %11, align 8
  store i8* null, i8** %12, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @aom_codec_decode(i32* %23, i32 %26, i32 %29, i32* null)
  %31 = load i64, i64* @AOM_CODEC_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = call i8* @aom_codec_error(i32* %35)
  store i8* %36, i8** %15, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = call i8* @aom_codec_error_detail(i32* %38)
  store i8* %39, i8** %16, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = load i32, i32* @AV_LOG_ERROR, align 4
  %42 = load i8*, i8** %15, align 8
  %43 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %40, i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** %16, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %33
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = load i8*, i8** %16, align 8
  %50 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %47, i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %46, %33
  %52 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %52, i32* %5, align 4
  br label %208

53:                                               ; preds = %4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = call %struct.aom_image* @aom_codec_get_frame(i32* %55, i8** %12)
  store %struct.aom_image* %56, %struct.aom_image** %13, align 8
  %57 = icmp ne %struct.aom_image* %56, null
  br i1 %57, label %58, label %204

58:                                               ; preds = %53
  %59 = load %struct.aom_image*, %struct.aom_image** %13, align 8
  %60 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.aom_image*, %struct.aom_image** %13, align 8
  %63 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %61, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %58
  %67 = load %struct.aom_image*, %struct.aom_image** %13, align 8
  %68 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.aom_image*, %struct.aom_image** %13, align 8
  %71 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %69, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %66, %58
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = load i32, i32* @AV_LOG_ERROR, align 4
  %77 = load %struct.aom_image*, %struct.aom_image** %13, align 8
  %78 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.aom_image*, %struct.aom_image** %13, align 8
  %81 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.aom_image*, %struct.aom_image** %13, align 8
  %84 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.aom_image*, %struct.aom_image** %13, align 8
  %87 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %75, i32 %76, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %79, i64 %82, i32 %85, i64 %88)
  %90 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %90, i32* %5, align 4
  br label %208

91:                                               ; preds = %66
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %93 = load %struct.aom_image*, %struct.aom_image** %13, align 8
  %94 = call i32 @set_pix_fmt(%struct.TYPE_15__* %92, %struct.aom_image* %93)
  store i32 %94, i32* %14, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %91
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %98 = load i32, i32* @AV_LOG_ERROR, align 4
  %99 = load %struct.aom_image*, %struct.aom_image** %13, align 8
  %100 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.aom_image*, %struct.aom_image** %13, align 8
  %103 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %97, i32 %98, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %104)
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %5, align 4
  br label %208

107:                                              ; preds = %91
  %108 = load %struct.aom_image*, %struct.aom_image** %13, align 8
  %109 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %110, %113
  br i1 %114, label %124, label %115

115:                                              ; preds = %107
  %116 = load %struct.aom_image*, %struct.aom_image** %13, align 8
  %117 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %119, %122
  br i1 %123, label %124, label %154

124:                                              ; preds = %115, %107
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %126 = load i32, i32* @AV_LOG_INFO, align 4
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.aom_image*, %struct.aom_image** %13, align 8
  %134 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.aom_image*, %struct.aom_image** %13, align 8
  %137 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %125, i32 %126, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %129, i32 %132, i32 %135, i64 %138)
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %141 = load %struct.aom_image*, %struct.aom_image** %13, align 8
  %142 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.aom_image*, %struct.aom_image** %13, align 8
  %145 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i32 @ff_set_dimensions(%struct.TYPE_15__* %140, i32 %143, i32 %147)
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %124
  %152 = load i32, i32* %14, align 4
  store i32 %152, i32* %5, align 4
  br label %208

153:                                              ; preds = %124
  br label %154

154:                                              ; preds = %153, %115
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %157 = call i32 @ff_get_buffer(%struct.TYPE_15__* %155, %struct.TYPE_14__* %156, i32 0)
  store i32 %157, i32* %14, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = load i32, i32* %14, align 4
  store i32 %160, i32* %5, align 4
  br label %208

161:                                              ; preds = %154
  %162 = load %struct.aom_image*, %struct.aom_image** %13, align 8
  %163 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @AOM_IMG_FMT_HIGHBITDEPTH, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %161
  %169 = load %struct.aom_image*, %struct.aom_image** %13, align 8
  %170 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 8
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %175 = load %struct.aom_image*, %struct.aom_image** %13, align 8
  %176 = call i32 @image_copy_16_to_8(%struct.TYPE_14__* %174, %struct.aom_image* %175)
  br label %202

177:                                              ; preds = %168, %161
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.aom_image*, %struct.aom_image** %13, align 8
  %185 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %184, i32 0, i32 7
  %186 = load i64, i64* %185, align 8
  %187 = inttoptr i64 %186 to i32**
  %188 = load %struct.aom_image*, %struct.aom_image** %13, align 8
  %189 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.aom_image*, %struct.aom_image** %13, align 8
  %195 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.aom_image*, %struct.aom_image** %13, align 8
  %198 = getelementptr inbounds %struct.aom_image, %struct.aom_image* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = trunc i64 %199 to i32
  %201 = call i32 @av_image_copy(i32 %180, i32 %183, i32** %187, i32 %190, i32 %193, i32 %196, i32 %200)
  br label %202

202:                                              ; preds = %177, %173
  %203 = load i32*, i32** %8, align 8
  store i32 1, i32* %203, align 4
  br label %204

204:                                              ; preds = %202, %53
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %5, align 4
  br label %208

208:                                              ; preds = %204, %159, %151, %96, %74, %51
  %209 = load i32, i32* %5, align 4
  ret i32 %209
}

declare dso_local i64 @aom_codec_decode(i32*, i32, i32, i32*) #1

declare dso_local i8* @aom_codec_error(i32*) #1

declare dso_local i8* @aom_codec_error_detail(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local %struct.aom_image* @aom_codec_get_frame(i32*, i8**) #1

declare dso_local i32 @set_pix_fmt(%struct.TYPE_15__*, %struct.aom_image*) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @image_copy_16_to_8(%struct.TYPE_14__*, %struct.aom_image*) #1

declare dso_local i32 @av_image_copy(i32, i32, i32**, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
