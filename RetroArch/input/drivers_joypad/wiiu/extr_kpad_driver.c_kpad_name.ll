; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/wiiu/extr_kpad_driver.c_kpad_name.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/wiiu/extr_kpad_driver.c_kpad_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@wiimotes = common dso_local global %struct.TYPE_2__* null, align 8
@PAD_NAME_WIIU_PRO = common dso_local global i8* null, align 8
@PAD_NAME_CLASSIC = common dso_local global i8* null, align 8
@PAD_NAME_NUNCHUK = common dso_local global i8* null, align 8
@PAD_NAME_WIIMOTE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"[kpad]: Unknown pad type %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @kpad_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @kpad_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @to_wiimote_channel(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %35

10:                                               ; preds = %1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wiimotes, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %26 [
    i32 129, label %17
    i32 132, label %19
    i32 130, label %21
    i32 128, label %23
    i32 131, label %25
  ]

17:                                               ; preds = %10
  %18 = load i8*, i8** @PAD_NAME_WIIU_PRO, align 8
  store i8* %18, i8** %2, align 8
  br label %35

19:                                               ; preds = %10
  %20 = load i8*, i8** @PAD_NAME_CLASSIC, align 8
  store i8* %20, i8** %2, align 8
  br label %35

21:                                               ; preds = %10
  %22 = load i8*, i8** @PAD_NAME_NUNCHUK, align 8
  store i8* %22, i8** %2, align 8
  br label %35

23:                                               ; preds = %10
  %24 = load i8*, i8** @PAD_NAME_WIIMOTE, align 8
  store i8* %24, i8** %2, align 8
  br label %35

25:                                               ; preds = %10
  br label %26

26:                                               ; preds = %10, %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wiimotes, align 8
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %26
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %35

35:                                               ; preds = %34, %23, %21, %19, %17, %9
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
}

declare dso_local i32 @to_wiimote_channel(i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
