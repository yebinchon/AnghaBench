; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_smvjpegdec.c_smvjpeg_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_smvjpegdec.c_smvjpeg_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_20__**, i32, i32, %struct.TYPE_21__*, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { i32, i32*, i32, i32, i32, i32* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Invalid height\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to set dimensions\0A\00", align 1
@AV_NUM_DATA_POINTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i8*, i32*, %struct.TYPE_19__*)* @smvjpeg_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smvjpeg_decode_frame(%struct.TYPE_17__* %0, i8* %1, i32* %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %9, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 7
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %11, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %21, i64 0
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = srem i32 %26, %29
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %14, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %33, %4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %44 = call i32 @av_frame_unref(%struct.TYPE_20__* %43)
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 6
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %46, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %52 = call i32 @avcodec_decode_video2(%struct.TYPE_21__* %47, %struct.TYPE_20__* %48, i32* %50, %struct.TYPE_19__* %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %42
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %5, align 4
  br label %230

59:                                               ; preds = %42
  br label %69

60:                                               ; preds = %39
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @EINVAL, align 4
  %67 = call i32 @AVERROR(i32 %66)
  store i32 %67, i32* %5, align 4
  br label %230

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %59
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 6
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.TYPE_18__* @av_pix_fmt_desc_get(i32 %74)
  store %struct.TYPE_18__* %75, %struct.TYPE_18__** %10, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %77 = call i32 @av_assert0(%struct.TYPE_18__* %76)
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %83, %86
  %88 = srem i32 %80, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %69
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %92 = load i32, i32* @AV_LOG_ERROR, align 4
  %93 = call i32 @av_log(%struct.TYPE_17__* %91, i32 %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %94, i32* %5, align 4
  br label %230

95:                                               ; preds = %69
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %8, align 8
  store i32 %98, i32* %99, align 4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 6
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sdiv i32 %113, %116
  %118 = call i32 @ff_set_dimensions(%struct.TYPE_17__* %107, i32 %110, i32 %117)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %95
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %123 = load i32, i32* @AV_LOG_ERROR, align 4
  %124 = call i32 @av_log(%struct.TYPE_17__* %122, i32 %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %125 = load i32, i32* %15, align 4
  store i32 %125, i32* %5, align 4
  br label %230

126:                                              ; preds = %95
  %127 = load i32*, i32** %8, align 8
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %226

130:                                              ; preds = %126
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %133, i64 1
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 5
  store i32* null, i32** %136, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %142, i64 1
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 4
  store i32 %139, i32* %145, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %151, i64 1
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  store i32 %148, i32* %154, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %160, i64 1
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 3
  store i32 %157, i32* %163, align 4
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %166, i64 1
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %14, align 4
  %187 = call i32 @smv_img_pnt(i32 %170, i32 %173, i32* %176, i32 %179, i32 %182, i32 %185, i32 %186)
  store i32 0, i32* %13, align 4
  br label %188

188:                                              ; preds = %210, %130
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %213

192:                                              ; preds = %188
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 3
  %202 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %202, i64 1
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %13, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  store i32 %199, i32* %209, align 4
  br label %210

210:                                              ; preds = %192
  %211 = load i32, i32* %13, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %13, align 4
  br label %188

213:                                              ; preds = %188
  %214 = load i8*, i8** %7, align 8
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 3
  %217 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %217, i64 1
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %218, align 8
  %220 = call i32 @av_frame_ref(i8* %214, %struct.TYPE_20__* %219)
  store i32 %220, i32* %15, align 4
  %221 = load i32, i32* %15, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %213
  %224 = load i32, i32* %15, align 4
  store i32 %224, i32* %5, align 4
  br label %230

225:                                              ; preds = %213
  br label %226

226:                                              ; preds = %225, %126
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %5, align 4
  br label %230

230:                                              ; preds = %226, %223, %121, %90, %65, %55
  %231 = load i32, i32* %5, align 4
  ret i32 %231
}

declare dso_local i32 @av_frame_unref(%struct.TYPE_20__*) #1

declare dso_local i32 @avcodec_decode_video2(%struct.TYPE_21__*, %struct.TYPE_20__*, i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_18__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_assert0(%struct.TYPE_18__*) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @smv_img_pnt(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @av_frame_ref(i8*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
