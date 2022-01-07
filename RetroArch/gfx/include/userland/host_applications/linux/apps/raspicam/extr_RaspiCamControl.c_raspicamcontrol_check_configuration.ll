; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiCamControl.c_raspicamcontrol_check_configuration.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiCamControl.c_raspicamcontrol_check_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [112 x i8] c"Camera is not enabled in this build. Try running \22sudo raspi-config\22 and ensure that \22camera\22 has been enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [128 x i8] c"Only %dM of gpu_mem is configured. Try running \22sudo raspi-config\22 and ensure that \22memory_split\22 has a value of %d or greater\0A\00", align 1
@.str.2 = private unnamed_addr constant [89 x i8] c"Camera is not detected. Please check carefully the camera module is installed correctly\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Failed to run camera app. Please check for firmware updates\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @raspicamcontrol_check_configuration(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i32 (...) @raspicamcontrol_get_mem_gpu()
  store i32 %6, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = call i32 @raspicamcontrol_get_camera(i32* %4, i32* %5)
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str, i64 0, i64 0))
  br label %29

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %18)
  br label %28

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0))
  br label %27

25:                                               ; preds = %20
  %26 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %23
  br label %28

28:                                               ; preds = %27, %16
  br label %29

29:                                               ; preds = %28, %10
  ret void
}

declare dso_local i32 @raspicamcontrol_get_mem_gpu(...) #1

declare dso_local i32 @raspicamcontrol_get_camera(i32*, i32*) #1

declare dso_local i32 @vcos_log_error(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
