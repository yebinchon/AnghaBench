; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_rgb2rgb_template.c_uyvytoyv12_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_rgb2rgb_template.c_uyvytoyv12_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32)* @uyvytoyv12_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uyvytoyv12_c(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %22 = load i32, i32* %14, align 4
  %23 = ashr i32 %22, 1
  store i32 %23, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %24

24:                                               ; preds = %145, %9
  %25 = load i32, i32* %19, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %148

28:                                               ; preds = %24
  store i32 0, i32* %21, align 4
  br label %29

29:                                               ; preds = %82, %28
  %30 = load i32, i32* %21, align 4
  %31 = load i32, i32* %20, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %85

33:                                               ; preds = %29
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %21, align 4
  %36 = mul nsw i32 4, %35
  %37 = add nsw i32 %36, 0
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %21, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %21, align 4
  %47 = mul nsw i32 4, %46
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %21, align 4
  %54 = mul nsw i32 2, %53
  %55 = add nsw i32 %54, 0
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  store i32 %51, i32* %57, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %21, align 4
  %60 = mul nsw i32 4, %59
  %61 = add nsw i32 %60, 2
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* %21, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %64, i32* %68, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %21, align 4
  %71 = mul nsw i32 4, %70
  %72 = add nsw i32 %71, 3
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %21, align 4
  %78 = mul nsw i32 2, %77
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  store i32 %75, i32* %81, align 4
  br label %82

82:                                               ; preds = %33
  %83 = load i32, i32* %21, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %21, align 4
  br label %29

85:                                               ; preds = %29
  %86 = load i32, i32* %16, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %11, align 8
  %90 = load i32, i32* %18, align 4
  %91 = load i32*, i32** %10, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %10, align 8
  store i32 0, i32* %21, align 4
  br label %94

94:                                               ; preds = %125, %85
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* %20, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %128

98:                                               ; preds = %94
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* %21, align 4
  %101 = mul nsw i32 4, %100
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %99, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = load i32, i32* %21, align 4
  %108 = mul nsw i32 2, %107
  %109 = add nsw i32 %108, 0
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  store i32 %105, i32* %111, align 4
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %21, align 4
  %114 = mul nsw i32 4, %113
  %115 = add nsw i32 %114, 3
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %11, align 8
  %120 = load i32, i32* %21, align 4
  %121 = mul nsw i32 2, %120
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %119, i64 %123
  store i32 %118, i32* %124, align 4
  br label %125

125:                                              ; preds = %98
  %126 = load i32, i32* %21, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %21, align 4
  br label %94

128:                                              ; preds = %94
  %129 = load i32, i32* %17, align 4
  %130 = load i32*, i32** %12, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32* %132, i32** %12, align 8
  %133 = load i32, i32* %17, align 4
  %134 = load i32*, i32** %13, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32* %136, i32** %13, align 8
  %137 = load i32, i32* %16, align 4
  %138 = load i32*, i32** %11, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %11, align 8
  %141 = load i32, i32* %18, align 4
  %142 = load i32*, i32** %10, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32* %144, i32** %10, align 8
  br label %145

145:                                              ; preds = %128
  %146 = load i32, i32* %19, align 4
  %147 = add nsw i32 %146, 2
  store i32 %147, i32* %19, align 4
  br label %24

148:                                              ; preds = %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
