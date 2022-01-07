; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_anatoliy.c_calc_plane_dct.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_anatoliy.c_calc_plane_dct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32, i32)* @calc_plane_dct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_plane_dct(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32*, i32** %10, align 8
  store i32* %17, i32** %15, align 8
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %68, label %20

20:                                               ; preds = %7
  store i32 0, i32* %16, align 4
  br label %21

21:                                               ; preds = %64, %20
  %22 = load i32, i32* %16, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %67

25:                                               ; preds = %21
  %26 = load i32*, i32** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32*, i32** %15, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = call i32 @fdct_get(i32* %26, i32* %27, i32 %28, i32* %30)
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 16
  %35 = load i32, i32* %11, align 4
  %36 = load i32*, i32** %15, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 64
  %38 = call i32 @fdct_get(i32* %32, i32* %34, i32 %35, i32* %37)
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = mul nsw i32 8, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %11, align 4
  %46 = load i32*, i32** %15, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 128
  %48 = call i32 @fdct_get(i32* %39, i32* %44, i32 %45, i32* %47)
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 16
  %52 = load i32, i32* %11, align 4
  %53 = mul nsw i32 8, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %11, align 4
  %57 = load i32*, i32** %15, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 192
  %59 = call i32 @fdct_get(i32* %49, i32* %55, i32 %56, i32* %58)
  %60 = load i32*, i32** %15, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 256
  store i32* %61, i32** %15, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 32
  store i32* %63, i32** %9, align 8
  br label %64

64:                                               ; preds = %25
  %65 = load i32, i32* %16, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %16, align 4
  br label %21

67:                                               ; preds = %21
  br label %153

68:                                               ; preds = %7
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %104

71:                                               ; preds = %68
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %104

74:                                               ; preds = %71
  store i32 0, i32* %16, align 4
  br label %75

75:                                               ; preds = %100, %74
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %103

79:                                               ; preds = %75
  %80 = load i32*, i32** %8, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32*, i32** %15, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = call i32 @fdct_get(i32* %80, i32* %81, i32 %82, i32* %84)
  %86 = load i32*, i32** %8, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %11, align 4
  %89 = mul nsw i32 8, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %11, align 4
  %93 = load i32*, i32** %15, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 64
  %95 = call i32 @fdct_get(i32* %86, i32* %91, i32 %92, i32* %94)
  %96 = load i32*, i32** %15, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 128
  store i32* %97, i32** %15, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 16
  store i32* %99, i32** %9, align 8
  br label %100

100:                                              ; preds = %79
  %101 = load i32, i32* %16, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %16, align 4
  br label %75

103:                                              ; preds = %75
  br label %152

104:                                              ; preds = %71, %68
  store i32 0, i32* %16, align 4
  br label %105

105:                                              ; preds = %148, %104
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %151

109:                                              ; preds = %105
  %110 = load i32*, i32** %8, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load i32*, i32** %15, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = call i32 @fdct_get(i32* %110, i32* %111, i32 %112, i32* %114)
  %116 = load i32*, i32** %8, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %11, align 4
  %119 = mul nsw i32 8, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %11, align 4
  %123 = load i32*, i32** %15, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 64
  %125 = call i32 @fdct_get(i32* %116, i32* %121, i32 %122, i32* %124)
  %126 = load i32*, i32** %8, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 16
  %129 = load i32, i32* %11, align 4
  %130 = load i32*, i32** %15, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 128
  %132 = call i32 @fdct_get(i32* %126, i32* %128, i32 %129, i32* %131)
  %133 = load i32*, i32** %8, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 16
  %136 = load i32, i32* %11, align 4
  %137 = mul nsw i32 8, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %11, align 4
  %141 = load i32*, i32** %15, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 192
  %143 = call i32 @fdct_get(i32* %133, i32* %139, i32 %140, i32* %142)
  %144 = load i32*, i32** %15, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 256
  store i32* %145, i32** %15, align 8
  %146 = load i32*, i32** %9, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 32
  store i32* %147, i32** %9, align 8
  br label %148

148:                                              ; preds = %109
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %16, align 4
  br label %105

151:                                              ; preds = %105
  br label %152

152:                                              ; preds = %151, %103
  br label %153

153:                                              ; preds = %152, %67
  ret void
}

declare dso_local i32 @fdct_get(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
