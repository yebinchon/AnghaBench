; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_boxblur.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_boxblur.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@AV_PIX_FMT_FLAG_HWACCEL = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_BITSTREAM = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_PAL = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_PLANAR = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_BE = common dso_local global i32 0, align 4
@HAVE_BIGENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %66, %1
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.TYPE_5__* @av_pix_fmt_desc_get(i32 %9)
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %69

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.TYPE_5__* @av_pix_fmt_desc_get(i32 %13)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %7, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @AV_PIX_FMT_FLAG_HWACCEL, align 4
  %19 = load i32, i32* @AV_PIX_FMT_FLAG_BITSTREAM, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @AV_PIX_FMT_FLAG_PAL, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %17, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %65, label %25

25:                                               ; preds = %12
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @AV_PIX_FMT_FLAG_PLANAR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %65

37:                                               ; preds = %32, %25
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @AV_PIX_FMT_FLAG_BE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* @HAVE_BIGENDIAN, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = icmp eq i32 %45, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %37
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 8
  br i1 %58, label %59, label %65

59:                                               ; preds = %51, %37
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @ff_add_format(i32** %4, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %73

65:                                               ; preds = %59, %51, %32, %12
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %8

69:                                               ; preds = %8
  %70 = load i32*, i32** %3, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @ff_set_common_formats(i32* %70, i32* %71)
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %63
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_5__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @ff_add_format(i32**, i32) #1

declare dso_local i32 @ff_set_common_formats(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
