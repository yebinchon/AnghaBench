; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_extract_extradata_bsf.c_extract_extradata_mpeg12.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_extract_extradata_bsf.c_extract_extradata_mpeg12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32* }

@UINT32_MAX = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i32**, i32*)* @extract_extradata_mpeg12 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_extradata_mpeg12(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %10, align 8
  %17 = load i32, i32* @UINT32_MAX, align 4
  store i32 %17, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %109, %4
  %19 = load i32, i32* %12, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %112

24:                                               ; preds = %18
  %25 = load i32, i32* %11, align 4
  %26 = shl i32 %25, 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %26, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 435
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  store i32 1, i32* %13, align 4
  br label %108

38:                                               ; preds = %24
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %107

41:                                               ; preds = %38
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 437
  br i1 %43, label %44, label %107

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 512
  br i1 %46, label %47, label %107

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = icmp sge i32 %48, 256
  br i1 %49, label %50, label %107

50:                                               ; preds = %47
  %51 = load i32, i32* %12, align 4
  %52 = icmp sgt i32 %51, 3
  br i1 %52, label %53, label %106

53:                                               ; preds = %50
  %54 = load i32, i32* %12, align 4
  %55 = sub nsw i32 %54, 3
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32* @av_malloc(i64 %61)
  %63 = load i32**, i32*** %8, align 8
  store i32* %62, i32** %63, align 8
  %64 = load i32**, i32*** %8, align 8
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %53
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = call i32 @AVERROR(i32 %68)
  store i32 %69, i32* %5, align 4
  br label %113

70:                                               ; preds = %53
  %71 = load i32**, i32*** %8, align 8
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @memcpy(i32* %72, i32* %75, i32 %77)
  %79 = load i32**, i32*** %8, align 8
  %80 = load i32*, i32** %79, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %86 = call i32 @memset(i32* %84, i32 0, i64 %85)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %70
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = sext i32 %93 to i64
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %95, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %91, %70
  br label %106

106:                                              ; preds = %105, %50
  br label %112

107:                                              ; preds = %47, %44, %41, %38
  br label %108

108:                                              ; preds = %107, %37
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %18

112:                                              ; preds = %106, %18
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %112, %67
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32* @av_malloc(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
