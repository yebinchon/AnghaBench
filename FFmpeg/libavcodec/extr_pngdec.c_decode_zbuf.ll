; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngdec.c_decode_zbuf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngdec.c_decode_zbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64* }
%struct.TYPE_10__ = type { i8*, i32, i8*, i32, i32*, i32, i32 }

@ff_png_zalloc = common dso_local global i32 0, align 4
@ff_png_zfree = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@Z_PARTIAL_FLUSH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32*)* @decode_zbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_zbuf(%struct.TYPE_11__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @ff_png_zalloc, align 4
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 6
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @ff_png_zfree, align 4
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 5
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 4
  store i32* null, i32** %16, align 8
  %17 = call i32 @inflateInit(%struct.TYPE_10__* %8)
  %18 = load i32, i32* @Z_OK, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %21, i32* %4, align 4
  br label %96

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = bitcast i32* %23 to i8*
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = ptrtoint i32* %26 to i64
  %29 = ptrtoint i32* %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %36 = call i32 @av_bprint_init(%struct.TYPE_11__* %34, i32 0, i32 %35)
  br label %37

37:                                               ; preds = %81, %22
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %82

41:                                               ; preds = %37
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = call i32 @av_bprint_get_buffer(%struct.TYPE_11__* %42, i32 2, i8** %9, i32* %10)
  %44 = load i32, i32* %10, align 4
  %45 = icmp ult i32 %44, 2
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = call i32 @AVERROR(i32 %47)
  store i32 %48, i32* %11, align 4
  br label %91

49:                                               ; preds = %41
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  store i8* %50, i8** %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sub i32 %52, 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  store i32 %53, i32* %54, align 8
  %55 = load i32, i32* @Z_PARTIAL_FLUSH, align 4
  %56 = call i32 @inflate(%struct.TYPE_10__* %8, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @Z_OK, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %49
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @Z_STREAM_END, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %65, i32* %11, align 4
  br label %91

66:                                               ; preds = %60, %49
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, %72
  store i64 %76, i64* %74, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @Z_STREAM_END, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %66
  br label %82

81:                                               ; preds = %66
  br label %37

82:                                               ; preds = %80, %37
  %83 = call i32 @inflateEnd(%struct.TYPE_10__* %8)
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i64, i64* %86, i64 %89
  store i64 0, i64* %90, align 8
  store i32 0, i32* %4, align 4
  br label %96

91:                                               ; preds = %64, %46
  %92 = call i32 @inflateEnd(%struct.TYPE_10__* %8)
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %94 = call i32 @av_bprint_finalize(%struct.TYPE_11__* %93, i32* null)
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %91, %82, %20
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @inflateInit(%struct.TYPE_10__*) #1

declare dso_local i32 @av_bprint_init(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @av_bprint_get_buffer(%struct.TYPE_11__*, i32, i8**, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @inflate(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @inflateEnd(%struct.TYPE_10__*) #1

declare dso_local i32 @av_bprint_finalize(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
