; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_stbl.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_stbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__**, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@MP4_BOX_TYPE_STSD = common dso_local global i32 0, align 4
@MP4_BOX_TYPE_STTS = common dso_local global i32 0, align 4
@MP4_BOX_TYPE_STSC = common dso_local global i32 0, align 4
@MP4_BOX_TYPE_STSZ = common dso_local global i32 0, align 4
@MP4_BOX_TYPE_STCO = common dso_local global i32 0, align 4
@VC_CONTAINER_ES_TYPE_VIDEO = common dso_local global i64 0, align 8
@MP4_BOX_TYPE_STSS = common dso_local global i32 0, align 4
@MP4_BOX_TYPE_CO64 = common dso_local global i32 0, align 4
@MP4_BOX_TYPE_CTTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*)* @mp4_write_box_stbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mp4_write_box_stbl(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %7 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %7, i64* %4, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %5, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %14, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %15, i64 %18
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %6, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = load i32, i32* @MP4_BOX_TYPE_STSD, align 4
  %23 = call i64 @mp4_write_box(%struct.TYPE_11__* %21, i32 %22)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i64, i64* %4, align 8
  store i64 %28, i64* %2, align 8
  br label %79

29:                                               ; preds = %1
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = load i32, i32* @MP4_BOX_TYPE_STTS, align 4
  %32 = call i64 @mp4_write_box(%struct.TYPE_11__* %30, i32 %31)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i64, i64* %4, align 8
  store i64 %37, i64* %2, align 8
  br label %79

38:                                               ; preds = %29
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = load i32, i32* @MP4_BOX_TYPE_STSC, align 4
  %41 = call i64 @mp4_write_box(%struct.TYPE_11__* %39, i32 %40)
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i64, i64* %4, align 8
  store i64 %46, i64* %2, align 8
  br label %79

47:                                               ; preds = %38
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = load i32, i32* @MP4_BOX_TYPE_STSZ, align 4
  %50 = call i64 @mp4_write_box(%struct.TYPE_11__* %48, i32 %49)
  store i64 %50, i64* %4, align 8
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i64, i64* %4, align 8
  store i64 %55, i64* %2, align 8
  br label %79

56:                                               ; preds = %47
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = load i32, i32* @MP4_BOX_TYPE_STCO, align 4
  %59 = call i64 @mp4_write_box(%struct.TYPE_11__* %57, i32 %58)
  store i64 %59, i64* %4, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @VC_CONTAINER_ES_TYPE_VIDEO, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %56
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %69 = load i32, i32* @MP4_BOX_TYPE_STSS, align 4
  %70 = call i64 @mp4_write_box(%struct.TYPE_11__* %68, i32 %69)
  store i64 %70, i64* %4, align 8
  %71 = load i64, i64* %4, align 8
  %72 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i64, i64* %4, align 8
  store i64 %75, i64* %2, align 8
  br label %79

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %56
  %78 = load i64, i64* %4, align 8
  store i64 %78, i64* %2, align 8
  br label %79

79:                                               ; preds = %77, %74, %54, %45, %36, %27
  %80 = load i64, i64* %2, align 8
  ret i64 %80
}

declare dso_local i64 @mp4_write_box(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
