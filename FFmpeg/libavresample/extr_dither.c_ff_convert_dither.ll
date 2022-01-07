; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavresample/extr_dither.c_ff_convert_dither.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavresample/extr_dither.c_ff_convert_dither.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_15__*, i32, i32, %struct.TYPE_13__, i32, i64, i32, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i32, i32, i64, i32, i32 }

@AV_SAMPLE_FMT_S16P = common dso_local global i64 0, align 8
@AV_SAMPLE_FMT_FLTP = common dso_local global i64 0, align 8
@AV_RESAMPLE_DITHER_TRIANGULAR_NS = common dso_local global i64 0, align 8
@quantize_c = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_S16 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_convert_dither(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AV_SAMPLE_FMT_S16P, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %21, align 8
  br label %35

22:                                               ; preds = %3
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ff_audio_data_realloc(%struct.TYPE_15__* %25, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %218

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34, %18
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AV_SAMPLE_FMT_FLTP, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 7
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %41, %35
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 9
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ff_audio_data_realloc(%struct.TYPE_15__* %49, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %218

58:                                               ; preds = %46
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 9
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  store %struct.TYPE_15__* %61, %struct.TYPE_15__** %9, align 8
  br label %62

62:                                               ; preds = %58, %41
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AV_SAMPLE_FMT_FLTP, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %74 = call i32 @ff_audio_convert(i32 %71, %struct.TYPE_15__* %72, %struct.TYPE_15__* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  br label %218

79:                                               ; preds = %68
  br label %100

80:                                               ; preds = %62
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 7
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %80
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ff_audio_data_copy(%struct.TYPE_15__* %86, %struct.TYPE_15__* %87, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %4, align 4
  br label %218

96:                                               ; preds = %85
  br label %99

97:                                               ; preds = %80
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %98, %struct.TYPE_15__** %9, align 8
  br label %99

99:                                               ; preds = %97, %96
  br label %100

100:                                              ; preds = %99, %79
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @AV_RESAMPLE_DITHER_TRIANGULAR_NS, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %164

106:                                              ; preds = %100
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @FFMIN(i32 %109, i32 %114)
  store i32 %115, i32* %10, align 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @FFMIN(i32 %118, i32 %123)
  store i32 %124, i32* %11, align 4
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @FFALIGN(i32 %127, i32 %131)
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = srem i32 %133, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %157, label %140

140:                                              ; preds = %106
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp sge i32 %141, %142
  br i1 %143, label %144, label %157

144:                                              ; preds = %140
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 4
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 8
  br label %163

157:                                              ; preds = %140, %106
  %158 = load i32, i32* @quantize_c, align 4
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 4
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  store i32 1, i32* %162, align 8
  br label %163

163:                                              ; preds = %157, %144
  br label %164

164:                                              ; preds = %163, %100
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to i32**
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = inttoptr i64 %174 to float**
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @convert_samples(%struct.TYPE_14__* %165, i32** %171, float** %175, i32 %178, i32 %181)
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %164
  %186 = load i32, i32* %8, align 4
  store i32 %186, i32* %4, align 4
  br label %218

187:                                              ; preds = %164
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 1
  store i32 %190, i32* %194, align 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @AV_SAMPLE_FMT_S16, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %214

200:                                              ; preds = %187
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %206, align 8
  %208 = call i32 @ff_audio_convert(i32 %203, %struct.TYPE_15__* %204, %struct.TYPE_15__* %207)
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* %8, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %200
  %212 = load i32, i32* %8, align 4
  store i32 %212, i32* %4, align 4
  br label %218

213:                                              ; preds = %200
  br label %217

214:                                              ; preds = %187
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 2
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %216, align 8
  br label %217

217:                                              ; preds = %214, %213
  store i32 0, i32* %4, align 4
  br label %218

218:                                              ; preds = %217, %211, %185, %94, %77, %56, %32
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i32 @ff_audio_data_realloc(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ff_audio_convert(i32, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @ff_audio_data_copy(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @convert_samples(%struct.TYPE_14__*, i32**, float**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
