; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_filter.c_choose_pixel_fmt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_filter.c_choose_pixel_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i32 }

@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@FF_COMPLIANCE_UNOFFICIAL = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Incompatible pixel format '%s' for codec '%s', auto-selecting format '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @choose_pixel_fmt(i32* %0, %struct.TYPE_8__* %1, %struct.TYPE_9__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %15 = icmp ne %struct.TYPE_9__* %14, null
  br i1 %15, label %16, label %95

16:                                               ; preds = %4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %95

21:                                               ; preds = %16
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %10, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.TYPE_7__* @av_pix_fmt_desc_get(i32 %25)
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %11, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = srem i32 %32, 2
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  br label %37

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36, %29
  %38 = phi i32 [ %35, %29 ], [ 0, %36 ]
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  store i32 %39, i32* %13, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @FF_COMPLIANCE_UNOFFICIAL, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = call i32* @get_compliance_unofficial_pix_fmts(i32 %48, i32* %49)
  store i32* %50, i32** %10, align 8
  br label %51

51:                                               ; preds = %45, %37
  br label %52

52:                                               ; preds = %70, %51
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = load i32, i32* %13, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @avcodec_find_best_pix_fmt_of_2(i32 %58, i32 %60, i32 %61, i32 %62, i32* null)
  store i32 %63, i32* %13, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %73

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %10, align 8
  br label %52

73:                                               ; preds = %68, %52
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %73
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load i32, i32* @AV_LOG_WARNING, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @av_get_pix_fmt_name(i32 %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @av_get_pix_fmt_name(i32 %89)
  %91 = call i32 @av_log(i32* null, i32 %83, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %88, i32 %90)
  br label %92

92:                                               ; preds = %82, %78
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %5, align 4
  br label %97

94:                                               ; preds = %73
  br label %95

95:                                               ; preds = %94, %16, %4
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %95, %92
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_7__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32* @get_compliance_unofficial_pix_fmts(i32, i32*) #1

declare dso_local i32 @avcodec_find_best_pix_fmt_of_2(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
