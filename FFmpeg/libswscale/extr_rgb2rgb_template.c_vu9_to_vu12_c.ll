; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_rgb2rgb_template.c_vu9_to_vu12_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_rgb2rgb_template.c_vu9_to_vu12_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32)* @vu9_to_vu12_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vu9_to_vu12_c(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
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
  %29 = load i32, i32* %15, align 4
  %30 = sdiv i32 %29, 2
  store i32 %30, i32* %23, align 4
  %31 = load i32, i32* %16, align 4
  %32 = sdiv i32 %31, 2
  store i32 %32, i32* %24, align 4
  store i32 0, i32* %22, align 4
  br label %33

33:                                               ; preds = %76, %10
  %34 = load i32, i32* %22, align 4
  %35 = load i32, i32* %24, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %79

37:                                               ; preds = %33
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %22, align 4
  %41 = ashr i32 %40, 1
  %42 = mul nsw i32 %39, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  store i32* %44, i32** %25, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* %19, align 4
  %47 = load i32, i32* %22, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  store i32* %50, i32** %26, align 8
  store i32 0, i32* %21, align 4
  br label %51

51:                                               ; preds = %72, %37
  %52 = load i32, i32* %21, align 4
  %53 = load i32, i32* %23, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %51
  %56 = load i32*, i32** %25, align 8
  %57 = load i32, i32* %21, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %26, align 8
  %62 = load i32, i32* %21, align 4
  %63 = mul nsw i32 2, %62
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  store i32 %60, i32* %66, align 4
  %67 = load i32*, i32** %26, align 8
  %68 = load i32, i32* %21, align 4
  %69 = mul nsw i32 2, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  store i32 %60, i32* %71, align 4
  br label %72

72:                                               ; preds = %55
  %73 = load i32, i32* %21, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %21, align 4
  br label %51

75:                                               ; preds = %51
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %22, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %22, align 4
  br label %33

79:                                               ; preds = %33
  store i32 0, i32* %22, align 4
  br label %80

80:                                               ; preds = %123, %79
  %81 = load i32, i32* %22, align 4
  %82 = load i32, i32* %24, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %126

84:                                               ; preds = %80
  %85 = load i32*, i32** %12, align 8
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %22, align 4
  %88 = ashr i32 %87, 1
  %89 = mul nsw i32 %86, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %85, i64 %90
  store i32* %91, i32** %27, align 8
  %92 = load i32*, i32** %14, align 8
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %22, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  store i32* %97, i32** %28, align 8
  store i32 0, i32* %21, align 4
  br label %98

98:                                               ; preds = %119, %84
  %99 = load i32, i32* %21, align 4
  %100 = load i32, i32* %23, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %122

102:                                              ; preds = %98
  %103 = load i32*, i32** %27, align 8
  %104 = load i32, i32* %21, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %28, align 8
  %109 = load i32, i32* %21, align 4
  %110 = mul nsw i32 2, %109
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  store i32 %107, i32* %113, align 4
  %114 = load i32*, i32** %28, align 8
  %115 = load i32, i32* %21, align 4
  %116 = mul nsw i32 2, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  store i32 %107, i32* %118, align 4
  br label %119

119:                                              ; preds = %102
  %120 = load i32, i32* %21, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %21, align 4
  br label %98

122:                                              ; preds = %98
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %22, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %22, align 4
  br label %80

126:                                              ; preds = %80
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
