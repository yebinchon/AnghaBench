; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_minterpolate.c_get_sbad_ob.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_minterpolate.c_get_sbad_ob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64*, i64* }

@COST_PRED_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i32, i32, i32, i32)* @get_sbad_ob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_sbad_ob(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 9
  %27 = load i64*, i64** %26, align 8
  store i64* %27, i64** %11, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 8
  %30 = load i64*, i64** %29, align 8
  store i64* %30, i64** %12, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %13, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = sdiv i32 %39, 2
  %41 = add nsw i32 %36, %40
  store i32 %41, i32* %14, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sdiv i32 %47, 2
  %49 = sub nsw i32 %44, %48
  store i32 %49, i32* %15, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = sdiv i32 %55, 2
  %57 = add nsw i32 %52, %56
  store i32 %57, i32* %16, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sdiv i32 %63, 2
  %65 = sub nsw i32 %60, %64
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %7, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 %69, %70
  store i32 %71, i32* %19, align 4
  store i64 0, i64* %24, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @av_clip(i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %17, align 4
  %79 = call i32 @av_clip(i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %14, align 4
  %85 = sub nsw i32 %83, %84
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %7, align 4
  %88 = sub nsw i32 %86, %87
  %89 = call i32 @FFMIN(i32 %85, i32 %88)
  %90 = sub nsw i32 0, %89
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %14, align 4
  %93 = sub nsw i32 %91, %92
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 %94, %95
  %97 = call i32 @FFMIN(i32 %93, i32 %96)
  %98 = call i32 @av_clip(i32 %82, i32 %90, i32 %97)
  store i32 %98, i32* %20, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %8, align 4
  %101 = sub nsw i32 %99, %100
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %16, align 4
  %104 = sub nsw i32 %102, %103
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* %8, align 4
  %107 = sub nsw i32 %105, %106
  %108 = call i32 @FFMIN(i32 %104, i32 %107)
  %109 = sub nsw i32 0, %108
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %16, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %8, align 4
  %115 = sub nsw i32 %113, %114
  %116 = call i32 @FFMIN(i32 %112, i32 %115)
  %117 = call i32 @av_clip(i32 %101, i32 %109, i32 %116)
  store i32 %117, i32* %21, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 0, %120
  %122 = sdiv i32 %121, 2
  store i32 %122, i32* %23, align 4
  br label %123

123:                                              ; preds = %189, %5
  %124 = load i32, i32* %23, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = mul nsw i32 %127, 3
  %129 = sdiv i32 %128, 2
  %130 = icmp slt i32 %124, %129
  br i1 %130, label %131, label %192

131:                                              ; preds = %123
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 0, %134
  %136 = sdiv i32 %135, 2
  store i32 %136, i32* %22, align 4
  br label %137

137:                                              ; preds = %185, %131
  %138 = load i32, i32* %22, align 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = mul nsw i32 %141, 3
  %143 = sdiv i32 %142, 2
  %144 = icmp slt i32 %138, %143
  br i1 %144, label %145, label %188

145:                                              ; preds = %137
  %146 = load i64*, i64** %11, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %20, align 4
  %149 = add nsw i32 %147, %148
  %150 = load i32, i32* %22, align 4
  %151 = add nsw i32 %149, %150
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %21, align 4
  %154 = add nsw i32 %152, %153
  %155 = load i32, i32* %23, align 4
  %156 = add nsw i32 %154, %155
  %157 = load i32, i32* %13, align 4
  %158 = mul nsw i32 %156, %157
  %159 = add nsw i32 %151, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %146, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = load i64*, i64** %12, align 8
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* %20, align 4
  %166 = sub nsw i32 %164, %165
  %167 = load i32, i32* %22, align 4
  %168 = add nsw i32 %166, %167
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %21, align 4
  %171 = sub nsw i32 %169, %170
  %172 = load i32, i32* %23, align 4
  %173 = add nsw i32 %171, %172
  %174 = load i32, i32* %13, align 4
  %175 = mul nsw i32 %173, %174
  %176 = add nsw i32 %168, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %163, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = sub nsw i64 %162, %179
  %181 = call i32 @FFABS(i64 %180)
  %182 = sext i32 %181 to i64
  %183 = load i64, i64* %24, align 8
  %184 = add nsw i64 %183, %182
  store i64 %184, i64* %24, align 8
  br label %185

185:                                              ; preds = %145
  %186 = load i32, i32* %22, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %22, align 4
  br label %137

188:                                              ; preds = %137
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %23, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %23, align 4
  br label %123

192:                                              ; preds = %123
  %193 = load i64, i64* %24, align 8
  %194 = load i32, i32* %18, align 4
  %195 = sext i32 %194 to i64
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 7
  %198 = load i64, i64* %197, align 8
  %199 = sub nsw i64 %195, %198
  %200 = call i32 @FFABS(i64 %199)
  %201 = load i32, i32* %19, align 4
  %202 = sext i32 %201 to i64
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 6
  %205 = load i64, i64* %204, align 8
  %206 = sub nsw i64 %202, %205
  %207 = call i32 @FFABS(i64 %206)
  %208 = add nsw i32 %200, %207
  %209 = load i32, i32* @COST_PRED_SCALE, align 4
  %210 = mul nsw i32 %208, %209
  %211 = sext i32 %210 to i64
  %212 = add nsw i64 %193, %211
  ret i64 %212
}

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFABS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
