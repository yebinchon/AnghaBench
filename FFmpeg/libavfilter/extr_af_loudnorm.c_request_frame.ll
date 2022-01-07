; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_loudnorm.c_request_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_loudnorm.c_request_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__*, %struct.TYPE_13__** }
%struct.TYPE_11__ = type { i64, i32, i32, double*, i32, i32 }
%struct.TYPE_12__ = type { i32, i64* }

@AVERROR_EOF = common dso_local global i32 0, align 4
@INNER_FRAME = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@FINAL_FRAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @request_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_frame(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %5, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %20, i64 0
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %6, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %7, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = call i32 @ff_request_frame(%struct.TYPE_13__* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @AVERROR_EOF, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %203

31:                                               ; preds = %1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @INNER_FRAME, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %203

37:                                               ; preds = %31
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sdiv i32 %40, %43
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  store i32 %48, i32* %10, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @frame_size(i32 %51, i32 100)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %52, %55
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call %struct.TYPE_12__* @ff_get_audio_buffer(%struct.TYPE_13__* %59, i32 %60)
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %14, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %63 = icmp ne %struct.TYPE_12__* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %37
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = call i32 @AVERROR(i32 %65)
  store i32 %66, i32* %2, align 4
  br label %205

67:                                               ; preds = %37
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 3
  %73 = load double*, double** %72, align 8
  store double* %73, double** %9, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to double*
  store double* %79, double** %8, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sdiv i32 %82, %85
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %86, %89
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = mul nsw i32 %90, %93
  store i32 %94, i32* %13, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @frame_size(i32 %97, i32 100)
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %98, %101
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %102, %105
  %107 = load i32, i32* %13, align 4
  %108 = sub nsw i32 %107, %106
  store i32 %108, i32* %13, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %13, align 4
  %113 = sub nsw i32 %111, %112
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %67
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %13, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %120, %123
  br label %131

125:                                              ; preds = %67
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %13, align 4
  %130 = sub nsw i32 %128, %129
  br label %131

131:                                              ; preds = %125, %115
  %132 = phi i32 [ %124, %115 ], [ %130, %125 ]
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 4
  store i32 0, i32* %11, align 4
  br label %135

135:                                              ; preds = %193, %131
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %196

139:                                              ; preds = %135
  store i32 0, i32* %12, align 4
  br label %140

140:                                              ; preds = %160, %139
  %141 = load i32, i32* %12, align 4
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %163

146:                                              ; preds = %140
  %147 = load double*, double** %9, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds double, double* %147, i64 %153
  %155 = load double, double* %154, align 8
  %156 = load double*, double** %8, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds double, double* %156, i64 %158
  store double %155, double* %159, align 8
  br label %160

160:                                              ; preds = %146
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %12, align 4
  br label %140

163:                                              ; preds = %140
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load double*, double** %8, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds double, double* %167, i64 %168
  store double* %169, double** %8, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, %172
  store i32 %176, i32* %174, align 4
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = icmp sge i32 %179, %182
  br i1 %183, label %184, label %192

184:                                              ; preds = %163
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = sub nsw i32 %190, %187
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %184, %163
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %11, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %11, align 4
  br label %135

196:                                              ; preds = %135
  %197 = load i64, i64* @FINAL_FRAME, align 8
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  store i64 %197, i64* %199, align 8
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %202 = call i32 @filter_frame(%struct.TYPE_13__* %200, %struct.TYPE_12__* %201)
  store i32 %202, i32* %4, align 4
  br label %203

203:                                              ; preds = %196, %31, %1
  %204 = load i32, i32* %4, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %203, %64
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local i32 @ff_request_frame(%struct.TYPE_13__*) #1

declare dso_local i32 @frame_size(i32, i32) #1

declare dso_local %struct.TYPE_12__* @ff_get_audio_buffer(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @filter_frame(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
