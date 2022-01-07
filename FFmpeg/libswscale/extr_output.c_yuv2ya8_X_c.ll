; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_output.c_yuv2ya8_X_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_output.c_yuv2ya8_X_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32**, i32, i32*, i32**, i32**, i32, i32**, i32*, i32, i32)* @yuv2ya8_X_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yuv2ya8_X_c(i32* %0, i32* %1, i32** %2, i32 %3, i32* %4, i32** %5, i32** %6, i32 %7, i32** %8, i32* %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32**, align 8
  %19 = alloca i32**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32**, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32** %2, i32*** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32* %4, i32** %17, align 8
  store i32** %5, i32*** %18, align 8
  store i32** %6, i32*** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32** %8, i32*** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %30 = load i32**, i32*** %21, align 8
  %31 = icmp ne i32** %30, null
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %35

35:                                               ; preds = %133, %12
  %36 = load i32, i32* %26, align 4
  %37 = load i32, i32* %23, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %136

39:                                               ; preds = %35
  store i32 262144, i32* %28, align 4
  store i32 262144, i32* %29, align 4
  store i32 0, i32* %27, align 4
  br label %40

40:                                               ; preds = %62, %39
  %41 = load i32, i32* %27, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = load i32**, i32*** %15, align 8
  %46 = load i32, i32* %27, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %26, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %14, align 8
  %55 = load i32, i32* %27, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %53, %58
  %60 = load i32, i32* %28, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %28, align 4
  br label %62

62:                                               ; preds = %44
  %63 = load i32, i32* %27, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %27, align 4
  br label %40

65:                                               ; preds = %40
  %66 = load i32, i32* %28, align 4
  %67 = ashr i32 %66, 19
  store i32 %67, i32* %28, align 4
  %68 = load i32, i32* %28, align 4
  %69 = and i32 %68, 256
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* %28, align 4
  %73 = call i32 @av_clip_uint8(i32 %72)
  store i32 %73, i32* %28, align 4
  br label %74

74:                                               ; preds = %71, %65
  %75 = load i32, i32* %25, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %113

77:                                               ; preds = %74
  store i32 0, i32* %27, align 4
  br label %78

78:                                               ; preds = %100, %77
  %79 = load i32, i32* %27, align 4
  %80 = load i32, i32* %16, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %103

82:                                               ; preds = %78
  %83 = load i32**, i32*** %21, align 8
  %84 = load i32, i32* %27, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %26, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %14, align 8
  %93 = load i32, i32* %27, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %91, %96
  %98 = load i32, i32* %29, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %29, align 4
  br label %100

100:                                              ; preds = %82
  %101 = load i32, i32* %27, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %27, align 4
  br label %78

103:                                              ; preds = %78
  %104 = load i32, i32* %29, align 4
  %105 = ashr i32 %104, 19
  store i32 %105, i32* %29, align 4
  %106 = load i32, i32* %29, align 4
  %107 = and i32 %106, 256
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load i32, i32* %29, align 4
  %111 = call i32 @av_clip_uint8(i32 %110)
  store i32 %111, i32* %29, align 4
  br label %112

112:                                              ; preds = %109, %103
  br label %113

113:                                              ; preds = %112, %74
  %114 = load i32, i32* %28, align 4
  %115 = load i32*, i32** %22, align 8
  %116 = load i32, i32* %26, align 4
  %117 = mul nsw i32 2, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  store i32 %114, i32* %119, align 4
  %120 = load i32, i32* %25, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = load i32, i32* %29, align 4
  br label %125

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124, %122
  %126 = phi i32 [ %123, %122 ], [ 255, %124 ]
  %127 = load i32*, i32** %22, align 8
  %128 = load i32, i32* %26, align 4
  %129 = mul nsw i32 2, %128
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  store i32 %126, i32* %132, align 4
  br label %133

133:                                              ; preds = %125
  %134 = load i32, i32* %26, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %26, align 4
  br label %35

136:                                              ; preds = %35
  ret void
}

declare dso_local i32 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
