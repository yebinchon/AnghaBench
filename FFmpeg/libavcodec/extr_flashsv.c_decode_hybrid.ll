; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flashsv.c_decode_hybrid.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flashsv.c_decode_hybrid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32, i32, i32, i32, i32*)* @decode_hybrid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_hybrid(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  %29 = load i32*, i32** %11, align 8
  store i32* %29, i32** %22, align 8
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %16, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %21, align 4
  br label %33

33:                                               ; preds = %112, %9
  %34 = load i32, i32* %21, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %115

37:                                               ; preds = %33
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %21, align 4
  %40 = load i32, i32* %18, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load i32, i32* %15, align 4
  %45 = mul nsw i32 %44, 3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32* %47, i32** %23, align 8
  store i32 0, i32* %20, align 4
  br label %48

48:                                               ; preds = %108, %37
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %111

52:                                               ; preds = %48
  %53 = load i32*, i32** %11, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = icmp uge i32* %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %57, i32* %10, align 4
  br label %123

58:                                               ; preds = %52
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 128
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %97

63:                                               ; preds = %58
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @AV_RB16(i32* %64)
  %66 = and i32 %65, -32769
  store i32 %66, i32* %24, align 4
  %67 = load i32, i32* %24, align 4
  %68 = and i32 %67, 31
  store i32 %68, i32* %25, align 4
  %69 = load i32, i32* %24, align 4
  %70 = lshr i32 %69, 5
  %71 = and i32 %70, 31
  store i32 %71, i32* %26, align 4
  %72 = load i32, i32* %24, align 4
  %73 = lshr i32 %72, 10
  store i32 %73, i32* %27, align 4
  %74 = load i32, i32* %25, align 4
  %75 = shl i32 %74, 3
  %76 = load i32, i32* %25, align 4
  %77 = lshr i32 %76, 2
  %78 = or i32 %75, %77
  %79 = load i32*, i32** %23, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %23, align 8
  store i32 %78, i32* %79, align 4
  %81 = load i32, i32* %26, align 4
  %82 = shl i32 %81, 3
  %83 = load i32, i32* %26, align 4
  %84 = lshr i32 %83, 2
  %85 = or i32 %82, %84
  %86 = load i32*, i32** %23, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %23, align 8
  store i32 %85, i32* %86, align 4
  %88 = load i32, i32* %27, align 4
  %89 = shl i32 %88, 3
  %90 = load i32, i32* %27, align 4
  %91 = lshr i32 %90, 2
  %92 = or i32 %89, %91
  %93 = load i32*, i32** %23, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %23, align 8
  store i32 %92, i32* %93, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  store i32* %96, i32** %11, align 8
  br label %107

97:                                               ; preds = %58
  %98 = load i32*, i32** %19, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %11, align 8
  %101 = load i32, i32* %99, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %28, align 4
  %105 = load i32, i32* %28, align 4
  %106 = call i32 @bytestream_put_le24(i32** %23, i32 %105)
  br label %107

107:                                              ; preds = %97, %63
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %20, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %20, align 4
  br label %48

111:                                              ; preds = %48
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %21, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %21, align 4
  br label %33

115:                                              ; preds = %33
  %116 = load i32*, i32** %11, align 8
  %117 = load i32*, i32** %22, align 8
  %118 = ptrtoint i32* %116 to i64
  %119 = ptrtoint i32* %117 to i64
  %120 = sub i64 %118, %119
  %121 = sdiv exact i64 %120, 4
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %115, %56
  %124 = load i32, i32* %10, align 4
  ret i32 %124
}

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @bytestream_put_le24(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
