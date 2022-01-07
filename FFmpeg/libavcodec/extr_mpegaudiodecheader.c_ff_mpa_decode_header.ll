; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudiodecheader.c_ff_mpa_decode_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudiodecheader.c_ff_mpa_decode_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@AV_CODEC_ID_MP1 = common dso_local global i32 0, align 4
@AV_CODEC_ID_MP2 = common dso_local global i32 0, align 4
@AV_CODEC_ID_MP3ADU = common dso_local global i32 0, align 4
@AV_CODEC_ID_MP3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mpa_decode_header(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__, align 4
  %15 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %15, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @avpriv_mpegaudio_decode_header(%struct.TYPE_3__* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %68

21:                                               ; preds = %6
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %33 [
    i32 1, label %25
    i32 2, label %29
    i32 3, label %34
  ]

25:                                               ; preds = %21
  %26 = load i32, i32* @AV_CODEC_ID_MP1, align 4
  %27 = load i32*, i32** %13, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %11, align 8
  store i32 384, i32* %28, align 4
  br label %52

29:                                               ; preds = %21
  %30 = load i32, i32* @AV_CODEC_ID_MP2, align 4
  %31 = load i32*, i32** %13, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %11, align 8
  store i32 1152, i32* %32, align 4
  br label %52

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %21, %33
  %35 = load i32*, i32** %13, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AV_CODEC_ID_MP3ADU, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @AV_CODEC_ID_MP3, align 4
  %41 = load i32*, i32** %13, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32*, i32** %11, align 8
  store i32 576, i32* %48, align 4
  br label %51

49:                                               ; preds = %42
  %50 = load i32*, i32** %11, align 8
  store i32 1152, i32* %50, align 4
  br label %51

51:                                               ; preds = %49, %47
  br label %52

52:                                               ; preds = %51, %29, %25
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %12, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %52, %20
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local i64 @avpriv_mpegaudio_decode_header(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
