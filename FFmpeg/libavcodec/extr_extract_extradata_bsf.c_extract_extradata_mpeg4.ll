; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_extract_extradata_bsf.c_extract_extradata_mpeg4.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_extract_extradata_bsf.c_extract_extradata_mpeg4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32* }

@UINT32_MAX = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i32**, i32*)* @extract_extradata_mpeg4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_extradata_mpeg4(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %10, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %11, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  store i32* %27, i32** %12, align 8
  %28 = load i32, i32* @UINT32_MAX, align 4
  store i32 %28, i32* %13, align 4
  br label %29

29:                                               ; preds = %114, %4
  %30 = load i32*, i32** %11, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = icmp ult i32* %30, %31
  br i1 %32, label %33, label %115

33:                                               ; preds = %29
  %34 = load i32*, i32** %11, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = call i32* @avpriv_find_start_code(i32* %34, i32* %35, i32* %13)
  store i32* %36, i32** %11, align 8
  %37 = load i32, i32* %13, align 4
  %38 = icmp eq i32 %37, 435
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %13, align 4
  %41 = icmp eq i32 %40, 438
  br i1 %41, label %42, label %114

42:                                               ; preds = %39, %33
  %43 = load i32*, i32** %11, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = ptrtoint i32* %43 to i64
  %48 = ptrtoint i32* %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 4
  %51 = icmp sgt i64 %50, 4
  br i1 %51, label %52, label %113

52:                                               ; preds = %42
  %53 = load i32*, i32** %11, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 -4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = ptrtoint i32* %54 to i64
  %59 = ptrtoint i32* %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32* @av_malloc(i64 %68)
  %70 = load i32**, i32*** %8, align 8
  store i32* %69, i32** %70, align 8
  %71 = load i32**, i32*** %8, align 8
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %52
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = call i32 @AVERROR(i32 %75)
  store i32 %76, i32* %5, align 4
  br label %116

77:                                               ; preds = %52
  %78 = load i32**, i32*** %8, align 8
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @memcpy(i32* %79, i32* %82, i32 %84)
  %86 = load i32**, i32*** %8, align 8
  %87 = load i32*, i32** %86, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %93 = call i32 @memset(i32* %91, i32 0, i64 %92)
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %77
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = sext i32 %100 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %102, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %98, %77
  br label %113

113:                                              ; preds = %112, %42
  br label %115

114:                                              ; preds = %39
  br label %29

115:                                              ; preds = %113, %29
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %74
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32* @avpriv_find_start_code(i32*, i32*, i32*) #1

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
