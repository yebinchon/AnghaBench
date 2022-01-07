; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiHelpers.c_mmal_status_to_int.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiHelpers.c_mmal_status_to_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MMAL_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Out of resources (other than memory)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Argument is invalid\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Function not implemented\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"No such file or directory\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"No such device or address\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Illegal seek\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Data is corrupt \07ttention FIXME: not POSIX\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"Component is not ready \07ttention FIXME: not POSIX\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"Component is not configured \07ttention FIXME: not POSIX\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Port is already connected \00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Port is disconnected\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Resource temporarily unavailable. Try again later\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Bad address\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Unknown status error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmal_status_to_int(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @MMAL_SUCCESS, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %40 [
    i32 134, label %10
    i32 133, label %12
    i32 138, label %14
    i32 132, label %16
    i32 135, label %18
    i32 129, label %20
    i32 137, label %22
    i32 128, label %24
    i32 140, label %26
    i32 130, label %28
    i32 141, label %30
    i32 136, label %32
    i32 131, label %34
    i32 142, label %36
    i32 139, label %38
  ]

10:                                               ; preds = %8
  %11 = call i32 @vcos_log_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %42

12:                                               ; preds = %8
  %13 = call i32 @vcos_log_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %42

14:                                               ; preds = %8
  %15 = call i32 @vcos_log_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %42

16:                                               ; preds = %8
  %17 = call i32 @vcos_log_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %42

18:                                               ; preds = %8
  %19 = call i32 @vcos_log_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %42

20:                                               ; preds = %8
  %21 = call i32 @vcos_log_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %42

22:                                               ; preds = %8
  %23 = call i32 @vcos_log_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %42

24:                                               ; preds = %8
  %25 = call i32 @vcos_log_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %42

26:                                               ; preds = %8
  %27 = call i32 @vcos_log_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  br label %42

28:                                               ; preds = %8
  %29 = call i32 @vcos_log_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0))
  br label %42

30:                                               ; preds = %8
  %31 = call i32 @vcos_log_error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0))
  br label %42

32:                                               ; preds = %8
  %33 = call i32 @vcos_log_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  br label %42

34:                                               ; preds = %8
  %35 = call i32 @vcos_log_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  br label %42

36:                                               ; preds = %8
  %37 = call i32 @vcos_log_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0))
  br label %42

38:                                               ; preds = %8
  %39 = call i32 @vcos_log_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  br label %42

40:                                               ; preds = %8
  %41 = call i32 @vcos_log_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10
  store i32 1, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %7
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @vcos_log_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
