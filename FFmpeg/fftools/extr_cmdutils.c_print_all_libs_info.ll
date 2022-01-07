; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_print_all_libs_info.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_print_all_libs_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@avutil = common dso_local global i32 0, align 4
@AVUTIL = common dso_local global i32 0, align 4
@avcodec = common dso_local global i32 0, align 4
@AVCODEC = common dso_local global i32 0, align 4
@avformat = common dso_local global i32 0, align 4
@AVFORMAT = common dso_local global i32 0, align 4
@avdevice = common dso_local global i32 0, align 4
@AVDEVICE = common dso_local global i32 0, align 4
@avfilter = common dso_local global i32 0, align 4
@AVFILTER = common dso_local global i32 0, align 4
@avresample = common dso_local global i32 0, align 4
@AVRESAMPLE = common dso_local global i32 0, align 4
@swscale = common dso_local global i32 0, align 4
@SWSCALE = common dso_local global i32 0, align 4
@swresample = common dso_local global i32 0, align 4
@SWRESAMPLE = common dso_local global i32 0, align 4
@postproc = common dso_local global i32 0, align 4
@POSTPROC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @print_all_libs_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_all_libs_info(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @avutil, align 4
  %6 = load i32, i32* @AVUTIL, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @PRINT_LIB_INFO(i32 %5, i32 %6, i32 %7, i32 %8)
  %10 = load i32, i32* @avcodec, align 4
  %11 = load i32, i32* @AVCODEC, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @PRINT_LIB_INFO(i32 %10, i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* @avformat, align 4
  %16 = load i32, i32* @AVFORMAT, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @PRINT_LIB_INFO(i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* @avdevice, align 4
  %21 = load i32, i32* @AVDEVICE, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @PRINT_LIB_INFO(i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @avfilter, align 4
  %26 = load i32, i32* @AVFILTER, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @PRINT_LIB_INFO(i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* @avresample, align 4
  %31 = load i32, i32* @AVRESAMPLE, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @PRINT_LIB_INFO(i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @swscale, align 4
  %36 = load i32, i32* @SWSCALE, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @PRINT_LIB_INFO(i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* @swresample, align 4
  %41 = load i32, i32* @SWRESAMPLE, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @PRINT_LIB_INFO(i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* @postproc, align 4
  %46 = load i32, i32* @POSTPROC, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @PRINT_LIB_INFO(i32 %45, i32 %46, i32 %47, i32 %48)
  ret void
}

declare dso_local i32 @PRINT_LIB_INFO(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
