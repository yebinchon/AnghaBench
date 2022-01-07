; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiGPS.c_gps_reader_process.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiGPS.c_gps_reader_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_10__, %struct.TYPE_11__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, i64 }

@gps_reader_data = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@MODE_2D = common dso_local global i64 0, align 8
@GPS_CACHE_EXPIRY = common dso_local global i64 0, align 8
@TIME_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @gps_reader_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gps_reader_process(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  br label %6

6:                                                ; preds = %60, %1
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 4), align 8
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %61

10:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 2, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 2, i32 0, i32 1, i32 0), align 8
  %11 = call i64 @connect_gpsd(%struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 2))
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = call i32 @read_gps_data_once(%struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 2))
  store i32 %14, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10
  br label %61

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 2, i32 0, i32 2), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 2, i32 0, i32 1, i32 0), align 8
  %25 = load i64, i64* @MODE_2D, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  %28 = call i32 @time(i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 0))
  %29 = call i32 @pthread_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 1))
  %30 = call i32 @memcpy(%struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 3), %struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 2, i32 0), i32 4)
  %31 = call i32 @pthread_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 1))
  br label %32

32:                                               ; preds = %27, %23
  br label %33

33:                                               ; preds = %32, %20, %17
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %60, label %36

36:                                               ; preds = %33
  %37 = call i32 @time(i64* %5)
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 0), align 8
  %40 = sub nsw i64 %38, %39
  %41 = load i64, i64* @GPS_CACHE_EXPIRY, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = call i32 @pthread_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 1))
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 2, i32 0, i32 2), align 8
  store i64 %45, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 3, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 3, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 3, i32 1, i32 1), align 8
  %46 = call i32 @pthread_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 1))
  br label %47

47:                                               ; preds = %43, %36
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 2, i32 0, i32 0), align 8
  %49 = load i32, i32* @TIME_SET, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = call i32 @pthread_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 1))
  %54 = load i32, i32* @TIME_SET, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 3, i32 0), align 8
  %56 = or i32 %55, %54
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 3, i32 0), align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 2, i32 0, i32 1, i32 1), align 8
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 3, i32 1, i32 0), align 8
  %58 = call i32 @pthread_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gps_reader_data, i32 0, i32 1))
  br label %59

59:                                               ; preds = %52, %47
  br label %60

60:                                               ; preds = %59, %33
  br label %6

61:                                               ; preds = %16, %6
  ret i8* null
}

declare dso_local i64 @connect_gpsd(%struct.TYPE_10__*) #1

declare dso_local i32 @read_gps_data_once(%struct.TYPE_10__*) #1

declare dso_local i32 @time(i64*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
