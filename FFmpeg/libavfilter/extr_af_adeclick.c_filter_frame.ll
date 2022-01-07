; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_adeclick.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_adeclick.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_17__*, %struct.TYPE_21__*, %struct.TYPE_23__** }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_24__*, i32, %struct.TYPE_20__*, i32*, i32)* }
%struct.TYPE_20__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_19__*, %struct.TYPE_18__*, i32 }
%struct.TYPE_19__ = type { i64* }
%struct.TYPE_18__ = type { i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@filter_channel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__, align 8
  %13 = alloca double*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  store %struct.TYPE_24__* %16, %struct.TYPE_24__** %4, align 8
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %19, i64 0
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  store %struct.TYPE_23__* %21, %struct.TYPE_23__** %5, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.TYPE_22__* @ff_get_audio_buffer(%struct.TYPE_23__* %25, i32 %28)
  store %struct.TYPE_22__* %29, %struct.TYPE_22__** %7, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %31 = icmp ne %struct.TYPE_22__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = call i32 @AVERROR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %207

35:                                               ; preds = %1
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 7
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8**
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @av_audio_fifo_peek(i32 %38, i8** %44, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %35
  br label %200

52:                                               ; preds = %35
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  store %struct.TYPE_22__* %53, %struct.TYPE_22__** %54, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_24__*, i32, %struct.TYPE_20__*, i32*, i32)*, i32 (%struct.TYPE_24__*, i32, %struct.TYPE_20__*, i32*, i32)** %58, align 8
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %61 = load i32, i32* @filter_channel, align 4
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 %59(%struct.TYPE_24__* %60, i32 %61, %struct.TYPE_20__* %12, i32* null, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %52
  br label %200

69:                                               ; preds = %52
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %110, %69
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 7
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %71, %76
  br i1 %77, label %78, label %113

78:                                               ; preds = %70
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 6
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to double*
  store double* %88, double** %13, align 8
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %106, %78
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %89
  %96 = load double*, double** %13, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, double* %96, i64 %98
  %100 = load double, double* %99, align 8
  %101 = fcmp une double %100, 0.000000e+00
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %102, %95
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %89

109:                                              ; preds = %89
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %70

113:                                              ; preds = %70
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @av_audio_fifo_drain(i32 %116, i32 %119)
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %113
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @FFMIN(i32 %128, i64 %131)
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %125, %113
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, %148
  store i32 %152, i32* %150, align 4
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = mul nsw i32 %155, %158
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, %159
  store i32 %163, i32* %161, align 8
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %166 = call i32 @ff_filter_frame(%struct.TYPE_23__* %164, %struct.TYPE_22__* %165)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %135
  %170 = load i32, i32* %8, align 4
  store i32 %170, i32* %2, align 4
  br label %207

171:                                              ; preds = %135
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp sgt i64 %174, 0
  br i1 %175, label %176, label %199

176:                                              ; preds = %171
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = sub nsw i64 %183, %180
  store i64 %184, i64* %182, align 8
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = icmp sle i64 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %176
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @av_audio_fifo_size(i32 %195)
  %197 = call i32 @av_audio_fifo_drain(i32 %192, i32 %196)
  br label %198

198:                                              ; preds = %189, %176
  br label %199

199:                                              ; preds = %198, %171
  br label %200

200:                                              ; preds = %199, %68, %51
  %201 = load i32, i32* %8, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %200
  %204 = call i32 @av_frame_free(%struct.TYPE_22__** %7)
  br label %205

205:                                              ; preds = %203, %200
  %206 = load i32, i32* %8, align 4
  store i32 %206, i32* %2, align 4
  br label %207

207:                                              ; preds = %205, %169, %32
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local %struct.TYPE_22__* @ff_get_audio_buffer(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_audio_fifo_peek(i32, i8**, i32) #1

declare dso_local i32 @av_audio_fifo_drain(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i64) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @av_audio_fifo_size(i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_22__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
