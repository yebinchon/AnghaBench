; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_alacenc.c_estimate_stereo_mode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_alacenc.c_estimate_stereo_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @estimate_stereo_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @estimate_stereo_mode(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i64], align 16
  %12 = alloca [4 x i64], align 16
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 3
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 2
  store i64 0, i64* %14, align 16
  %15 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 1
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  store i64 0, i64* %16, align 16
  store i32 2, i32* %7, align 4
  br label %17

17:                                               ; preds = %87, %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %90

21:                                               ; preds = %17
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 2, %32
  %34 = sub nsw i32 %26, %33
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %34, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 2, %52
  %54 = sub nsw i32 %46, %53
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %54, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %62, %63
  %65 = ashr i32 %64, 1
  %66 = call i64 @FFABS(i32 %65)
  %67 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 2
  %68 = load i64, i64* %67, align 16
  %69 = add nsw i64 %68, %66
  store i64 %69, i64* %67, align 16
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %70, %71
  %73 = call i64 @FFABS(i32 %72)
  %74 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 3
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, %73
  store i64 %76, i64* %74, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i64 @FFABS(i32 %77)
  %79 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %80 = load i64, i64* %79, align 16
  %81 = add nsw i64 %80, %78
  store i64 %81, i64* %79, align 16
  %82 = load i32, i32* %10, align 4
  %83 = call i64 @FFABS(i32 %82)
  %84 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %83
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %21
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %17

90:                                               ; preds = %17
  %91 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %92 = load i64, i64* %91, align 16
  %93 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %92, %94
  %96 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %95, i64* %96, align 16
  %97 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %98 = load i64, i64* %97, align 16
  %99 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 3
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %98, %100
  %102 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  store i64 %101, i64* %102, align 8
  %103 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 1
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 3
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %104, %106
  %108 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  store i64 %107, i64* %108, align 16
  %109 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 2
  %110 = load i64, i64* %109, align 16
  %111 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 3
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %110, %112
  %114 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 3
  store i64 %113, i64* %114, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %115

115:                                              ; preds = %131, %90
  %116 = load i32, i32* %7, align 4
  %117 = icmp slt i32 %116, 4
  br i1 %117, label %118, label %134

118:                                              ; preds = %115
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = icmp slt i64 %122, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %118
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %128, %118
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %7, align 4
  br label %115

134:                                              ; preds = %115
  %135 = load i32, i32* %8, align 4
  ret i32 %135
}

declare dso_local i64 @FFABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
