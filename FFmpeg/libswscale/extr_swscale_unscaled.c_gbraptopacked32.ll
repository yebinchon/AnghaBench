; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_gbraptopacked32.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_gbraptopacked32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32*, i32*, i32, i32, i32, i32)* @gbraptopacked32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gbraptopacked32(i32** %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %19

19:                                               ; preds = %145, %7
  %20 = load i32, i32* %16, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %148

23:                                               ; preds = %19
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %16, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  store i32* %29, i32** %18, align 8
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %78

32:                                               ; preds = %23
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %74, %32
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %77

37:                                               ; preds = %33
  %38 = load i32**, i32*** %8, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %18, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %18, align 8
  store i32 %44, i32* %45, align 4
  %47 = load i32**, i32*** %8, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %18, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %18, align 8
  store i32 %53, i32* %54, align 4
  %56 = load i32**, i32*** %8, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %18, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %18, align 8
  store i32 %62, i32* %63, align 4
  %65 = load i32**, i32*** %8, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %18, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %18, align 8
  store i32 %71, i32* %72, align 4
  br label %74

74:                                               ; preds = %37
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %15, align 4
  br label %33

77:                                               ; preds = %33
  br label %124

78:                                               ; preds = %23
  store i32 0, i32* %15, align 4
  br label %79

79:                                               ; preds = %120, %78
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %123

83:                                               ; preds = %79
  %84 = load i32**, i32*** %8, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %18, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %18, align 8
  store i32 %90, i32* %91, align 4
  %93 = load i32**, i32*** %8, align 8
  %94 = getelementptr inbounds i32*, i32** %93, i64 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %18, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %18, align 8
  store i32 %99, i32* %100, align 4
  %102 = load i32**, i32*** %8, align 8
  %103 = getelementptr inbounds i32*, i32** %102, i64 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %18, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %18, align 8
  store i32 %108, i32* %109, align 4
  %111 = load i32**, i32*** %8, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 3
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %18, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %18, align 8
  store i32 %117, i32* %118, align 4
  br label %120

120:                                              ; preds = %83
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %15, align 4
  br label %79

123:                                              ; preds = %79
  br label %124

124:                                              ; preds = %123, %77
  store i32 0, i32* %17, align 4
  br label %125

125:                                              ; preds = %141, %124
  %126 = load i32, i32* %17, align 4
  %127 = icmp slt i32 %126, 4
  br i1 %127, label %128, label %144

128:                                              ; preds = %125
  %129 = load i32*, i32** %9, align 8
  %130 = load i32, i32* %17, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32**, i32*** %8, align 8
  %135 = load i32, i32* %17, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32*, i32** %134, i64 %136
  %138 = load i32*, i32** %137, align 8
  %139 = sext i32 %133 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %137, align 8
  br label %141

141:                                              ; preds = %128
  %142 = load i32, i32* %17, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %17, align 4
  br label %125

144:                                              ; preds = %125
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %16, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %16, align 4
  br label %19

148:                                              ; preds = %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
