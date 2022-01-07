; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_h264.c_h264_get_chroma_format.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_h264.c_h264_get_chroma_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"chroma_format_idc\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"separate_colour_plane_flag\00", align 1
@CHROMA_FORMAT_YUV_444_PLANAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"bit_depth_luma_minus8\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"bit_depth_chroma_minus8\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"qpprime_y_zero_transform_bypass_flag\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"seq_scaling_matrix_present_flag\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"seq_scaling_list_present_flag\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @h264_get_chroma_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_get_chroma_format(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @BITS_READ_U32_EXP(i32* %8, i32* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @BITS_READ_U32(i32* %14, i32* %15, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @CHROMA_FORMAT_YUV_444_PLANAR, align 4
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %18, %13, %2
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @BITS_SKIP_EXP(i32* %21, i32* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32*, i32** %3, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @BITS_SKIP_EXP(i32* %24, i32* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32*, i32** %3, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @BITS_SKIP(i32* %27, i32* %28, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %30 = load i32*, i32** %3, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i64 @BITS_READ_U32(i32* %30, i32* %31, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %20
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 3
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 12, i32 8
  store i32 %38, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %57, %34
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load i32*, i32** %3, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i64 @BITS_READ_U32(i32* %44, i32* %45, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i32*, i32** %3, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 6
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 16, i32 64
  %55 = call i32 @h264_skip_scaling_list(i32* %49, i32* %50, i32 %54)
  br label %56

56:                                               ; preds = %48, %43
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %39

60:                                               ; preds = %39
  br label %61

61:                                               ; preds = %60, %20
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @BITS_READ_U32_EXP(i32*, i32*, i8*) #1

declare dso_local i64 @BITS_READ_U32(i32*, i32*, i32, i8*) #1

declare dso_local i32 @BITS_SKIP_EXP(i32*, i32*, i8*) #1

declare dso_local i32 @BITS_SKIP(i32*, i32*, i32, i8*) #1

declare dso_local i32 @h264_skip_scaling_list(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
