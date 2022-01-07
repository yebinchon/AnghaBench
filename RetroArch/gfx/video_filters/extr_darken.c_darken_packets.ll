; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_darken.c_darken_packets.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_darken.c_darken_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.softfilter_work_packet = type { %struct.softfilter_thread_data*, i32 }
%struct.softfilter_thread_data = type { i64, i64, i32, i32, i32*, i32* }
%struct.filter_data = type { i32, i64, i32* }

@SOFTFILTER_FMT_XRGB8888 = common dso_local global i64 0, align 8
@darken_work_cb_xrgb8888 = common dso_local global i32 0, align 4
@SOFTFILTER_FMT_RGB565 = common dso_local global i64 0, align 8
@darken_work_cb_rgb565 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.softfilter_work_packet*, i8*, i64, i8*, i32, i32, i64)* @darken_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @darken_packets(i8* %0, %struct.softfilter_work_packet* %1, i8* %2, i64 %3, i8* %4, i32 %5, i32 %6, i64 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca %struct.softfilter_work_packet*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.filter_data*, align 8
  %19 = alloca %struct.softfilter_thread_data*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store %struct.softfilter_work_packet* %1, %struct.softfilter_work_packet** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i64 %7, i64* %16, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.filter_data*
  store %struct.filter_data* %23, %struct.filter_data** %18, align 8
  store i32 0, i32* %17, align 4
  br label %24

24:                                               ; preds = %118, %8
  %25 = load i32, i32* %17, align 4
  %26 = load %struct.filter_data*, %struct.filter_data** %18, align 8
  %27 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %121

30:                                               ; preds = %24
  %31 = load %struct.filter_data*, %struct.filter_data** %18, align 8
  %32 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %17, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = bitcast i32* %36 to %struct.softfilter_thread_data*
  store %struct.softfilter_thread_data* %37, %struct.softfilter_thread_data** %19, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %17, align 4
  %40 = mul i32 %38, %39
  %41 = load %struct.filter_data*, %struct.filter_data** %18, align 8
  %42 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = udiv i32 %40, %43
  store i32 %44, i32* %20, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %17, align 4
  %47 = add i32 %46, 1
  %48 = mul i32 %45, %47
  %49 = load %struct.filter_data*, %struct.filter_data** %18, align 8
  %50 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = udiv i32 %48, %51
  store i32 %52, i32* %21, align 4
  %53 = load i8*, i8** %11, align 8
  %54 = bitcast i8* %53 to i32*
  %55 = load i32, i32* %20, align 4
  %56 = zext i32 %55 to i64
  %57 = load i64, i64* %12, align 8
  %58 = mul i64 %56, %57
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %19, align 8
  %61 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %60, i32 0, i32 5
  store i32* %59, i32** %61, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = bitcast i8* %62 to i32*
  %64 = load i32, i32* %20, align 4
  %65 = zext i32 %64 to i64
  %66 = load i64, i64* %16, align 8
  %67 = mul i64 %65, %66
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %19, align 8
  %70 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %69, i32 0, i32 4
  store i32* %68, i32** %70, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %19, align 8
  %73 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load i64, i64* %16, align 8
  %75 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %19, align 8
  %76 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %19, align 8
  %79 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %21, align 4
  %81 = load i32, i32* %20, align 4
  %82 = sub i32 %80, %81
  %83 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %19, align 8
  %84 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.filter_data*, %struct.filter_data** %18, align 8
  %86 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SOFTFILTER_FMT_XRGB8888, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %30
  %91 = load i32, i32* @darken_work_cb_xrgb8888, align 4
  %92 = load %struct.softfilter_work_packet*, %struct.softfilter_work_packet** %10, align 8
  %93 = load i32, i32* %17, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.softfilter_work_packet, %struct.softfilter_work_packet* %92, i64 %94
  %96 = getelementptr inbounds %struct.softfilter_work_packet, %struct.softfilter_work_packet* %95, i32 0, i32 1
  store i32 %91, i32* %96, align 8
  br label %111

97:                                               ; preds = %30
  %98 = load %struct.filter_data*, %struct.filter_data** %18, align 8
  %99 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @SOFTFILTER_FMT_RGB565, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load i32, i32* @darken_work_cb_rgb565, align 4
  %105 = load %struct.softfilter_work_packet*, %struct.softfilter_work_packet** %10, align 8
  %106 = load i32, i32* %17, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.softfilter_work_packet, %struct.softfilter_work_packet* %105, i64 %107
  %109 = getelementptr inbounds %struct.softfilter_work_packet, %struct.softfilter_work_packet* %108, i32 0, i32 1
  store i32 %104, i32* %109, align 8
  br label %110

110:                                              ; preds = %103, %97
  br label %111

111:                                              ; preds = %110, %90
  %112 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %19, align 8
  %113 = load %struct.softfilter_work_packet*, %struct.softfilter_work_packet** %10, align 8
  %114 = load i32, i32* %17, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.softfilter_work_packet, %struct.softfilter_work_packet* %113, i64 %115
  %117 = getelementptr inbounds %struct.softfilter_work_packet, %struct.softfilter_work_packet* %116, i32 0, i32 0
  store %struct.softfilter_thread_data* %112, %struct.softfilter_thread_data** %117, align 8
  br label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %17, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %17, align 4
  br label %24

121:                                              ; preds = %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
