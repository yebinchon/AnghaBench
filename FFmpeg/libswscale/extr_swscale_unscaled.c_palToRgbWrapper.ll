; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_palToRgbWrapper.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_palToRgbWrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@AV_PIX_FMT_YA8 = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"internal error %s -> %s converter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32**, i32*, i32, i32, i32**, i32*)* @palToRgbWrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palToRgbWrapper(%struct.TYPE_4__* %0, i32** %1, i32* %2, i32 %3, i32 %4, i32** %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca void (i32*, i32*, i32, i32*)*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32** %5, i32*** %13, align 8
  store i32* %6, i32** %14, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %15, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %16, align 4
  store void (i32*, i32*, i32, i32*)* null, void (i32*, i32*, i32, i32*)** %17, align 8
  %27 = load i32**, i32*** %13, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %29, i64 %35
  store i32* %36, i32** %19, align 8
  %37 = load i32**, i32*** %9, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %20, align 8
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @AV_PIX_FMT_YA8, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %7
  %44 = load i32, i32* %16, align 4
  switch i32 %44, label %51 [
    i32 129, label %45
    i32 132, label %46
    i32 131, label %47
    i32 128, label %48
    i32 130, label %49
    i32 133, label %50
  ]

45:                                               ; preds = %43
  store void (i32*, i32*, i32, i32*)* @gray8aToPacked32, void (i32*, i32*, i32, i32*)** %17, align 8
  br label %51

46:                                               ; preds = %43
  store void (i32*, i32*, i32, i32*)* @gray8aToPacked32, void (i32*, i32*, i32, i32*)** %17, align 8
  br label %51

47:                                               ; preds = %43
  store void (i32*, i32*, i32, i32*)* @gray8aToPacked32_1, void (i32*, i32*, i32, i32*)** %17, align 8
  br label %51

48:                                               ; preds = %43
  store void (i32*, i32*, i32, i32*)* @gray8aToPacked32_1, void (i32*, i32*, i32, i32*)** %17, align 8
  br label %51

49:                                               ; preds = %43
  store void (i32*, i32*, i32, i32*)* @gray8aToPacked24, void (i32*, i32*, i32, i32*)** %17, align 8
  br label %51

50:                                               ; preds = %43
  store void (i32*, i32*, i32, i32*)* @gray8aToPacked24, void (i32*, i32*, i32, i32*)** %17, align 8
  br label %51

51:                                               ; preds = %43, %50, %49, %48, %47, %46, %45
  br label %66

52:                                               ; preds = %7
  %53 = load i32, i32* %15, align 4
  %54 = call i64 @usePal(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i32, i32* %16, align 4
  switch i32 %57, label %64 [
    i32 129, label %58
    i32 132, label %59
    i32 131, label %60
    i32 128, label %61
    i32 130, label %62
    i32 133, label %63
  ]

58:                                               ; preds = %56
  store void (i32*, i32*, i32, i32*)* @sws_convertPalette8ToPacked32, void (i32*, i32*, i32, i32*)** %17, align 8
  br label %64

59:                                               ; preds = %56
  store void (i32*, i32*, i32, i32*)* @sws_convertPalette8ToPacked32, void (i32*, i32*, i32, i32*)** %17, align 8
  br label %64

60:                                               ; preds = %56
  store void (i32*, i32*, i32, i32*)* @sws_convertPalette8ToPacked32, void (i32*, i32*, i32, i32*)** %17, align 8
  br label %64

61:                                               ; preds = %56
  store void (i32*, i32*, i32, i32*)* @sws_convertPalette8ToPacked32, void (i32*, i32*, i32, i32*)** %17, align 8
  br label %64

62:                                               ; preds = %56
  store void (i32*, i32*, i32, i32*)* @sws_convertPalette8ToPacked24, void (i32*, i32*, i32, i32*)** %17, align 8
  br label %64

63:                                               ; preds = %56
  store void (i32*, i32*, i32, i32*)* @sws_convertPalette8ToPacked24, void (i32*, i32*, i32, i32*)** %17, align 8
  br label %64

64:                                               ; preds = %56, %63, %62, %61, %60, %59, %58
  br label %65

65:                                               ; preds = %64, %52
  br label %66

66:                                               ; preds = %65, %51
  %67 = load void (i32*, i32*, i32, i32*)*, void (i32*, i32*, i32, i32*)** %17, align 8
  %68 = icmp ne void (i32*, i32*, i32, i32*)* %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %71 = load i32, i32* @AV_LOG_ERROR, align 4
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @av_get_pix_fmt_name(i32 %72)
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @av_get_pix_fmt_name(i32 %74)
  %76 = call i32 @av_log(%struct.TYPE_4__* %70, i32 %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %75)
  br label %109

77:                                               ; preds = %66
  store i32 0, i32* %18, align 4
  br label %78

78:                                               ; preds = %105, %77
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %108

82:                                               ; preds = %78
  %83 = load void (i32*, i32*, i32, i32*)*, void (i32*, i32*, i32, i32*)** %17, align 8
  %84 = load i32*, i32** %20, align 8
  %85 = load i32*, i32** %19, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i32*
  call void %83(i32* %84, i32* %85, i32 %88, i32* %92)
  %93 = load i32*, i32** %10, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %20, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %20, align 8
  %99 = load i32*, i32** %14, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %19, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %19, align 8
  br label %105

105:                                              ; preds = %82
  %106 = load i32, i32* %18, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %18, align 4
  br label %78

108:                                              ; preds = %78
  br label %109

109:                                              ; preds = %108, %69
  %110 = load i32, i32* %12, align 4
  ret i32 %110
}

declare dso_local void @gray8aToPacked32(i32*, i32*, i32, i32*) #1

declare dso_local void @gray8aToPacked32_1(i32*, i32*, i32, i32*) #1

declare dso_local void @gray8aToPacked24(i32*, i32*, i32, i32*) #1

declare dso_local i64 @usePal(i32) #1

declare dso_local void @sws_convertPalette8ToPacked32(i32*, i32*, i32, i32*) #1

declare dso_local void @sws_convertPalette8ToPacked24(i32*, i32*, i32, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_4__*, i32, i8*, i32, i32) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
