; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_rdevice.c_xio_36.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_rdevice.c_xio_36.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Devices_ICAX1Z = common dso_local global i32 0, align 4
@Devices_ICAX2Z = common dso_local global i32 0, align 4
@CPU_regA = common dso_local global i32 0, align 4
@CPU_regY = common dso_local global i32 0, align 4
@CPU_ClrN = common dso_local global i32 0, align 4
@B110 = common dso_local global i32 0, align 4
@B115200 = common dso_local global i32 0, align 4
@B1200 = common dso_local global i32 0, align 4
@B134 = common dso_local global i32 0, align 4
@B150 = common dso_local global i32 0, align 4
@B19200 = common dso_local global i32 0, align 4
@B230400 = common dso_local global i32 0, align 4
@B2400 = common dso_local global i32 0, align 4
@B300 = common dso_local global i32 0, align 4
@B4800 = common dso_local global i32 0, align 4
@B50 = common dso_local global i32 0, align 4
@B57600 = common dso_local global i32 0, align 4
@B600 = common dso_local global i32 0, align 4
@B75 = common dso_local global i32 0, align 4
@B9600 = common dso_local global i32 0, align 4
@CS5 = common dso_local global i32 0, align 4
@CS6 = common dso_local global i32 0, align 4
@CS7 = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@RDevice_serial_enabled = common dso_local global i64 0, align 8
@TCSANOW = common dso_local global i32 0, align 4
@rdev_fd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xio_36 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xio_36() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @Devices_ICAX1Z, align 4
  %4 = call i32 @MEMORY_dGetByte(i32 %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @Devices_ICAX2Z, align 4
  %6 = call i32 @MEMORY_dGetByte(i32 %5)
  store i32 %6, i32* %2, align 4
  store i32 1, i32* @CPU_regA, align 4
  store i32 1, i32* @CPU_regY, align 4
  %7 = load i32, i32* @CPU_ClrN, align 4
  ret void
}

declare dso_local i32 @MEMORY_dGetByte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
