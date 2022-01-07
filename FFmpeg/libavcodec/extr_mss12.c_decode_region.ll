; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss12.c_decode_region.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss12.c_decode_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32*)* @decode_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_region(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = load i32, i32* %16, align 4
  %30 = mul nsw i32 %29, 3
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* %21, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  store i32* %37, i32** %27, align 8
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %20, align 4
  %41 = mul nsw i32 %39, %40
  %42 = add nsw i32 %38, %41
  %43 = load i32*, i32** %14, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %14, align 8
  store i32 0, i32* %25, align 4
  br label %46

46:                                               ; preds = %118, %11
  %47 = load i32, i32* %25, align 4
  %48 = load i32, i32* %19, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %121

50:                                               ; preds = %46
  store i32 0, i32* %24, align 4
  br label %51

51:                                               ; preds = %106, %50
  %52 = load i32, i32* %24, align 4
  %53 = load i32, i32* %18, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %109

55:                                               ; preds = %51
  %56 = load i32, i32* %24, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %25, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load i32*, i32** %13, align 8
  %63 = load i32*, i32** %22, align 8
  %64 = call i32 @decode_pixel(i32* %62, i32* %63, i32* null, i32 0, i32 0)
  store i32 %64, i32* %26, align 4
  br label %80

65:                                               ; preds = %58, %55
  %66 = load i32*, i32** %13, align 8
  %67 = load i32*, i32** %22, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = load i32, i32* %24, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* %24, align 4
  %74 = load i32, i32* %25, align 4
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %24, align 4
  %77 = sub nsw i32 %75, %76
  %78 = sub nsw i32 %77, 1
  %79 = call i32 @decode_pixel_in_context(i32* %66, i32* %67, i32* %71, i32 %72, i32 %73, i32 %74, i32 %78)
  store i32 %79, i32* %26, align 4
  br label %80

80:                                               ; preds = %65, %61
  %81 = load i32, i32* %26, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* %26, align 4
  store i32 %84, i32* %12, align 4
  br label %122

85:                                               ; preds = %80
  %86 = load i32, i32* %26, align 4
  %87 = load i32*, i32** %14, align 8
  %88 = load i32, i32* %24, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %86, i32* %90, align 4
  %91 = load i32*, i32** %15, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %105

93:                                               ; preds = %85
  %94 = load i32*, i32** %27, align 8
  %95 = load i32, i32* %24, align 4
  %96 = mul nsw i32 %95, 3
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32*, i32** %23, align 8
  %100 = load i32, i32* %26, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @AV_WB24(i32* %98, i32 %103)
  br label %105

105:                                              ; preds = %93, %85
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %24, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %24, align 4
  br label %51

109:                                              ; preds = %51
  %110 = load i32, i32* %20, align 4
  %111 = load i32*, i32** %14, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32* %113, i32** %14, align 8
  %114 = load i32, i32* %21, align 4
  %115 = load i32*, i32** %27, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32* %117, i32** %27, align 8
  br label %118

118:                                              ; preds = %109
  %119 = load i32, i32* %25, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %25, align 4
  br label %46

121:                                              ; preds = %46
  store i32 0, i32* %12, align 4
  br label %122

122:                                              ; preds = %121, %83
  %123 = load i32, i32* %12, align 4
  ret i32 %123
}

declare dso_local i32 @decode_pixel(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @decode_pixel_in_context(i32*, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @AV_WB24(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
