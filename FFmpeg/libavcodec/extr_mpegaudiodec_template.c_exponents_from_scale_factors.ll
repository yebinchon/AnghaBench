; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudiodec_template.c_exponents_from_scale_factors.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudiodec_template.c_exponents_from_scale_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i32*, i32, i32* }

@band_size_long = common dso_local global i32** null, align 8
@mpa_pretab = common dso_local global i32** null, align 8
@band_size_short = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*, i32*)* @exponents_from_scale_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exponents_from_scale_factors(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [3 x i32], align 4
  %18 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32* %2, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  store i32* %19, i32** %18, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 210
  store i32 %23, i32* %16, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %15, align 4
  %28 = load i32**, i32*** @band_size_long, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32*, i32** %28, i64 %31
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %7, align 8
  %34 = load i32**, i32*** @mpa_pretab, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32*, i32** %34, i64 %37
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %8, align 8
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %82, %3
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %85

46:                                               ; preds = %40
  %47 = load i32, i32* %16, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %54, %59
  %61 = load i32, i32* %15, align 4
  %62 = shl i32 %60, %61
  %63 = sub nsw i32 %47, %62
  %64 = add nsw i32 %63, 400
  store i32 %64, i32* %14, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %78, %46
  %72 = load i32, i32* %11, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i32, i32* %14, align 4
  %76 = load i32*, i32** %18, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %18, align 8
  store i32 %75, i32* %76, align 4
  br label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %11, align 4
  br label %71

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %40

85:                                               ; preds = %40
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %88, 13
  br i1 %89, label %90, label %179

90:                                               ; preds = %85
  %91 = load i32**, i32*** @band_size_short, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i32*, i32** %91, i64 %94
  %96 = load i32*, i32** %95, align 8
  store i32* %96, i32** %7, align 8
  %97 = load i32, i32* %16, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 6
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 3
  %104 = sub nsw i32 %97, %103
  %105 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %16, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 6
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 3
  %113 = sub nsw i32 %106, %112
  %114 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* %16, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 6
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 3
  %122 = sub nsw i32 %115, %121
  %123 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 2
  store i32 %122, i32* %123, align 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %12, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %175, %90
  %131 = load i32, i32* %10, align 4
  %132 = icmp slt i32 %131, 13
  br i1 %132, label %133, label %178

133:                                              ; preds = %130
  %134 = load i32*, i32** %7, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %9, align 4
  store i32 0, i32* %13, align 4
  br label %139

139:                                              ; preds = %171, %133
  %140 = load i32, i32* %13, align 4
  %141 = icmp slt i32 %140, 3
  br i1 %141, label %142, label %174

142:                                              ; preds = %139
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %12, align 4
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %15, align 4
  %156 = shl i32 %154, %155
  %157 = sub nsw i32 %146, %156
  %158 = add nsw i32 %157, 400
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %9, align 4
  store i32 %159, i32* %11, align 4
  br label %160

160:                                              ; preds = %167, %142
  %161 = load i32, i32* %11, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %160
  %164 = load i32, i32* %14, align 4
  %165 = load i32*, i32** %18, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %166, i32** %18, align 8
  store i32 %164, i32* %165, align 4
  br label %167

167:                                              ; preds = %163
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %11, align 4
  br label %160

170:                                              ; preds = %160
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %13, align 4
  br label %139

174:                                              ; preds = %139
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %10, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %10, align 4
  br label %130

178:                                              ; preds = %130
  br label %179

179:                                              ; preds = %178, %85
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
