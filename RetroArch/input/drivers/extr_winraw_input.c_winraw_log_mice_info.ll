; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_winraw_input.c_winraw_log_mice_info.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_winraw_input.c_winraw_log_mice_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@RIDI_DEVICENAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"[WINRAW]: Mouse #%u %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @winraw_log_mice_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @winraw_log_mice_info(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [256 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 256, i64* %7, align 8
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %9, align 16
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %35, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RIDI_DEVICENAME, align 4
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %23 = call i64 @GetRawInputDeviceInfoA(i32 %20, i32 %21, i8* %22, i64* %7)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 %24, -1
  br i1 %25, label %29, label %26

26:                                               ; preds = %14
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %14
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %30, align 16
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32, i32* %5, align 4
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %34 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %33)
  br label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %10

38:                                               ; preds = %10
  ret void
}

declare dso_local i64 @GetRawInputDeviceInfoA(i32, i32, i8*, i64*) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
