; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_scale.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_scale.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__**, %struct.TYPE_5__** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@AV_PIX_FMT_PAL8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %11, i64 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %50

15:                                               ; preds = %1
  store i32* null, i32** %7, align 8
  store i32* null, i32** %4, align 8
  br label %16

16:                                               ; preds = %36, %15
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @av_pix_fmt_desc_next(i32* %17)
  store i32* %18, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @av_pix_fmt_desc_get_id(i32* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @sws_isSupportedInput(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @sws_isSupportedEndiannessConversion(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26, %20
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @ff_add_format(i32** %4, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %97

36:                                               ; preds = %30, %26
  br label %16

37:                                               ; preds = %16
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %41, i64 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = call i32 @ff_formats_ref(i32* %38, i32* %44)
  store i32 %45, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %97

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %53, i64 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = icmp ne %struct.TYPE_6__* %55, null
  br i1 %56, label %57, label %96

57:                                               ; preds = %50
  store i32* null, i32** %8, align 8
  store i32* null, i32** %4, align 8
  br label %58

58:                                               ; preds = %82, %57
  %59 = load i32*, i32** %8, align 8
  %60 = call i32* @av_pix_fmt_desc_next(i32* %59)
  store i32* %60, i32** %8, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %83

62:                                               ; preds = %58
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @av_pix_fmt_desc_get_id(i32* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i64 @sws_isSupportedOutput(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @AV_PIX_FMT_PAL8, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %5, align 4
  %74 = call i64 @sws_isSupportedEndiannessConversion(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %72, %68, %62
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @ff_add_format(i32** %4, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %97

82:                                               ; preds = %76, %72
  br label %58

83:                                               ; preds = %58
  %84 = load i32*, i32** %4, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %87, i64 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = call i32 @ff_formats_ref(i32* %84, i32* %90)
  store i32 %91, i32* %6, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %97

95:                                               ; preds = %83
  br label %96

96:                                               ; preds = %95, %50
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %93, %80, %47, %34
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32* @av_pix_fmt_desc_next(i32*) #1

declare dso_local i32 @av_pix_fmt_desc_get_id(i32*) #1

declare dso_local i64 @sws_isSupportedInput(i32) #1

declare dso_local i64 @sws_isSupportedEndiannessConversion(i32) #1

declare dso_local i32 @ff_add_format(i32**, i32) #1

declare dso_local i32 @ff_formats_ref(i32*, i32*) #1

declare dso_local i64 @sws_isSupportedOutput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
