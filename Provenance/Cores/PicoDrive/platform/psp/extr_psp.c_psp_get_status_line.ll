; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_psp.c_psp_get_status_line.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_psp.c_psp_get_status_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@psp_get_status_line.buff = internal global [64 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [22 x i8] c"%02i:%02i  bat: %3i%%\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" (%i:%02i)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @psp_get_status_line() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = call i32 @sceRtcGetCurrentClockLocalTime(%struct.TYPE_3__* %5)
  store i32 %6, i32* %2, align 4
  %7 = call i32 (...) @scePowerGetBatteryLifePercent()
  store i32 %7, i32* %3, align 4
  %8 = call i32 (...) @scePowerGetBatteryLifeTime()
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %11, %0
  store i8* null, i8** %1, align 8
  br label %41

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @psp_get_status_line.buff, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %22, i32 %23)
  %25 = call i32 (...) @scePowerIsPowerOnline()
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %18
  %28 = call i32 @strlen(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @psp_get_status_line.buff, i64 0, i64 0))
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @psp_get_status_line.buff, i64 0, i64 0), i64 %29
  %31 = call i32 @strlen(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @psp_get_status_line.buff, i64 0, i64 0))
  %32 = sext i32 %31 to i64
  %33 = sub i64 64, %32
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* %4, align 4
  %36 = sdiv i32 %35, 60
  %37 = load i32, i32* %4, align 4
  %38 = srem i32 %37, 60
  %39 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %30, i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %27, %18
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @psp_get_status_line.buff, i64 0, i64 0), i8** %1, align 8
  br label %41

41:                                               ; preds = %40, %17
  %42 = load i8*, i8** %1, align 8
  ret i8* %42
}

declare dso_local i32 @sceRtcGetCurrentClockLocalTime(%struct.TYPE_3__*) #1

declare dso_local i32 @scePowerGetBatteryLifePercent(...) #1

declare dso_local i32 @scePowerGetBatteryLifeTime(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @scePowerIsPowerOnline(...) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
