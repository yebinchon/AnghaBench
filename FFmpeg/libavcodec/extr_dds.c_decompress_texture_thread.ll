; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dds.c_decompress_texture_thread.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dds.c_decompress_texture_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 (i32*, i32, i32*)*, i32* }
%struct.TYPE_6__ = type { i32*, i32** }

@TEXTURE_BLOCK_W = common dso_local global i32 0, align 4
@TEXTURE_BLOCK_H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32, i32)* @decompress_texture_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decompress_texture_thread(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %9, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %10, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %11, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TEXTURE_BLOCK_W, align 4
  %34 = sdiv i32 %32, %33
  store i32 %34, i32* %12, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TEXTURE_BLOCK_H, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sdiv i32 %40, %43
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = srem i32 %45, %48
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %18, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %19, align 4
  %55 = call i64 @FFMIN(i32 %53, i32 %54)
  %56 = load i32, i32* %16, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %18, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %19, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %4
  %67 = load i32, i32* %17, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %17, align 4
  br label %69

69:                                               ; preds = %66, %4
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %128, %69
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %131

75:                                               ; preds = %71
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32**, i32*** %77, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %81, %86
  %88 = load i32, i32* @TEXTURE_BLOCK_H, align 4
  %89 = mul nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %80, i64 %90
  store i32* %91, i32** %20, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %12, align 4
  %94 = mul nsw i32 %92, %93
  store i32 %94, i32* %21, align 4
  store i32 0, i32* %14, align 4
  br label %95

95:                                               ; preds = %124, %75
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %127

99:                                               ; preds = %95
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %101, align 8
  %103 = load i32*, i32** %20, align 8
  %104 = load i32, i32* %14, align 4
  %105 = mul nsw i32 %104, 16
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %11, align 8
  %114 = load i32, i32* %21, align 4
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %114, %115
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %116, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %113, i64 %121
  %123 = call i32 %102(i32* %107, i32 %112, i32* %122)
  br label %124

124:                                              ; preds = %99
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %14, align 4
  br label %95

127:                                              ; preds = %95
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %15, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %15, align 4
  br label %71

131:                                              ; preds = %71
  ret i32 0
}

declare dso_local i64 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
