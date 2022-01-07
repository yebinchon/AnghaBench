; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_iec61883.c_iec61883_parse_queue_dv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_iec61883.c_iec61883_parse_queue_dv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iec61883_data = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_10__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iec61883_data*, %struct.TYPE_11__*)* @iec61883_parse_queue_dv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iec61883_parse_queue_dv(%struct.iec61883_data* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iec61883_data*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  store %struct.iec61883_data* %0, %struct.iec61883_data** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %8 = load %struct.iec61883_data*, %struct.iec61883_data** %4, align 8
  %9 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = call i32 @avpriv_dv_get_packet(i32 %10, %struct.TYPE_11__* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %76

17:                                               ; preds = %2
  %18 = load %struct.iec61883_data*, %struct.iec61883_data** %4, align 8
  %19 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %6, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = icmp ne %struct.TYPE_10__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %76

24:                                               ; preds = %17
  %25 = load %struct.iec61883_data*, %struct.iec61883_data** %4, align 8
  %26 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @avpriv_dv_produce_packet(i32 %27, %struct.TYPE_11__* %28, %struct.TYPE_10__* %31, i32 %34, i32 -1)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = load %struct.iec61883_data*, %struct.iec61883_data** %4, align 8
  %40 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %39, i32 0, i32 1
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %24
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = call i32 @av_free(%struct.TYPE_10__* %46)
  br label %48

48:                                               ; preds = %43, %24
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = call i32 @av_free(%struct.TYPE_10__* %49)
  %51 = load %struct.iec61883_data*, %struct.iec61883_data** %4, align 8
  %52 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 8
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i32 -1, i32* %3, align 4
  br label %76

58:                                               ; preds = %48
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @av_packet_from_data(%struct.TYPE_11__* %59, i32 %62, i32 %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %58
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = call i32 @av_freep(i32* %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = call i32 @av_packet_unref(%struct.TYPE_11__* %72)
  store i32 -1, i32* %3, align 4
  br label %76

74:                                               ; preds = %58
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %68, %57, %23, %15
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @avpriv_dv_get_packet(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @avpriv_dv_produce_packet(i32, %struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @av_free(%struct.TYPE_10__*) #1

declare dso_local i64 @av_packet_from_data(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
