; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_removelogo.c_blur_pixel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_removelogo.c_blur_pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32***, i32*, i32, i32*, i32, i32, i32, i32, i32)* @blur_pixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blur_pixel(i32*** %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32***, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
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
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  store i32*** %0, i32**** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %18, align 4
  %32 = load i32, i32* %12, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* %17, align 4
  %35 = add nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %30, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %19, align 4
  %41 = sub nsw i32 %39, %40
  %42 = call i32 @FFMAX(i32 0, i32 %41)
  store i32 %42, i32* %20, align 4
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* %19, align 4
  %45 = sub nsw i32 %43, %44
  %46 = call i32 @FFMAX(i32 0, i32 %45)
  store i32 %46, i32* %21, align 4
  %47 = load i32, i32* %15, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %19, align 4
  %51 = add nsw i32 %49, %50
  %52 = call i32 @FFMIN(i32 %48, i32 %51)
  store i32 %52, i32* %22, align 4
  %53 = load i32, i32* %16, align 4
  %54 = sub nsw i32 %53, 1
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %19, align 4
  %57 = add nsw i32 %55, %56
  %58 = call i32 @FFMIN(i32 %54, i32 %57)
  store i32 %58, i32* %23, align 4
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %21, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load i32, i32* %20, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32* %67, i32** %28, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %21, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %20, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32* %76, i32** %29, align 8
  %77 = load i32, i32* %21, align 4
  store i32 %77, i32* %25, align 4
  br label %78

78:                                               ; preds = %145, %9
  %79 = load i32, i32* %25, align 4
  %80 = load i32, i32* %23, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %148

82:                                               ; preds = %78
  %83 = load i32, i32* %20, align 4
  store i32 %83, i32* %24, align 4
  br label %84

84:                                               ; preds = %123, %82
  %85 = load i32, i32* %24, align 4
  %86 = load i32, i32* %22, align 4
  %87 = icmp sle i32 %85, %86
  br i1 %87, label %88, label %126

88:                                               ; preds = %84
  %89 = load i32*, i32** %29, align 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %118, label %92

92:                                               ; preds = %88
  %93 = load i32***, i32**** %10, align 8
  %94 = load i32, i32* %19, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32**, i32*** %93, i64 %95
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %24, align 4
  %99 = load i32, i32* %20, align 4
  %100 = sub nsw i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %97, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %25, align 4
  %105 = load i32, i32* %21, align 4
  %106 = sub nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %92
  %112 = load i32*, i32** %28, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %26, align 4
  %115 = add i32 %114, %113
  store i32 %115, i32* %26, align 4
  %116 = load i32, i32* %27, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %27, align 4
  br label %118

118:                                              ; preds = %111, %92, %88
  %119 = load i32*, i32** %28, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %28, align 8
  %121 = load i32*, i32** %29, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %29, align 8
  br label %123

123:                                              ; preds = %118
  %124 = load i32, i32* %24, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %24, align 4
  br label %84

126:                                              ; preds = %84
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %22, align 4
  %129 = add nsw i32 %128, 1
  %130 = load i32, i32* %20, align 4
  %131 = sub nsw i32 %129, %130
  %132 = sub nsw i32 %127, %131
  %133 = load i32*, i32** %28, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32* %135, i32** %28, align 8
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %22, align 4
  %138 = add nsw i32 %137, 1
  %139 = load i32, i32* %20, align 4
  %140 = sub nsw i32 %138, %139
  %141 = sub nsw i32 %136, %140
  %142 = load i32*, i32** %29, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32* %144, i32** %29, align 8
  br label %145

145:                                              ; preds = %126
  %146 = load i32, i32* %25, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %25, align 4
  br label %78

148:                                              ; preds = %78
  %149 = load i32, i32* %27, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  br label %159

152:                                              ; preds = %148
  %153 = load i32, i32* %26, align 4
  %154 = load i32, i32* %27, align 4
  %155 = udiv i32 %154, 2
  %156 = add i32 %153, %155
  %157 = load i32, i32* %27, align 4
  %158 = udiv i32 %156, %157
  br label %159

159:                                              ; preds = %152, %151
  %160 = phi i32 [ 255, %151 ], [ %158, %152 ]
  ret i32 %160
}

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
