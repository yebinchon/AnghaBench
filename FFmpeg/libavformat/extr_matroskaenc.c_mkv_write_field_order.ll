; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_write_field_order.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_write_field_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATROSKA_ID_VIDEOFLAGINTERLACED = common dso_local global i32 0, align 4
@MATROSKA_VIDEO_INTERLACE_FLAG_PROGRESSIVE = common dso_local global i32 0, align 4
@MATROSKA_VIDEO_INTERLACE_FLAG_INTERLACED = common dso_local global i32 0, align 4
@MODE_WEBM = common dso_local global i32 0, align 4
@MATROSKA_ID_VIDEOFIELDORDER = common dso_local global i32 0, align 4
@MATROSKA_VIDEO_FIELDORDER_TT = common dso_local global i32 0, align 4
@MATROSKA_VIDEO_FIELDORDER_BB = common dso_local global i32 0, align 4
@MATROSKA_VIDEO_FIELDORDER_TB = common dso_local global i32 0, align 4
@MATROSKA_VIDEO_FIELDORDER_BT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @mkv_write_field_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mkv_write_field_order(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %46 [
    i32 128, label %8
    i32 131, label %9
    i32 129, label %14
    i32 133, label %14
    i32 130, label %14
    i32 132, label %14
  ]

8:                                                ; preds = %3
  br label %46

9:                                                ; preds = %3
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @MATROSKA_ID_VIDEOFLAGINTERLACED, align 4
  %12 = load i32, i32* @MATROSKA_VIDEO_INTERLACE_FLAG_PROGRESSIVE, align 4
  %13 = call i32 @put_ebml_uint(i32* %10, i32 %11, i32 %12)
  br label %46

14:                                               ; preds = %3, %3, %3, %3
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @MATROSKA_ID_VIDEOFLAGINTERLACED, align 4
  %17 = load i32, i32* @MATROSKA_VIDEO_INTERLACE_FLAG_INTERLACED, align 4
  %18 = call i32 @put_ebml_uint(i32* %15, i32 %16, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MODE_WEBM, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %44 [
    i32 129, label %24
    i32 133, label %29
    i32 130, label %34
    i32 132, label %39
  ]

24:                                               ; preds = %22
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @MATROSKA_ID_VIDEOFIELDORDER, align 4
  %27 = load i32, i32* @MATROSKA_VIDEO_FIELDORDER_TT, align 4
  %28 = call i32 @put_ebml_uint(i32* %25, i32 %26, i32 %27)
  br label %44

29:                                               ; preds = %22
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @MATROSKA_ID_VIDEOFIELDORDER, align 4
  %32 = load i32, i32* @MATROSKA_VIDEO_FIELDORDER_BB, align 4
  %33 = call i32 @put_ebml_uint(i32* %30, i32 %31, i32 %32)
  br label %44

34:                                               ; preds = %22
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @MATROSKA_ID_VIDEOFIELDORDER, align 4
  %37 = load i32, i32* @MATROSKA_VIDEO_FIELDORDER_TB, align 4
  %38 = call i32 @put_ebml_uint(i32* %35, i32 %36, i32 %37)
  br label %44

39:                                               ; preds = %22
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* @MATROSKA_ID_VIDEOFIELDORDER, align 4
  %42 = load i32, i32* @MATROSKA_VIDEO_FIELDORDER_BT, align 4
  %43 = call i32 @put_ebml_uint(i32* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %22, %39, %34, %29, %24
  br label %45

45:                                               ; preds = %44, %14
  br label %46

46:                                               ; preds = %45, %3, %9, %8
  ret void
}

declare dso_local i32 @put_ebml_uint(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
