; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_image.c_upscale_image.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_image.c_upscale_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.texture_image = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.texture_image*, %struct.texture_image*)* @upscale_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upscale_image(i32 %0, %struct.texture_image* %1, %struct.texture_image* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.texture_image*, align 8
  %7 = alloca %struct.texture_image*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.texture_image* %1, %struct.texture_image** %6, align 8
  store %struct.texture_image* %2, %struct.texture_image** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ult i32 %14, 1
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load %struct.texture_image*, %struct.texture_image** %6, align 8
  %18 = icmp ne %struct.texture_image* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.texture_image*, %struct.texture_image** %7, align 8
  %21 = icmp ne %struct.texture_image* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %16, %3
  store i32 0, i32* %4, align 4
  br label %142

23:                                               ; preds = %19
  %24 = load %struct.texture_image*, %struct.texture_image** %6, align 8
  %25 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.texture_image*, %struct.texture_image** %6, align 8
  %30 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.texture_image*, %struct.texture_image** %6, align 8
  %35 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %28, %23
  store i32 0, i32* %4, align 4
  br label %142

39:                                               ; preds = %33
  %40 = load %struct.texture_image*, %struct.texture_image** %6, align 8
  %41 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = mul i32 %42, %43
  %45 = load %struct.texture_image*, %struct.texture_image** %7, align 8
  %46 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.texture_image*, %struct.texture_image** %6, align 8
  %48 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = mul i32 %49, %50
  %52 = load %struct.texture_image*, %struct.texture_image** %7, align 8
  %53 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.texture_image*, %struct.texture_image** %7, align 8
  %55 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.texture_image*, %struct.texture_image** %7, align 8
  %58 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %56, %59
  %61 = call i64 @calloc(i32 %60, i32 4)
  %62 = inttoptr i64 %61 to i32*
  %63 = load %struct.texture_image*, %struct.texture_image** %7, align 8
  %64 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %63, i32 0, i32 0
  store i32* %62, i32** %64, align 8
  %65 = load %struct.texture_image*, %struct.texture_image** %7, align 8
  %66 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %142

70:                                               ; preds = %39
  %71 = load %struct.texture_image*, %struct.texture_image** %6, align 8
  %72 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = shl i32 %73, 16
  %75 = load %struct.texture_image*, %struct.texture_image** %7, align 8
  %76 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sdiv i32 %74, %77
  store i32 %78, i32* %8, align 4
  %79 = load %struct.texture_image*, %struct.texture_image** %6, align 8
  %80 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 16
  %83 = load %struct.texture_image*, %struct.texture_image** %7, align 8
  %84 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %82, %85
  store i32 %86, i32* %9, align 4
  store i32 0, i32* %13, align 4
  br label %87

87:                                               ; preds = %138, %70
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.texture_image*, %struct.texture_image** %7, align 8
  %90 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp ult i32 %88, %91
  br i1 %92, label %93, label %141

93:                                               ; preds = %87
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %9, align 4
  %96 = mul i32 %94, %95
  %97 = lshr i32 %96, 16
  store i32 %97, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %98

98:                                               ; preds = %134, %93
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.texture_image*, %struct.texture_image** %7, align 8
  %101 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp ult i32 %99, %102
  br i1 %103, label %104, label %137

104:                                              ; preds = %98
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %8, align 4
  %107 = mul i32 %105, %106
  %108 = lshr i32 %107, 16
  store i32 %108, i32* %10, align 4
  %109 = load %struct.texture_image*, %struct.texture_image** %6, align 8
  %110 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.texture_image*, %struct.texture_image** %6, align 8
  %114 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = mul i32 %112, %115
  %117 = load i32, i32* %10, align 4
  %118 = add i32 %116, %117
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %111, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.texture_image*, %struct.texture_image** %7, align 8
  %123 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = load %struct.texture_image*, %struct.texture_image** %7, align 8
  %127 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = mul i32 %125, %128
  %130 = load i32, i32* %12, align 4
  %131 = add i32 %129, %130
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %124, i64 %132
  store i32 %121, i32* %133, align 4
  br label %134

134:                                              ; preds = %104
  %135 = load i32, i32* %12, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %12, align 4
  br label %98

137:                                              ; preds = %98
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %13, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %13, align 4
  br label %87

141:                                              ; preds = %87
  store i32 1, i32* %4, align 4
  br label %142

142:                                              ; preds = %141, %69, %38, %22
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
