; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_mpeg4.c_mp4_check_unsupported_features.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_mpeg4.c_mp4_check_unsupported_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"randomAccessIndication\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"MPEG-4: random access not supported\00", align 1
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"maxDisplacement\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"de-interleaveBufferSize\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"MPEG-4: interleaved packetization not supported\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"streamStateIndication\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"MPEG-4: system streams not supported\00", align 1
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @mp4_check_unsupported_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp4_check_unsupported_features(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @VC_CONTAINER_PARAM_UNUSED(i32* %9)
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @VC_CONTAINER_PARAM_UNUSED(i32* %11)
  %13 = load i32*, i32** %7, align 8
  %14 = call i64 @rtp_get_parameter_u32(i32* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %8)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @LOG_ERROR(i32* %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %19, i32* %4, align 4
  br label %42

20:                                               ; preds = %3
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @rtp_get_parameter_u32(i32* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %8)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @rtp_get_parameter_u32(i32* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32* %8)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24, %20
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @LOG_ERROR(i32* %29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %31 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %31, i32* %4, align 4
  br label %42

32:                                               ; preds = %24
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @rtp_get_parameter_u32(i32* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32* %8)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @LOG_ERROR(i32* %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %39 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %39, i32* %4, align 4
  br label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %36, %28, %16
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @VC_CONTAINER_PARAM_UNUSED(i32*) #1

declare dso_local i64 @rtp_get_parameter_u32(i32*, i8*, i32*) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
