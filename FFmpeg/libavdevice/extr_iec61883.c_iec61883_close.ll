; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_iec61883.c_iec61883_close.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_iec61883.c_iec61883_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.iec61883_data* }
%struct.iec61883_data = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_5__*, %struct.TYPE_5__* }

@CONFIG_MPEGTS_DEMUXER = common dso_local global i64 0, align 8
@IEC61883_HDV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @iec61883_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iec61883_close(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.iec61883_data*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.iec61883_data*, %struct.iec61883_data** %6, align 8
  store %struct.iec61883_data* %7, %struct.iec61883_data** %3, align 8
  %8 = load i64, i64* @CONFIG_MPEGTS_DEMUXER, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = load %struct.iec61883_data*, %struct.iec61883_data** %3, align 8
  %12 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IEC61883_HDV, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load %struct.iec61883_data*, %struct.iec61883_data** %3, align 8
  %18 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %17, i32 0, i32 11
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @iec61883_mpeg2_recv_stop(i32 %19)
  %21 = load %struct.iec61883_data*, %struct.iec61883_data** %3, align 8
  %22 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %21, i32 0, i32 11
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @iec61883_mpeg2_close(i32 %23)
  %25 = load %struct.iec61883_data*, %struct.iec61883_data** %3, align 8
  %26 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @avpriv_mpegts_parse_close(i32 %27)
  br label %41

29:                                               ; preds = %10, %1
  %30 = load %struct.iec61883_data*, %struct.iec61883_data** %3, align 8
  %31 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @iec61883_dv_fb_stop(i32 %32)
  %34 = load %struct.iec61883_data*, %struct.iec61883_data** %3, align 8
  %35 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @iec61883_dv_fb_close(i32 %36)
  %38 = load %struct.iec61883_data*, %struct.iec61883_data** %3, align 8
  %39 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %38, i32 0, i32 8
  %40 = call i32 @av_freep(%struct.TYPE_5__** %39)
  br label %41

41:                                               ; preds = %29, %16
  br label %42

42:                                               ; preds = %47, %41
  %43 = load %struct.iec61883_data*, %struct.iec61883_data** %3, align 8
  %44 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %43, i32 0, i32 7
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = icmp ne %struct.TYPE_5__* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.iec61883_data*, %struct.iec61883_data** %3, align 8
  %49 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %48, i32 0, i32 7
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %4, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load %struct.iec61883_data*, %struct.iec61883_data** %3, align 8
  %55 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %54, i32 0, i32 7
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %55, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = call i32 @av_freep(%struct.TYPE_5__** %57)
  %59 = call i32 @av_freep(%struct.TYPE_5__** %4)
  br label %42

60:                                               ; preds = %42
  %61 = load %struct.iec61883_data*, %struct.iec61883_data** %3, align 8
  %62 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.iec61883_data*, %struct.iec61883_data** %3, align 8
  %65 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.iec61883_data*, %struct.iec61883_data** %3, align 8
  %68 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.iec61883_data*, %struct.iec61883_data** %3, align 8
  %71 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @raw1394_get_local_id(i32 %72)
  %74 = load %struct.iec61883_data*, %struct.iec61883_data** %3, align 8
  %75 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.iec61883_data*, %struct.iec61883_data** %3, align 8
  %78 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.iec61883_data*, %struct.iec61883_data** %3, align 8
  %81 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @iec61883_cmp_disconnect(i32 %63, i32 %66, i32 %69, i32 %73, i32 %76, i32 %79, i32 %82)
  %84 = load %struct.iec61883_data*, %struct.iec61883_data** %3, align 8
  %85 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @raw1394_destroy_handle(i32 %86)
  ret i32 0
}

declare dso_local i32 @iec61883_mpeg2_recv_stop(i32) #1

declare dso_local i32 @iec61883_mpeg2_close(i32) #1

declare dso_local i32 @avpriv_mpegts_parse_close(i32) #1

declare dso_local i32 @iec61883_dv_fb_stop(i32) #1

declare dso_local i32 @iec61883_dv_fb_close(i32) #1

declare dso_local i32 @av_freep(%struct.TYPE_5__**) #1

declare dso_local i32 @iec61883_cmp_disconnect(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @raw1394_get_local_id(i32) #1

declare dso_local i32 @raw1394_destroy_handle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
