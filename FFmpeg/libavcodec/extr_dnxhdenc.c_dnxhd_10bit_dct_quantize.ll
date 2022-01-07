; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dnxhdenc.c_dnxhd_10bit_dct_quantize.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dnxhdenc.c_dnxhd_10bit_dct_quantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32**, i32**, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 (i32*)* }
%struct.TYPE_6__ = type { i32* }

@DNX10BIT_QMAT_SHIFT = common dso_local global i32 0, align 4
@FF_IDCT_PERM_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32, i32, i32*)* @dnxhd_10bit_dct_quantize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnxhd_10bit_dct_quantize(%struct.TYPE_9__* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %11, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %32

24:                                               ; preds = %5
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  br label %40

32:                                               ; preds = %5
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  br label %40

40:                                               ; preds = %32, %24
  %41 = phi i32* [ %31, %24 ], [ %39, %32 ]
  store i32* %41, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32 (i32*)*, i32 (i32*)** %44, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 %45(i32* %46)
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 2
  %52 = ashr i32 %51, 2
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %52, i32* %54, align 4
  store i32 1, i32* %14, align 4
  br label %55

55:                                               ; preds = %102, %40
  %56 = load i32, i32* %14, align 4
  %57 = icmp slt i32 %56, 64
  br i1 %57, label %58, label %105

58:                                               ; preds = %55
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %15, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @FF_SIGNBIT(i32 %68)
  store i32 %69, i32* %16, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %16, align 4
  %76 = xor i32 %74, %75
  %77 = load i32, i32* %16, align 4
  %78 = sub nsw i32 %76, %77
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %79, %84
  %86 = load i32, i32* @DNX10BIT_QMAT_SHIFT, align 4
  %87 = ashr i32 %85, %86
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %16, align 4
  %90 = xor i32 %88, %89
  %91 = load i32, i32* %16, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %58
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %99, %58
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  br label %55

105:                                              ; preds = %55
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @FF_IDCT_PERM_NONE, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %105
  %113 = load i32*, i32** %7, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32*, i32** %11, align 8
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @ff_block_permute(i32* %113, i32 %117, i32* %118, i32 %119)
  br label %121

121:                                              ; preds = %112, %105
  %122 = load i32, i32* %13, align 4
  ret i32 %122
}

declare dso_local i32 @FF_SIGNBIT(i32) #1

declare dso_local i32 @ff_block_permute(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
