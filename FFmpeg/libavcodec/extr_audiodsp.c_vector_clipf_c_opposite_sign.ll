; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_audiodsp.c_vector_clipf_c_opposite_sign.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_audiodsp.c_vector_clipf_c_opposite_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, float*, i32)* @vector_clipf_c_opposite_sign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vector_clipf_c_opposite_sign(float* %0, float* %1, float* %2, float* %3, i32 %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load float*, float** %8, align 8
  %18 = bitcast float* %17 to i32*
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load float*, float** %9, align 8
  %21 = bitcast float* %20 to i32*
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = xor i32 %23, -2147483648
  store i32 %24, i32* %14, align 4
  %25 = load float*, float** %6, align 8
  %26 = bitcast float* %25 to i32*
  store i32* %26, i32** %15, align 8
  %27 = load float*, float** %7, align 8
  %28 = bitcast float* %27 to i32*
  store i32* %28, i32** %16, align 8
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %154, %5
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %157

33:                                               ; preds = %29
  %34 = load i32*, i32** %16, align 8
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 0
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @clipf_c_one(i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load i32*, i32** %15, align 8
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 0
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32 %43, i32* %48, align 4
  %49 = load i32*, i32** %16, align 8
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @clipf_c_one(i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = load i32*, i32** %15, align 8
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32 %58, i32* %63, align 4
  %64 = load i32*, i32** %16, align 8
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @clipf_c_one(i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = load i32*, i32** %15, align 8
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32 %73, i32* %78, align 4
  %79 = load i32*, i32** %16, align 8
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 3
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @clipf_c_one(i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = load i32*, i32** %15, align 8
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 3
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 %88, i32* %93, align 4
  %94 = load i32*, i32** %16, align 8
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @clipf_c_one(i32 %99, i32 %100, i32 %101, i32 %102)
  %104 = load i32*, i32** %15, align 8
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  store i32 %103, i32* %108, align 4
  %109 = load i32*, i32** %16, align 8
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 5
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @clipf_c_one(i32 %114, i32 %115, i32 %116, i32 %117)
  %119 = load i32*, i32** %15, align 8
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 5
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  store i32 %118, i32* %123, align 4
  %124 = load i32*, i32** %16, align 8
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 6
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %14, align 4
  %133 = call i32 @clipf_c_one(i32 %129, i32 %130, i32 %131, i32 %132)
  %134 = load i32*, i32** %15, align 8
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 6
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  store i32 %133, i32* %138, align 4
  %139 = load i32*, i32** %16, align 8
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 7
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @clipf_c_one(i32 %144, i32 %145, i32 %146, i32 %147)
  %149 = load i32*, i32** %15, align 8
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 7
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  store i32 %148, i32* %153, align 4
  br label %154

154:                                              ; preds = %33
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 8
  store i32 %156, i32* %11, align 4
  br label %29

157:                                              ; preds = %29
  ret void
}

declare dso_local i32 @clipf_c_one(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
