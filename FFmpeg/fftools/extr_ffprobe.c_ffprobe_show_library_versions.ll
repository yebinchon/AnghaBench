; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_ffprobe_show_library_versions.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_ffprobe_show_library_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SECTION_ID_LIBRARY_VERSIONS = common dso_local global i32 0, align 4
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
@swscale = common dso_local global i32 0, align 4
@SWSCALE = common dso_local global i32 0, align 4
@swresample = common dso_local global i32 0, align 4
@SWRESAMPLE = common dso_local global i32 0, align 4
@postproc = common dso_local global i32 0, align 4
@POSTPROC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @ffprobe_show_library_versions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffprobe_show_library_versions(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @SECTION_ID_LIBRARY_VERSIONS, align 4
  %5 = call i32 @writer_print_section_header(i32* %3, i32 %4)
  %6 = load i32, i32* @avutil, align 4
  %7 = load i32, i32* @AVUTIL, align 4
  %8 = call i32 @SHOW_LIB_VERSION(i32 %6, i32 %7)
  %9 = load i32, i32* @avcodec, align 4
  %10 = load i32, i32* @AVCODEC, align 4
  %11 = call i32 @SHOW_LIB_VERSION(i32 %9, i32 %10)
  %12 = load i32, i32* @avformat, align 4
  %13 = load i32, i32* @AVFORMAT, align 4
  %14 = call i32 @SHOW_LIB_VERSION(i32 %12, i32 %13)
  %15 = load i32, i32* @avdevice, align 4
  %16 = load i32, i32* @AVDEVICE, align 4
  %17 = call i32 @SHOW_LIB_VERSION(i32 %15, i32 %16)
  %18 = load i32, i32* @avfilter, align 4
  %19 = load i32, i32* @AVFILTER, align 4
  %20 = call i32 @SHOW_LIB_VERSION(i32 %18, i32 %19)
  %21 = load i32, i32* @swscale, align 4
  %22 = load i32, i32* @SWSCALE, align 4
  %23 = call i32 @SHOW_LIB_VERSION(i32 %21, i32 %22)
  %24 = load i32, i32* @swresample, align 4
  %25 = load i32, i32* @SWRESAMPLE, align 4
  %26 = call i32 @SHOW_LIB_VERSION(i32 %24, i32 %25)
  %27 = load i32, i32* @postproc, align 4
  %28 = load i32, i32* @POSTPROC, align 4
  %29 = call i32 @SHOW_LIB_VERSION(i32 %27, i32 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @writer_print_section_footer(i32* %30)
  ret void
}

declare dso_local i32 @writer_print_section_header(i32*, i32) #1

declare dso_local i32 @SHOW_LIB_VERSION(i32, i32) #1

declare dso_local i32 @writer_print_section_footer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
