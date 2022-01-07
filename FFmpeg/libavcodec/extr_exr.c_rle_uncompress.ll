; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_exr.c_rle_uncompress.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_exr.c_rle_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32, i32*, i32)*, i32 (i32*, i32)* }
%struct.TYPE_7__ = type { i32*, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32, i32, %struct.TYPE_7__*)* @rle_uncompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rle_uncompress(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32 %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %11, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %8, align 8
  store i32* %21, i32** %13, align 8
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %15, align 4
  %24 = load i32*, i32** %12, align 8
  %25 = load i32, i32* %15, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32* %27, i32** %16, align 8
  br label %28

28:                                               ; preds = %90, %5
  %29 = load i32, i32* %14, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %91

31:                                               ; preds = %28
  %32 = load i32*, i32** %13, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %13, align 8
  %34 = load i32, i32* %32, align 4
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %31
  %38 = load i32, i32* %17, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %15, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %15, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %17, align 4
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* %14, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %14, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44, %37
  %51 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %51, i32* %6, align 4
  br label %124

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %57, %52
  %54 = load i32, i32* %17, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %17, align 4
  %56 = icmp ne i32 %54, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i32*, i32** %13, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %13, align 8
  %60 = load i32, i32* %58, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %12, align 8
  store i32 %60, i32* %61, align 4
  br label %53

63:                                               ; preds = %53
  br label %90

64:                                               ; preds = %31
  %65 = load i32, i32* %17, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %15, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %15, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %14, align 4
  %73 = sub nsw i32 %72, 2
  store i32 %73, i32* %14, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71, %64
  %76 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %76, i32* %6, align 4
  br label %124

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %82, %77
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %17, align 4
  %81 = icmp ne i32 %79, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i32*, i32** %13, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %12, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %12, align 8
  store i32 %84, i32* %85, align 4
  br label %78

87:                                               ; preds = %78
  %88 = load i32*, i32** %13, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %13, align 8
  br label %90

90:                                               ; preds = %87, %63
  br label %28

91:                                               ; preds = %28
  %92 = load i32*, i32** %16, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = icmp ne i32* %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %96, i32* %6, align 4
  br label %124

97:                                               ; preds = %91
  %98 = load i32, i32* %10, align 4
  %99 = srem i32 %98, 2
  %100 = icmp eq i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @av_assert1(i32 %101)
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32 (i32*, i32)*, i32 (i32*, i32)** %105, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 %106(i32* %109, i32 %110)
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %114, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = call i32 %115(i32 %118, i32* %121, i32 %122)
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %97, %95, %75, %50
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i32 @av_assert1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
