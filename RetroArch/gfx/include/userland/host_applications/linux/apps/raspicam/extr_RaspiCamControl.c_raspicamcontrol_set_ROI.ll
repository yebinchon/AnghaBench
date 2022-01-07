; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiCamControl.c_raspicamcontrol_set_ROI.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiCamControl.c_raspicamcontrol_set_ROI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@MMAL_PARAMETER_INPUT_CROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raspicamcontrol_set_ROI(%struct.TYPE_12__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_10__, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = bitcast %struct.TYPE_10__* %4 to { i64, i64 }*
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %1, i64* %8, align 4
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %2, i64* %9, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  %10 = bitcast %struct.TYPE_11__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 28, i1 false)
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %12 = load i32, i32* @MMAL_PARAMETER_INPUT_CROP, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 65536, %14
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 65536, %19
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 65536, %24
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 65536, %29
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %37 = call i32 @mmal_port_parameter_set(i32 %35, i32* %36)
  %38 = call i32 @mmal_status_to_int(i32 %37)
  ret i32 %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mmal_status_to_int(i32) #2

declare dso_local i32 @mmal_port_parameter_set(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
