; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/tvservice/extr_tvservice.c_get_status.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/tvservice/extr_tvservice.c_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { float, i64, i64, i64 }
%struct.TYPE_11__ = type { i64, i32 }

@HDMI_PROPERTY_PIXEL_CLOCK_TYPE = common dso_local global i32 0, align 4
@HDMI_PIXEL_CLOCK_TYPE_NTSC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"state 0x%x [%s], %ux%u @ %.2fHz, %s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"progressive\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"state 0x%x [%s]\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Error getting current display state\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_status() #0 {
  %1 = alloca %struct.TYPE_10__, align 8
  %2 = alloca %struct.TYPE_11__, align 8
  %3 = alloca float, align 4
  %4 = call i64 @vc_tv_get_display_state(%struct.TYPE_10__* %1)
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %66

6:                                                ; preds = %0
  %7 = load i32, i32* @HDMI_PROPERTY_PIXEL_CLOCK_TYPE, align 4
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  store i32 %7, i32* %8, align 8
  %9 = call i32 @vc_tv_hdmi_get_property(%struct.TYPE_11__* %2)
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HDMI_PIXEL_CLOCK_TYPE_NTSC, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load float, float* %17, align 8
  %19 = fmul float %18, 0x3FEFF7D100000000
  br label %25

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load float, float* %23, align 8
  br label %25

25:                                               ; preds = %20, %14
  %26 = phi float [ %19, %14 ], [ %24, %20 ]
  store float %26, float* %3, align 4
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @status_mode(%struct.TYPE_10__* %1)
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load float, float* %3, align 4
  %51 = fpext float %50 to double
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %59 = call i32 (i8*, ...) @LOG_STD(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i64 %45, i64 %49, double %51, i8* %58)
  br label %65

60:                                               ; preds = %32, %25
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @status_mode(%struct.TYPE_10__* %1)
  %64 = call i32 (i8*, ...) @LOG_STD(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %38
  br label %68

66:                                               ; preds = %0
  %67 = call i32 (i8*, ...) @LOG_STD(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %65
  ret i32 0
}

declare dso_local i64 @vc_tv_get_display_state(%struct.TYPE_10__*) #1

declare dso_local i32 @vc_tv_hdmi_get_property(%struct.TYPE_11__*) #1

declare dso_local i32 @LOG_STD(i8*, ...) #1

declare dso_local i32 @status_mode(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
