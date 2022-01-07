; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_super2xsai.c_supertwoxsai_generic_packets.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_super2xsai.c_supertwoxsai_generic_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.softfilter_work_packet = type { %struct.softfilter_thread_data*, i32 }
%struct.softfilter_thread_data = type { i64, i64, i32, i32, i32, i32, i32*, i32* }
%struct.filter_data = type { i32, i64, i32* }

@SUPERTWOXSAI_SCALE = common dso_local global i32 0, align 4
@SOFTFILTER_FMT_RGB565 = common dso_local global i64 0, align 8
@supertwoxsai_work_cb_rgb565 = common dso_local global i32 0, align 4
@SOFTFILTER_FMT_XRGB8888 = common dso_local global i64 0, align 8
@supertwoxsai_work_cb_xrgb8888 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.softfilter_work_packet*, i8*, i64, i8*, i32, i32, i64)* @supertwoxsai_generic_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @supertwoxsai_generic_packets(i8* %0, %struct.softfilter_work_packet* %1, i8* %2, i64 %3, i8* %4, i32 %5, i32 %6, i64 %7) #0 {
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

24:                                               ; preds = %129, %8
  %25 = load i32, i32* %17, align 4
  %26 = load %struct.filter_data*, %struct.filter_data** %18, align 8
  %27 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %132

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
  %56 = load i32, i32* @SUPERTWOXSAI_SCALE, align 4
  %57 = mul i32 %55, %56
  %58 = zext i32 %57 to i64
  %59 = load i64, i64* %12, align 8
  %60 = mul i64 %58, %59
  %61 = getelementptr inbounds i32, i32* %54, i64 %60
  %62 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %19, align 8
  %63 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %62, i32 0, i32 7
  store i32* %61, i32** %63, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = bitcast i8* %64 to i32*
  %66 = load i32, i32* %20, align 4
  %67 = zext i32 %66 to i64
  %68 = load i64, i64* %16, align 8
  %69 = mul i64 %67, %68
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %19, align 8
  %72 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %71, i32 0, i32 6
  store i32* %70, i32** %72, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %19, align 8
  %75 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* %16, align 8
  %77 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %19, align 8
  %78 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %19, align 8
  %81 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %21, align 4
  %83 = load i32, i32* %20, align 4
  %84 = sub i32 %82, %83
  %85 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %19, align 8
  %86 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %20, align 4
  %88 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %19, align 8
  %89 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %21, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %19, align 8
  %95 = getelementptr inbounds %struct.softfilter_thread_data, %struct.softfilter_thread_data* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  %96 = load %struct.filter_data*, %struct.filter_data** %18, align 8
  %97 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SOFTFILTER_FMT_RGB565, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %30
  %102 = load i32, i32* @supertwoxsai_work_cb_rgb565, align 4
  %103 = load %struct.softfilter_work_packet*, %struct.softfilter_work_packet** %10, align 8
  %104 = load i32, i32* %17, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.softfilter_work_packet, %struct.softfilter_work_packet* %103, i64 %105
  %107 = getelementptr inbounds %struct.softfilter_work_packet, %struct.softfilter_work_packet* %106, i32 0, i32 1
  store i32 %102, i32* %107, align 8
  br label %122

108:                                              ; preds = %30
  %109 = load %struct.filter_data*, %struct.filter_data** %18, align 8
  %110 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @SOFTFILTER_FMT_XRGB8888, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %108
  %115 = load i32, i32* @supertwoxsai_work_cb_xrgb8888, align 4
  %116 = load %struct.softfilter_work_packet*, %struct.softfilter_work_packet** %10, align 8
  %117 = load i32, i32* %17, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.softfilter_work_packet, %struct.softfilter_work_packet* %116, i64 %118
  %120 = getelementptr inbounds %struct.softfilter_work_packet, %struct.softfilter_work_packet* %119, i32 0, i32 1
  store i32 %115, i32* %120, align 8
  br label %121

121:                                              ; preds = %114, %108
  br label %122

122:                                              ; preds = %121, %101
  %123 = load %struct.softfilter_thread_data*, %struct.softfilter_thread_data** %19, align 8
  %124 = load %struct.softfilter_work_packet*, %struct.softfilter_work_packet** %10, align 8
  %125 = load i32, i32* %17, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.softfilter_work_packet, %struct.softfilter_work_packet* %124, i64 %126
  %128 = getelementptr inbounds %struct.softfilter_work_packet, %struct.softfilter_work_packet* %127, i32 0, i32 0
  store %struct.softfilter_thread_data* %123, %struct.softfilter_thread_data** %128, align 8
  br label %129

129:                                              ; preds = %122
  %130 = load i32, i32* %17, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %17, align 4
  br label %24

132:                                              ; preds = %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
