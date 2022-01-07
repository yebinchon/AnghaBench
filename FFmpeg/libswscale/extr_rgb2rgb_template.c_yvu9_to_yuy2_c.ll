; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_rgb2rgb_template.c_yvu9_to_yuy2_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_rgb2rgb_template.c_yvu9_to_yuy2_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32)* @yvu9_to_yuy2_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yvu9_to_yuy2_c(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
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
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %30 = load i32, i32* %15, align 4
  %31 = sdiv i32 %30, 2
  store i32 %31, i32* %23, align 4
  %32 = load i32, i32* %16, align 4
  store i32 %32, i32* %24, align 4
  store i32 0, i32* %22, align 4
  br label %33

33:                                               ; preds = %166, %10
  %34 = load i32, i32* %22, align 4
  %35 = load i32, i32* %24, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %169

37:                                               ; preds = %33
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %22, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  store i32* %43, i32** %25, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %18, align 4
  %46 = load i32, i32* %22, align 4
  %47 = ashr i32 %46, 2
  %48 = mul nsw i32 %45, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %44, i64 %49
  store i32* %50, i32** %26, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* %22, align 4
  %54 = ashr i32 %53, 2
  %55 = mul nsw i32 %52, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  store i32* %57, i32** %27, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* %22, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  store i32* %63, i32** %28, align 8
  store i32 0, i32* %21, align 4
  br label %64

64:                                               ; preds = %162, %37
  %65 = load i32, i32* %21, align 4
  %66 = load i32, i32* %23, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %165

68:                                               ; preds = %64
  %69 = load i32, i32* %21, align 4
  %70 = shl i32 %69, 2
  store i32 %70, i32* %29, align 4
  %71 = load i32*, i32** %25, align 8
  %72 = load i32, i32* %29, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %28, align 8
  %77 = load i32, i32* %21, align 4
  %78 = mul nsw i32 8, %77
  %79 = add nsw i32 %78, 0
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  store i32 %75, i32* %81, align 4
  %82 = load i32*, i32** %26, align 8
  %83 = load i32, i32* %21, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %28, align 8
  %88 = load i32, i32* %21, align 4
  %89 = mul nsw i32 8, %88
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  store i32 %86, i32* %92, align 4
  %93 = load i32*, i32** %25, align 8
  %94 = load i32, i32* %29, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %28, align 8
  %100 = load i32, i32* %21, align 4
  %101 = mul nsw i32 8, %100
  %102 = add nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %99, i64 %103
  store i32 %98, i32* %104, align 4
  %105 = load i32*, i32** %27, align 8
  %106 = load i32, i32* %21, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %28, align 8
  %111 = load i32, i32* %21, align 4
  %112 = mul nsw i32 8, %111
  %113 = add nsw i32 %112, 3
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  store i32 %109, i32* %115, align 4
  %116 = load i32*, i32** %25, align 8
  %117 = load i32, i32* %29, align 4
  %118 = add nsw i32 %117, 2
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %28, align 8
  %123 = load i32, i32* %21, align 4
  %124 = mul nsw i32 8, %123
  %125 = add nsw i32 %124, 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  store i32 %121, i32* %127, align 4
  %128 = load i32*, i32** %26, align 8
  %129 = load i32, i32* %21, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %28, align 8
  %134 = load i32, i32* %21, align 4
  %135 = mul nsw i32 8, %134
  %136 = add nsw i32 %135, 5
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %133, i64 %137
  store i32 %132, i32* %138, align 4
  %139 = load i32*, i32** %25, align 8
  %140 = load i32, i32* %29, align 4
  %141 = add nsw i32 %140, 3
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %28, align 8
  %146 = load i32, i32* %21, align 4
  %147 = mul nsw i32 8, %146
  %148 = add nsw i32 %147, 6
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %145, i64 %149
  store i32 %144, i32* %150, align 4
  %151 = load i32*, i32** %27, align 8
  %152 = load i32, i32* %21, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %28, align 8
  %157 = load i32, i32* %21, align 4
  %158 = mul nsw i32 8, %157
  %159 = add nsw i32 %158, 7
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %156, i64 %160
  store i32 %155, i32* %161, align 4
  br label %162

162:                                              ; preds = %68
  %163 = load i32, i32* %21, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %21, align 4
  br label %64

165:                                              ; preds = %64
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %22, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %22, align 4
  br label %33

169:                                              ; preds = %33
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
