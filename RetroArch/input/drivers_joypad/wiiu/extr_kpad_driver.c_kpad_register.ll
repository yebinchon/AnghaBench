; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/wiiu/extr_kpad_driver.c_kpad_register.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/wiiu/extr_kpad_driver.c_kpad_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@wiimotes = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"Couldn't get a slot for this remote.\0A\00", align 1
@kpad_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @kpad_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kpad_register(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wiimotes, align 8
  %7 = load i32, i32* %3, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @kpad_deregister(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @get_slot_for_channel(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %32

23:                                               ; preds = %14
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wiimotes, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 %24, i64* %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @input_pad_connect(i32 %30, i32* @kpad_driver)
  br label %32

32:                                               ; preds = %21, %23, %2
  ret void
}

declare dso_local i32 @kpad_deregister(i32) #1

declare dso_local i32 @get_slot_for_channel(i32) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i32 @input_pad_connect(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
