; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_minterpolate.c_get_sbad.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_minterpolate.c_get_sbad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64*, i64* }

@COST_PRED_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i32, i32, i32, i32)* @get_sbad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_sbad(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %20 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 9
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %11, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 8
  %26 = load i64*, i64** %25, align 8
  store i64* %26, i64** %12, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %15, align 4
  store i64 0, i64* %20, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @av_clip(i32 %36, i64 %39, i64 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @av_clip(i32 %44, i64 %47, i64 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %63, %65
  %67 = call i64 @FFMIN(i64 %60, i64 %66)
  %68 = sub nsw i64 0, %67
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 7
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = sub nsw i64 %77, %79
  %81 = call i64 @FFMIN(i64 %74, i64 %80)
  %82 = call i32 @av_clip(i32 %54, i64 %68, i64 %81)
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %8, align 4
  %85 = sub nsw i32 %83, %84
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %87, %90
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = sub nsw i64 %94, %96
  %98 = call i64 @FFMIN(i64 %91, i64 %97)
  %99 = sub nsw i64 0, %98
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %101, %104
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = sub nsw i64 %108, %110
  %112 = call i64 @FFMIN(i64 %105, i64 %111)
  %113 = call i32 @av_clip(i32 %85, i64 %99, i64 %112)
  store i32 %113, i32* %17, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %17, align 4
  %116 = add nsw i32 %114, %115
  %117 = load i32, i32* %13, align 4
  %118 = mul nsw i32 %116, %117
  %119 = load i64*, i64** %11, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  store i64* %121, i64** %11, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %17, align 4
  %124 = sub nsw i32 %122, %123
  %125 = load i32, i32* %13, align 4
  %126 = mul nsw i32 %124, %125
  %127 = load i64*, i64** %12, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  store i64* %129, i64** %12, align 8
  store i32 0, i32* %19, align 4
  br label %130

130:                                              ; preds = %179, %5
  %131 = load i32, i32* %19, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %182

136:                                              ; preds = %130
  store i32 0, i32* %18, align 4
  br label %137

137:                                              ; preds = %175, %136
  %138 = load i32, i32* %18, align 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %178

143:                                              ; preds = %137
  %144 = load i64*, i64** %11, align 8
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %16, align 4
  %147 = add nsw i32 %145, %146
  %148 = load i32, i32* %18, align 4
  %149 = add nsw i32 %147, %148
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* %13, align 4
  %152 = mul nsw i32 %150, %151
  %153 = add nsw i32 %149, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %144, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = load i64*, i64** %12, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %16, align 4
  %160 = sub nsw i32 %158, %159
  %161 = load i32, i32* %18, align 4
  %162 = add nsw i32 %160, %161
  %163 = load i32, i32* %19, align 4
  %164 = load i32, i32* %13, align 4
  %165 = mul nsw i32 %163, %164
  %166 = add nsw i32 %162, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %157, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = sub nsw i64 %156, %169
  %171 = call i32 @FFABS(i64 %170)
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* %20, align 8
  %174 = add nsw i64 %173, %172
  store i64 %174, i64* %20, align 8
  br label %175

175:                                              ; preds = %143
  %176 = load i32, i32* %18, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %18, align 4
  br label %137

178:                                              ; preds = %137
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %19, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %19, align 4
  br label %130

182:                                              ; preds = %130
  %183 = load i64, i64* %20, align 8
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = sub nsw i64 %185, %188
  %190 = call i32 @FFABS(i64 %189)
  %191 = load i32, i32* %15, align 4
  %192 = sext i32 %191 to i64
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = sub nsw i64 %192, %195
  %197 = call i32 @FFABS(i64 %196)
  %198 = add nsw i32 %190, %197
  %199 = load i32, i32* @COST_PRED_SCALE, align 4
  %200 = mul nsw i32 %198, %199
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %183, %201
  ret i64 %202
}

declare dso_local i32 @av_clip(i32, i64, i64) #1

declare dso_local i64 @FFMIN(i64, i64) #1

declare dso_local i32 @FFABS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
