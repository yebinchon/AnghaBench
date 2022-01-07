; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_window.c__vorbis_apply_window.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_window.c__vorbis_apply_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vwin = common dso_local global float** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_vorbis_apply_window(float* %0, i32* %1, i64* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store float* %0, float** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* %10, align 4
  br label %29

28:                                               ; preds = %6
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %12, align 4
  br label %36

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  store i32 %37, i32* %12, align 4
  %38 = load float**, float*** @vwin, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float*, float** %38, i64 %44
  %46 = load float*, float** %45, align 8
  store float* %46, float** %13, align 8
  %47 = load float**, float*** @vwin, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float*, float** %47, i64 %53
  %55 = load float*, float** %54, align 8
  store float* %55, float** %14, align 8
  %56 = load i64*, i64** %9, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %15, align 8
  %61 = load i64*, i64** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %16, align 8
  %66 = load i64*, i64** %9, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %17, align 8
  %71 = load i64, i64* %15, align 8
  %72 = sdiv i64 %71, 4
  %73 = load i64, i64* %16, align 8
  %74 = sdiv i64 %73, 4
  %75 = sub nsw i64 %72, %74
  store i64 %75, i64* %18, align 8
  %76 = load i64, i64* %18, align 8
  %77 = load i64, i64* %16, align 8
  %78 = sdiv i64 %77, 2
  %79 = add nsw i64 %76, %78
  store i64 %79, i64* %19, align 8
  %80 = load i64, i64* %15, align 8
  %81 = sdiv i64 %80, 2
  %82 = load i64, i64* %15, align 8
  %83 = sdiv i64 %82, 4
  %84 = add nsw i64 %81, %83
  %85 = load i64, i64* %17, align 8
  %86 = sdiv i64 %85, 4
  %87 = sub nsw i64 %84, %86
  store i64 %87, i64* %20, align 8
  %88 = load i64, i64* %20, align 8
  %89 = load i64, i64* %17, align 8
  %90 = sdiv i64 %89, 2
  %91 = add nsw i64 %88, %90
  store i64 %91, i64* %21, align 8
  store i32 0, i32* %22, align 4
  br label %92

92:                                               ; preds = %102, %36
  %93 = load i32, i32* %22, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %18, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load float*, float** %7, align 8
  %99 = load i32, i32* %22, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %98, i64 %100
  store float 0.000000e+00, float* %101, align 4
  br label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %22, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %22, align 4
  br label %92

105:                                              ; preds = %92
  store i32 0, i32* %23, align 4
  br label %106

106:                                              ; preds = %123, %105
  %107 = load i32, i32* %22, align 4
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* %19, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %106
  %112 = load float*, float** %13, align 8
  %113 = load i32, i32* %23, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %112, i64 %114
  %116 = load float, float* %115, align 4
  %117 = load float*, float** %7, align 8
  %118 = load i32, i32* %22, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %117, i64 %119
  %121 = load float, float* %120, align 4
  %122 = fmul float %121, %116
  store float %122, float* %120, align 4
  br label %123

123:                                              ; preds = %111
  %124 = load i32, i32* %22, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %22, align 4
  %126 = load i32, i32* %23, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %23, align 4
  br label %106

128:                                              ; preds = %106
  %129 = load i64, i64* %20, align 8
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %22, align 4
  %131 = load i64, i64* %17, align 8
  %132 = sdiv i64 %131, 2
  %133 = sub nsw i64 %132, 1
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %23, align 4
  br label %135

135:                                              ; preds = %152, %128
  %136 = load i32, i32* %22, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* %21, align 8
  %139 = icmp slt i64 %137, %138
  br i1 %139, label %140, label %157

140:                                              ; preds = %135
  %141 = load float*, float** %14, align 8
  %142 = load i32, i32* %23, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %141, i64 %143
  %145 = load float, float* %144, align 4
  %146 = load float*, float** %7, align 8
  %147 = load i32, i32* %22, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %146, i64 %148
  %150 = load float, float* %149, align 4
  %151 = fmul float %150, %145
  store float %151, float* %149, align 4
  br label %152

152:                                              ; preds = %140
  %153 = load i32, i32* %22, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %22, align 4
  %155 = load i32, i32* %23, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %23, align 4
  br label %135

157:                                              ; preds = %135
  br label %158

158:                                              ; preds = %168, %157
  %159 = load i32, i32* %22, align 4
  %160 = sext i32 %159 to i64
  %161 = load i64, i64* %15, align 8
  %162 = icmp slt i64 %160, %161
  br i1 %162, label %163, label %171

163:                                              ; preds = %158
  %164 = load float*, float** %7, align 8
  %165 = load i32, i32* %22, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, float* %164, i64 %166
  store float 0.000000e+00, float* %167, align 4
  br label %168

168:                                              ; preds = %163
  %169 = load i32, i32* %22, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %22, align 4
  br label %158

171:                                              ; preds = %158
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
