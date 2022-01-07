; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiGPS.c_raspi_gps_shutdown.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiGPS.c_raspi_gps_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { i64 }

@gps_reader_data = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Waiting for GPS reader thread to terminate\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Closing gpsd connection\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @raspi_gps_shutdown(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gps_reader_data, i32 0, i32 0), align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gps_reader_data, i32 0, i32 4), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %5
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gps_reader_data, i32 0, i32 3), align 8
  %13 = call i32 @pthread_join(i32 %12, i32* null)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gps_reader_data, i32 0, i32 2, i32 0), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %17, %14
  %24 = call i32 @disconnect_gpsd(%struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gps_reader_data, i32 0, i32 2))
  %25 = call i32 @libgps_unload(%struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gps_reader_data, i32 0, i32 2))
  %26 = call i32 @pthread_mutex_destroy(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gps_reader_data, i32 0, i32 1))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @disconnect_gpsd(%struct.TYPE_4__*) #1

declare dso_local i32 @libgps_unload(%struct.TYPE_4__*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
