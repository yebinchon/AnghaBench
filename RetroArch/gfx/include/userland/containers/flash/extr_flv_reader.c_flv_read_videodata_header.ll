; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/flash/extr_flv_reader.c_flv_read_videodata_header.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/flash/extr_flv_reader.c_flv_read_videodata_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"FrameType/CodecID\00", align 1
@FLV_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@FLV_FLAG_INTERFRAME = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_SPARK = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_VP6 = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_H264 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @flv_read_videodata_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flv_read_videodata_header(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @READ_U8(i32* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %7, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = ashr i32 %13, 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @FLV_FLAG_KEYFRAME, align 4
  br label %27

18:                                               ; preds = %12
  %19 = load i32, i32* %7, align 4
  %20 = ashr i32 %19, 4
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @FLV_FLAG_INTERFRAME, align 4
  br label %25

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  br label %27

27:                                               ; preds = %25, %16
  %28 = phi i32 [ %17, %16 ], [ %26, %25 ]
  %29 = load i32*, i32** %6, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %3
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 15
  switch i32 %32, label %51 [
    i32 2, label %33
    i32 3, label %36
    i32 4, label %39
    i32 5, label %42
    i32 6, label %45
    i32 7, label %48
  ]

33:                                               ; preds = %30
  %34 = load i32, i32* @VC_CONTAINER_CODEC_SPARK, align 4
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  br label %53

36:                                               ; preds = %30
  %37 = call i32 @VC_FOURCC(i8 signext 115, i8 signext 99, i8 signext 114, i8 signext 49)
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  br label %53

39:                                               ; preds = %30
  %40 = load i32, i32* @VC_CONTAINER_CODEC_VP6, align 4
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  br label %53

42:                                               ; preds = %30
  %43 = call i32 @VC_FOURCC(i8 signext 118, i8 signext 112, i8 signext 54, i8 signext 97)
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  br label %53

45:                                               ; preds = %30
  %46 = call i32 @VC_FOURCC(i8 signext 115, i8 signext 99, i8 signext 114, i8 signext 50)
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  br label %53

48:                                               ; preds = %30
  %49 = load i32, i32* @VC_CONTAINER_CODEC_H264, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  br label %53

51:                                               ; preds = %30
  %52 = load i32*, i32** %5, align 8
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %51, %48, %45, %42, %39, %36, %33
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @STREAM_STATUS(i32* %54)
  ret i32 %55
}

declare dso_local i32 @READ_U8(i32*, i8*) #1

declare dso_local i32 @VC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @STREAM_STATUS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
