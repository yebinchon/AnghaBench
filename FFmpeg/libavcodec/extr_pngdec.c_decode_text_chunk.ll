; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngdec.c_decode_text_chunk.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngdec.c_decode_text_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_9__ = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_DICT_DONT_STRDUP_KEY = common dso_local global i32 0, align 4
@AV_DICT_DONT_STRDUP_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32, i32**)* @decode_text_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_text_chunk(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_9__, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %12, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32* %28, i32** %13, align 8
  %29 = load i32*, i32** %12, align 8
  store i32* %29, i32** %14, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = ptrtoint i32* %31 to i64
  %34 = ptrtoint i32* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call i32* @memchr(i32* %30, i32 0, i32 %37)
  store i32* %38, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %18, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %42, i32* %5, align 4
  br label %128

43:                                               ; preds = %4
  %44 = load i32*, i32** %15, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32* %45, i32** %12, align 8
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %79

48:                                               ; preds = %43
  %49 = load i32*, i32** %12, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = icmp eq i32* %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %53, i32* %5, align 4
  br label %128

54:                                               ; preds = %48
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %12, align 8
  %57 = load i32, i32* %55, align 4
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %61, i32* %5, align 4
  br label %128

62:                                               ; preds = %54
  %63 = load i32*, i32** %12, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 @decode_zbuf(%struct.TYPE_9__* %20, i32* %63, i32* %64)
  store i32 %65, i32* %10, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %5, align 4
  br label %128

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %19, align 4
  %72 = bitcast i32** %17 to i8**
  %73 = call i32 @av_bprint_finalize(%struct.TYPE_9__* %20, i8** %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %5, align 4
  br label %128

78:                                               ; preds = %69
  br label %88

79:                                               ; preds = %43
  %80 = load i32*, i32** %12, align 8
  store i32* %80, i32** %17, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = load i32*, i32** %17, align 8
  %83 = ptrtoint i32* %81 to i64
  %84 = ptrtoint i32* %82 to i64
  %85 = sub i64 %83, %84
  %86 = sdiv exact i64 %85, 4
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %19, align 4
  br label %88

88:                                               ; preds = %79, %78
  %89 = load i32*, i32** %14, align 8
  %90 = load i32*, i32** %15, align 8
  %91 = load i32*, i32** %14, align 8
  %92 = ptrtoint i32* %90 to i64
  %93 = ptrtoint i32* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sdiv exact i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i32* @iso88591_to_utf8(i32* %89, i32 %96)
  store i32* %97, i32** %16, align 8
  %98 = load i32*, i32** %17, align 8
  %99 = load i32, i32* %19, align 4
  %100 = call i32* @iso88591_to_utf8(i32* %98, i32 %99)
  store i32* %100, i32** %18, align 8
  %101 = load i32*, i32** %17, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = icmp ne i32* %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %88
  %105 = load i32*, i32** %17, align 8
  %106 = call i32 @av_free(i32* %105)
  br label %107

107:                                              ; preds = %104, %88
  %108 = load i32*, i32** %16, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32*, i32** %18, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %120, label %113

113:                                              ; preds = %110, %107
  %114 = load i32*, i32** %16, align 8
  %115 = call i32 @av_free(i32* %114)
  %116 = load i32*, i32** %18, align 8
  %117 = call i32 @av_free(i32* %116)
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = call i32 @AVERROR(i32 %118)
  store i32 %119, i32* %5, align 4
  br label %128

120:                                              ; preds = %110
  %121 = load i32**, i32*** %9, align 8
  %122 = load i32*, i32** %16, align 8
  %123 = load i32*, i32** %18, align 8
  %124 = load i32, i32* @AV_DICT_DONT_STRDUP_KEY, align 4
  %125 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @av_dict_set(i32** %121, i32* %122, i32* %123, i32 %126)
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %120, %113, %76, %67, %60, %52, %41
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32* @memchr(i32*, i32, i32) #1

declare dso_local i32 @decode_zbuf(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @av_bprint_finalize(%struct.TYPE_9__*, i8**) #1

declare dso_local i32* @iso88591_to_utf8(i32*, i32) #1

declare dso_local i32 @av_free(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_dict_set(i32**, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
