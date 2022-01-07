; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_xcbgrab.c_pixfmt_from_pixmap_format.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_xcbgrab.c_pixfmt_from_pixmap_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@AV_PIX_FMT_0RGB = common dso_local global i32 0, align 4
@AV_PIX_FMT_0RGB32 = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGB24 = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGB565 = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGB555 = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGB8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Mapping this pixmap format\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32*)* @pixfmt_from_pixmap_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pixfmt_from_pixmap_format(%struct.TYPE_9__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %8, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @xcb_get_setup(i32 %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call %struct.TYPE_7__* @xcb_setup_pixmap_formats(i32* %19)
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %10, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @xcb_setup_pixmap_formats_length(i32* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %115, %3
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %11, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %28, label %118

28:                                               ; preds = %24
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %91

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %90 [
    i32 32, label %36
    i32 24, label %45
    i32 16, label %63
    i32 15, label %72
    i32 8, label %81
  ]

36:                                               ; preds = %34
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 32
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @AV_PIX_FMT_0RGB, align 4
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %36
  br label %90

45:                                               ; preds = %34
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 32
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @AV_PIX_FMT_0RGB32, align 4
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  br label %62

53:                                               ; preds = %45
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 24
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @AV_PIX_FMT_RGB24, align 4
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %53
  br label %62

62:                                               ; preds = %61, %50
  br label %90

63:                                               ; preds = %34
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 16
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @AV_PIX_FMT_RGB565, align 4
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %63
  br label %90

72:                                               ; preds = %34
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 16
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @AV_PIX_FMT_RGB555, align 4
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %72
  br label %90

81:                                               ; preds = %34
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 8
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* @AV_PIX_FMT_RGB8, align 4
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %81
  br label %90

90:                                               ; preds = %34, %89, %80, %71, %62, %44
  br label %91

91:                                               ; preds = %90, %28
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %91
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %103, %106
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %107, %110
  %112 = sdiv i32 %111, 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  store i32 0, i32* %4, align 4
  br label %122

115:                                              ; preds = %91
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 1
  store %struct.TYPE_7__* %117, %struct.TYPE_7__** %10, align 8
  br label %24

118:                                              ; preds = %24
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %120 = call i32 @avpriv_report_missing_feature(%struct.TYPE_9__* %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %121 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %118, %95
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32* @xcb_get_setup(i32) #1

declare dso_local %struct.TYPE_7__* @xcb_setup_pixmap_formats(i32*) #1

declare dso_local i32 @xcb_setup_pixmap_formats_length(i32*) #1

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_9__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
