; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_parport_joypad.c_parport_free_pad.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_parport_joypad.c_parport_free_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport_joypad = type { i8, i32, i8, i32 }

@PPWDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"[Joypad]: Failed to restore original data register on %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"[Joypad]: Failed to restore original control register on %s\0A\00", align 1
@PPRELEASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"[Joypad]: Failed to release parallel port %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport_joypad*)* @parport_free_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parport_free_pad(%struct.parport_joypad* %0) #0 {
  %2 = alloca %struct.parport_joypad*, align 8
  %3 = alloca i8, align 1
  store %struct.parport_joypad* %0, %struct.parport_joypad** %2, align 8
  %4 = load %struct.parport_joypad*, %struct.parport_joypad** %2, align 8
  %5 = getelementptr inbounds %struct.parport_joypad, %struct.parport_joypad* %4, i32 0, i32 0
  %6 = load i8, i8* %5, align 4
  store i8 %6, i8* %3, align 1
  %7 = load %struct.parport_joypad*, %struct.parport_joypad** %2, align 8
  %8 = getelementptr inbounds %struct.parport_joypad, %struct.parport_joypad* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PPWDATA, align 4
  %11 = call i64 (i32, i32, ...) @ioctl(i32 %9, i32 %10, i8* %3)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.parport_joypad*, %struct.parport_joypad** %2, align 8
  %15 = getelementptr inbounds %struct.parport_joypad, %struct.parport_joypad* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.parport_joypad*, %struct.parport_joypad** %2, align 8
  %20 = getelementptr inbounds %struct.parport_joypad, %struct.parport_joypad* %19, i32 0, i32 2
  %21 = load i8, i8* %20, align 4
  store i8 %21, i8* %3, align 1
  %22 = load %struct.parport_joypad*, %struct.parport_joypad** %2, align 8
  %23 = getelementptr inbounds %struct.parport_joypad, %struct.parport_joypad* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PPWDATA, align 4
  %26 = call i64 (i32, i32, ...) @ioctl(i32 %24, i32 %25, i8* %3)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.parport_joypad*, %struct.parport_joypad** %2, align 8
  %30 = getelementptr inbounds %struct.parport_joypad, %struct.parport_joypad* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %18
  %34 = load %struct.parport_joypad*, %struct.parport_joypad** %2, align 8
  %35 = getelementptr inbounds %struct.parport_joypad, %struct.parport_joypad* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PPRELEASE, align 4
  %38 = call i64 (i32, i32, ...) @ioctl(i32 %36, i32 %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.parport_joypad*, %struct.parport_joypad** %2, align 8
  %42 = getelementptr inbounds %struct.parport_joypad, %struct.parport_joypad* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %40, %33
  %46 = load %struct.parport_joypad*, %struct.parport_joypad** %2, align 8
  %47 = getelementptr inbounds %struct.parport_joypad, %struct.parport_joypad* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @close(i32 %48)
  %50 = load %struct.parport_joypad*, %struct.parport_joypad** %2, align 8
  %51 = getelementptr inbounds %struct.parport_joypad, %struct.parport_joypad* %50, i32 0, i32 1
  store i32 -1, i32* %51, align 4
  ret void
}

declare dso_local i64 @ioctl(i32, i32, ...) #1

declare dso_local i32 @RARCH_ERR(i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
