; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_rdevice.c_xio_34.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_rdevice.c_xio_34.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Devices_ICAX1Z = common dso_local global i32 0, align 4
@connected = common dso_local global i64 0, align 8
@rdev_fd = common dso_local global i32 0, align 4
@do_once = common dso_local global i64 0, align 8
@CPU_regA = common dso_local global i32 0, align 4
@CPU_regY = common dso_local global i32 0, align 4
@CPU_ClrN = common dso_local global i32 0, align 4
@B0 = common dso_local global i32 0, align 4
@RDevice_serial_enabled = common dso_local global i64 0, align 8
@TCSANOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xio_34 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xio_34() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @Devices_ICAX1Z, align 4
  %3 = call i32 @MEMORY_dGetByte(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = and i32 %4, 128
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = and i32 %8, 64
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %19

12:                                               ; preds = %7
  %13 = load i64, i64* @connected, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @rdev_fd, align 4
  %17 = call i32 @close(i32 %16)
  store i64 0, i64* @connected, align 8
  store i64 0, i64* @do_once, align 8
  br label %18

18:                                               ; preds = %15, %12
  br label %19

19:                                               ; preds = %18, %11
  br label %20

20:                                               ; preds = %19, %0
  store i32 1, i32* @CPU_regA, align 4
  store i32 1, i32* @CPU_regY, align 4
  %21 = load i32, i32* @CPU_ClrN, align 4
  ret void
}

declare dso_local i32 @MEMORY_dGetByte(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
