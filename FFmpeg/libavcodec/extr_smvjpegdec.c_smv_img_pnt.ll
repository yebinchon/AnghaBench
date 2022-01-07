; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_smvjpegdec.c_smv_img_pnt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_smvjpegdec.c_smv_img_pnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@AV_PIX_FMT_FLAG_HWACCEL = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_PAL = common dso_local global i32 0, align 4
@FF_PSEUDOPAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32**, i32*, i32, i32, i32, i32)* @smv_img_pnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smv_img_pnt(i32** %0, i32** %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32** %0, i32*** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call %struct.TYPE_5__* @av_pix_fmt_desc_get(i32 %19)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %15, align 8
  store i32 0, i32* %17, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @AV_PIX_FMT_FLAG_HWACCEL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %7
  br label %109

28:                                               ; preds = %7
  store i32 0, i32* %16, align 4
  br label %29

29:                                               ; preds = %47, %28
  %30 = load i32, i32* %16, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load i32, i32* %17, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %16, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  %46 = call i32 @FFMAX(i32 %36, i64 %45)
  store i32 %46, i32* %17, align 4
  br label %47

47:                                               ; preds = %35
  %48 = load i32, i32* %16, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %16, align 4
  br label %29

50:                                               ; preds = %29
  store i32 0, i32* %16, align 4
  br label %51

51:                                               ; preds = %86, %50
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %89

55:                                               ; preds = %51
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %16, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %68

62:                                               ; preds = %59, %55
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @AV_CEIL_RSHIFT(i32 %63, i32 %66)
  store i32 %67, i32* %18, align 4
  br label %68

68:                                               ; preds = %62, %59
  %69 = load i32**, i32*** %8, align 8
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32**, i32*** %9, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @smv_img_pnt_plane(i32** %72, i32* %77, i32 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %68
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %16, align 4
  br label %51

89:                                               ; preds = %51
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @AV_PIX_FMT_FLAG_PAL, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %89
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @FF_PSEUDOPAL, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96, %89
  %104 = load i32**, i32*** %9, align 8
  %105 = getelementptr inbounds i32*, i32** %104, i64 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32**, i32*** %8, align 8
  %108 = getelementptr inbounds i32*, i32** %107, i64 1
  store i32* %106, i32** %108, align 8
  br label %109

109:                                              ; preds = %27, %103, %96
  ret void
}

declare dso_local %struct.TYPE_5__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @FFMAX(i32, i64) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @smv_img_pnt_plane(i32**, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
