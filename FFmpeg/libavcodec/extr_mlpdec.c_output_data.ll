; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpdec.c_output_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpdec.c_output_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32**, %struct.TYPE_14__, i32, i32, i32**, %struct.TYPE_18__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32 (i32, i64, i32**, i32, i32, i32, i32, i32)*, i32 (i32*, i32, i32*, i32, i32, i32, i64, i32, i32, i32, i32)* }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32, i32, i32*, i32, i32, i32, i64, i32, i32*, i32*, i32*, i32 }
%struct.TYPE_17__ = type { i32*, i64 }

@AV_SAMPLE_FMT_S32 = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"channel count mismatch\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"No samples to output.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, %struct.TYPE_17__*, i32*)* @output_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_data(%struct.TYPE_16__* %0, i32 %1, %struct.TYPE_17__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %10, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 6
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i64 %24
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %11, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AV_SAMPLE_FMT_S32, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %15, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  %43 = icmp ne i32 %38, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 5
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = call i32 @av_log(%struct.TYPE_18__* %47, i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %50, i32* %5, align 4
  br label %208

51:                                               ; preds = %4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %58 = load i32, i32* @AV_LOG_ERROR, align 4
  %59 = call i32 @av_log(%struct.TYPE_18__* %57, i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %60, i32* %5, align 4
  br label %208

61:                                               ; preds = %51
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %13, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 11
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %61
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @generate_2_noise_channels(%struct.TYPE_16__* %70, i32 %71)
  %73 = load i32, i32* %13, align 4
  %74 = add i32 %73, 2
  store i32 %74, i32* %13, align 4
  br label %79

75:                                               ; preds = %61
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @fill_noise_buffer(%struct.TYPE_16__* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %69
  store i32 0, i32* %12, align 4
  br label %80

80:                                               ; preds = %151, %79
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ult i32 %81, %84
  br i1 %85, label %86, label %154

86:                                               ; preds = %80
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %16, align 4
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load i32 (i32*, i32, i32*, i32, i32, i32, i64, i32, i32, i32, i32)*, i32 (i32*, i32, i32*, i32, i32, i32, i64, i32, i32, i32, i32)** %96, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i32**, i32*** %99, align 8
  %101 = getelementptr inbounds i32*, i32** %100, i64 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 10
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 4
  %113 = load i32**, i32*** %112, align 8
  %114 = getelementptr inbounds i32*, i32** %113, i64 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %12, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %12, align 4
  %126 = sub i32 %124, %125
  %127 = load i32, i32* %16, align 4
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 9
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 8
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %16, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @MSB_MASK(i32 %148)
  %150 = call i32 %97(i32* %103, i32 %110, i32* %118, i32 %121, i32 %126, i32 %127, i64 %130, i32 %131, i32 %138, i32 %141, i32 %149)
  br label %151

151:                                              ; preds = %86
  %152 = load i32, i32* %12, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %12, align 4
  br label %80

154:                                              ; preds = %80
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 6
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %162 = call i32 @ff_get_buffer(%struct.TYPE_18__* %160, %struct.TYPE_17__* %161, i32 0)
  store i32 %162, i32* %14, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %154
  %165 = load i32, i32* %14, align 4
  store i32 %165, i32* %5, align 4
  br label %208

166:                                              ; preds = %154
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = load i32 (i32, i64, i32**, i32, i32, i32, i32, i32)*, i32 (i32, i64, i32**, i32, i32, i32, i32, i32)** %169, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 6
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i32**, i32*** %178, align 8
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %15, align 4
  %195 = call i32 %170(i32 %173, i64 %176, i32** %179, i32 %184, i32 %187, i32 %190, i32 %193, i32 %194)
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 7
  store i32 %195, i32* %197, align 8
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @ff_side_data_update_matrix_encoding(%struct.TYPE_17__* %198, i32 %201)
  store i32 %202, i32* %14, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %166
  %205 = load i32, i32* %14, align 4
  store i32 %205, i32* %5, align 4
  br label %208

206:                                              ; preds = %166
  %207 = load i32*, i32** %9, align 8
  store i32 1, i32* %207, align 4
  store i32 0, i32* %5, align 4
  br label %208

208:                                              ; preds = %206, %204, %164, %56, %44
  %209 = load i32, i32* %5, align 4
  ret i32 %209
}

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32 @generate_2_noise_channels(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @fill_noise_buffer(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @MSB_MASK(i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @ff_side_data_update_matrix_encoding(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
