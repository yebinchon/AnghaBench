; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_encavcodec.c_get_packets.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_encavcodec.c_get_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_18__, i32, i32 }
%struct.TYPE_18__ = type { i32, i64, i64, i64, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"encavcodec: avcodec_receive_packet failed\00", align 1
@HB_FLAG_FRAMETYPE_REF = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@HB_FLAG_FRAMETYPE_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, i32*)* @get_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_packets(%struct.TYPE_20__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %5, align 8
  br label %13

13:                                               ; preds = %2, %100
  %14 = call i32 @av_init_packet(%struct.TYPE_22__* %7)
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @avcodec_receive_packet(i32 %17, %struct.TYPE_22__* %7)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = call i32 @AVERROR(i32 %20)
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @AVERROR_EOF, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %13
  br label %108

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @hb_log(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %28
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_21__* @hb_buffer_init(i32 %35)
  store %struct.TYPE_21__* %36, %struct.TYPE_21__** %8, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @memcpy(i32 %39, i32 %41, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @get_frame_start(%struct.TYPE_19__* %52, i32 %53)
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 4
  store i32 %54, i32* %57, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @get_frame_duration(%struct.TYPE_19__* %58, i32 %59)
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 2
  store i64 %60, i64* %63, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %67, %71
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 3
  store i64 %72, i64* %75, align 8
  %76 = load i32, i32* @HB_FLAG_FRAMETYPE_REF, align 4
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %33
  %89 = load i32, i32* @HB_FLAG_FRAMETYPE_KEY, align 4
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %89
  store i32 %94, i32* %92, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %99 = call i32 @hb_chapter_dequeue(i32 %97, %struct.TYPE_21__* %98)
  br label %100

100:                                              ; preds = %88, %33
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %103 = call %struct.TYPE_21__* @process_delay_list(%struct.TYPE_19__* %101, %struct.TYPE_21__* %102)
  store %struct.TYPE_21__* %103, %struct.TYPE_21__** %8, align 8
  %104 = load i32*, i32** %4, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %106 = call i32 @hb_buffer_list_append(i32* %104, %struct.TYPE_21__* %105)
  %107 = call i32 @av_packet_unref(%struct.TYPE_22__* %7)
  br label %13

108:                                              ; preds = %27
  ret void
}

declare dso_local i32 @av_init_packet(%struct.TYPE_22__*) #1

declare dso_local i32 @avcodec_receive_packet(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @hb_log(i8*) #1

declare dso_local %struct.TYPE_21__* @hb_buffer_init(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @get_frame_start(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @get_frame_duration(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @hb_chapter_dequeue(i32, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @process_delay_list(%struct.TYPE_19__*, %struct.TYPE_21__*) #1

declare dso_local i32 @hb_buffer_list_append(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
