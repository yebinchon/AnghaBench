; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_scanline2x.c_scanline2x_generic_packets.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_scanline2x.c_scanline2x_generic_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.softfilter_work_packet = type { %struct.softfilter_thread_data*, i32 }
%struct.softfilter_thread_data = type { i64, i64, i32, i32, i32*, i32* }
%struct.filter_data = type { i64, i32* }

@SOFTFILTER_FMT_XRGB8888 = common dso_local global i64 0, align 8
@scanline2x_work_cb_xrgb8888 = common dso_local global i32 0, align 4
@SOFTFILTER_FMT_RGB565 = common dso_local global i64 0, align 8
@scanline2x_work_cb_rgb565 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.softfilter_work_packet*, i8*, i64, i8*, i32, i32, i64)* @scanline2x_generic_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scanline2x_generic_packets(i8* %0, %struct.softfilter_work_packet* %1, i8* %2, i64 %3, i8* %4, i32 %5, i32 %6, i64 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca %struct.softfilter_work_packet*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.filter_data*, align 8
  %18 = alloca %struct.softfilter_thread_data*, align 8
  store i8* %0, i8** %9, align 8
  store %struct.softfilter_work_packet* %1, %struct.softfilter_work_packet** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i64 %7, i64* %16, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.filter_data*
  store %struct.filter_data* %20, %struct.filter_data** %17, align 8
  %21 = load %struct.filter_data*, %struct.filter_data** %17, align 8
  %22 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = bitcast i32* %24 to %struct.softfilter_thread_data*
  store %struct.softfilter_thread_data* %25, %struct.softfilter_thread_data** %18, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %18, align 8
  %29 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %28, i32 0, i32 5
  store i32* %27, i32** %29, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %18, align 8
  %33 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %32, i32 0, i32 4
  store i32* %31, i32** %33, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %18, align 8
  %36 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %16, align 8
  %38 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %18, align 8
  %39 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %18, align 8
  %42 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %15, align 4
  %44 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %18, align 8
  %45 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.filter_data*, %struct.filter_data** %17, align 8
  %47 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SOFTFILTER_FMT_XRGB8888, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %8
  %52 = load i32, i32* @scanline2x_work_cb_xrgb8888, align 4
  %53 = load %struct.softfilter_work_packet*, %struct.softfilter_work_packet** %10, align 8
  %54 = getelementptr inbounds %struct.softfilter_work_packet, %struct.softfilter_work_packet* %53, i64 0
  %55 = getelementptr inbounds %struct.softfilter_work_packet, %struct.softfilter_work_packet* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 8
  br label %68

56:                                               ; preds = %8
  %57 = load %struct.filter_data*, %struct.filter_data** %17, align 8
  %58 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SOFTFILTER_FMT_RGB565, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load i32, i32* @scanline2x_work_cb_rgb565, align 4
  %64 = load %struct.softfilter_work_packet*, %struct.softfilter_work_packet** %10, align 8
  %65 = getelementptr inbounds %struct.softfilter_work_packet, %struct.softfilter_work_packet* %64, i64 0
  %66 = getelementptr inbounds %struct.softfilter_work_packet, %struct.softfilter_work_packet* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 8
  br label %67

67:                                               ; preds = %62, %56
  br label %68

68:                                               ; preds = %67, %51
  %69 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %18, align 8
  %70 = load %struct.softfilter_work_packet*, %struct.softfilter_work_packet** %10, align 8
  %71 = getelementptr inbounds %struct.softfilter_work_packet, %struct.softfilter_work_packet* %70, i64 0
  %72 = getelementptr inbounds %struct.softfilter_work_packet, %struct.softfilter_work_packet* %71, i32 0, i32 0
  store %struct.softfilter_thread_data* %69, %struct.softfilter_thread_data** %72, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
