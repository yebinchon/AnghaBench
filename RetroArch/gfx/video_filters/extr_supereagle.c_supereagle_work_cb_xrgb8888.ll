; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_supereagle.c_supereagle_work_cb_xrgb8888.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_supereagle.c_supereagle_work_cb_xrgb8888.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.softfilter_thread_data = type { i32, i32, i32, i32, i32, i32, i64, i64 }

@SOFTFILTER_BPP_XRGB8888 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @supereagle_work_cb_xrgb8888 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @supereagle_work_cb_xrgb8888(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.softfilter_thread_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.softfilter_thread_data*
  store %struct.softfilter_thread_data* %11, %struct.softfilter_thread_data** %5, align 8
  %12 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %13 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %12, i32 0, i32 7
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %6, align 8
  %16 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %17 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %7, align 8
  %20 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %21 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %24 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %29 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %32 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %36 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SOFTFILTER_BPP_XRGB8888, align 4
  %39 = sdiv i32 %37, %38
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %5, align 8
  %42 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SOFTFILTER_BPP_XRGB8888, align 4
  %45 = sdiv i32 %43, %44
  %46 = call i32 @supereagle_generic_xrgb8888(i32 %26, i32 %27, i32 %30, i32 %33, i32* %34, i32 %39, i32* %40, i32 %45)
  ret void
}

declare dso_local i32 @supereagle_generic_xrgb8888(i32, i32, i32, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
