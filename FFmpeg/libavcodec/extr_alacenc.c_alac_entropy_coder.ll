; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_alacenc.c_alac_entropy_coder.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_alacenc.c_alac_entropy_coder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32**, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @alac_entropy_coder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alac_entropy_coder(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %9, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %118, %2
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %119

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = lshr i32 %30, 9
  %32 = add i32 %31, 3
  %33 = call i32 @av_log2(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 -2, %35
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = ashr i32 %38, 31
  %40 = load i32, i32* %10, align 4
  %41 = xor i32 %40, %39
  store i32 %41, i32* %10, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %9, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @encode_scalar(%struct.TYPE_6__* %46, i32 %49, i32 %50, i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %55, %59
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = mul i32 %61, %65
  %67 = lshr i32 %66, 9
  %68 = sub i32 %60, %67
  %69 = load i32, i32* %5, align 4
  %70 = add i32 %69, %68
  store i32 %70, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp sgt i32 %71, 65535
  br i1 %72, label %73, label %74

73:                                               ; preds = %29
  store i32 65535, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %29
  %75 = load i32, i32* %5, align 4
  %76 = icmp ult i32 %75, 128
  br i1 %76, label %77, label %118

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %118

83:                                               ; preds = %77
  store i32 0, i32* %11, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @av_log2(i32 %84)
  %86 = sub nsw i32 7, %85
  %87 = load i32, i32* %5, align 4
  %88 = add i32 %87, 16
  %89 = lshr i32 %88, 6
  %90 = add i32 %86, %89
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %103, %83
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br label %101

101:                                              ; preds = %95, %91
  %102 = phi i1 [ false, %91 ], [ %100, %95 ]
  br i1 %102, label %103, label %110

103:                                              ; preds = %101
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %9, align 8
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %11, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %91

110:                                              ; preds = %101
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @encode_scalar(%struct.TYPE_6__* %111, i32 %112, i32 %113, i32 16)
  %115 = load i32, i32* %11, align 4
  %116 = icmp ule i32 %115, 65535
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %110, %77, %74
  br label %23

119:                                              ; preds = %23
  ret void
}

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @encode_scalar(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
