; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hapdec.c_decompress_texture_thread_internal.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hapdec.c_decompress_texture_thread_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)*, i32* }
%struct.TYPE_6__ = type { i32*, i32** }

@TEXTURE_BLOCK_W = common dso_local global i32 0, align 4
@TEXTURE_BLOCK_H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32, i32, i32)* @decompress_texture_thread_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decompress_texture_thread_internal(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %11, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %12, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 6
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %13, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @TEXTURE_BLOCK_W, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %14, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TEXTURE_BLOCK_H, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sdiv i32 %42, %45
  store i32 %46, i32* %20, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = srem i32 %47, %50
  store i32 %51, i32* %21, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %20, align 4
  %54 = mul nsw i32 %52, %53
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %21, align 4
  %57 = call i64 @FFMIN(i32 %55, i32 %56)
  %58 = load i32, i32* %18, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %20, align 4
  %64 = add nsw i32 %62, %63
  store i32 %64, i32* %19, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %21, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %5
  %69 = load i32, i32* %19, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %19, align 4
  br label %71

71:                                               ; preds = %68, %5
  %72 = load i32, i32* %18, align 4
  store i32 %72, i32* %17, align 4
  br label %73

73:                                               ; preds = %167, %71
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* %19, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %170

77:                                               ; preds = %73
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32**, i32*** %79, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %17, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %83, %88
  %90 = load i32, i32* @TEXTURE_BLOCK_H, align 4
  %91 = mul nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %82, i64 %92
  store i32* %93, i32** %22, align 8
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %14, align 4
  %96 = mul nsw i32 %94, %95
  store i32 %96, i32* %23, align 4
  store i32 0, i32* %16, align 4
  br label %97

97:                                               ; preds = %163, %77
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %166

101:                                              ; preds = %97
  %102 = load i32, i32* %10, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %133

104:                                              ; preds = %101
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 5
  %107 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %106, align 8
  %108 = load i32*, i32** %22, align 8
  %109 = load i32, i32* %16, align 4
  %110 = mul nsw i32 %109, 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %110, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %108, i64 %115
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %13, align 8
  %123 = load i32, i32* %23, align 4
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %123, %124
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = mul nsw i32 %125, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %122, i64 %130
  %132 = call i32 %107(i32* %116, i32 %121, i32* %131)
  br label %162

133:                                              ; preds = %101
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 4
  %136 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %135, align 8
  %137 = load i32*, i32** %22, align 8
  %138 = load i32, i32* %16, align 4
  %139 = mul nsw i32 %138, 4
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %139, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %137, i64 %144
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %13, align 8
  %152 = load i32, i32* %23, align 4
  %153 = load i32, i32* %16, align 4
  %154 = add nsw i32 %152, %153
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = mul nsw i32 %154, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %151, i64 %159
  %161 = call i32 %136(i32* %145, i32 %150, i32* %160)
  br label %162

162:                                              ; preds = %133, %104
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %16, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %16, align 4
  br label %97

166:                                              ; preds = %97
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %17, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %17, align 4
  br label %73

170:                                              ; preds = %73
  ret i32 0
}

declare dso_local i64 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
