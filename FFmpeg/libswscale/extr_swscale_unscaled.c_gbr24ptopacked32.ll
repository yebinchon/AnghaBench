; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_gbr24ptopacked32.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_gbr24ptopacked32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32*, i32*, i32, i32, i32, i32)* @gbr24ptopacked32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gbr24ptopacked32(i32** %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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

19:                                               ; preds = %131, %7
  %20 = load i32, i32* %16, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %134

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
  br i1 %31, label %32, label %71

32:                                               ; preds = %23
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %67, %32
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %70

37:                                               ; preds = %33
  %38 = load i32*, i32** %18, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %18, align 8
  store i32 255, i32* %38, align 4
  %40 = load i32**, i32*** %8, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %18, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %18, align 8
  store i32 %46, i32* %47, align 4
  %49 = load i32**, i32*** %8, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %18, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %18, align 8
  store i32 %55, i32* %56, align 4
  %58 = load i32**, i32*** %8, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %18, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %18, align 8
  store i32 %64, i32* %65, align 4
  br label %67

67:                                               ; preds = %37
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %15, align 4
  br label %33

70:                                               ; preds = %33
  br label %110

71:                                               ; preds = %23
  store i32 0, i32* %15, align 4
  br label %72

72:                                               ; preds = %106, %71
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %109

76:                                               ; preds = %72
  %77 = load i32**, i32*** %8, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %18, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %18, align 8
  store i32 %83, i32* %84, align 4
  %86 = load i32**, i32*** %8, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %18, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %18, align 8
  store i32 %92, i32* %93, align 4
  %95 = load i32**, i32*** %8, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %18, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %18, align 8
  store i32 %101, i32* %102, align 4
  %104 = load i32*, i32** %18, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %18, align 8
  store i32 255, i32* %104, align 4
  br label %106

106:                                              ; preds = %76
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %15, align 4
  br label %72

109:                                              ; preds = %72
  br label %110

110:                                              ; preds = %109, %70
  store i32 0, i32* %17, align 4
  br label %111

111:                                              ; preds = %127, %110
  %112 = load i32, i32* %17, align 4
  %113 = icmp slt i32 %112, 3
  br i1 %113, label %114, label %130

114:                                              ; preds = %111
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* %17, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32**, i32*** %8, align 8
  %121 = load i32, i32* %17, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = sext i32 %119 to i64
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32* %126, i32** %123, align 8
  br label %127

127:                                              ; preds = %114
  %128 = load i32, i32* %17, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %17, align 4
  br label %111

130:                                              ; preds = %111
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %16, align 4
  br label %19

134:                                              ; preds = %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
