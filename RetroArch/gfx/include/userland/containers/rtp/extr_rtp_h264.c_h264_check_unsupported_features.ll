; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_h264.c_h264_check_unsupported_features.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_h264.c_h264_check_unsupported_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"sprop-interleaving-depth\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"sprop-deint-buf-req\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"sprop-init-buf-time\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"sprop-max-don-diff\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"H.264: Interleaved packetization is not supported\00", align 1
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @h264_check_unsupported_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_check_unsupported_features(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call i64 @rtp_get_parameter_u32(i32* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %6)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @rtp_get_parameter_u32(i32* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @rtp_get_parameter_u32(i32* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @rtp_get_parameter_u32(i32* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* %6)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18, %14, %10, %2
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @LOG_ERROR(i32* %23, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %25 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @rtp_get_parameter_u32(i32*, i8*, i32*) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
