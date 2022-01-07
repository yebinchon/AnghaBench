; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_rdevice.c_xio_38.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_rdevice.c_xio_38.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_regA = common dso_local global i32 0, align 4
@CPU_regY = common dso_local global i32 0, align 4
@CPU_ClrN = common dso_local global i32 0, align 4
@Devices_ICAX1Z = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"R*: No ATASCII/ASCII TRANSLATION\00", align 1
@translation = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"R*: Append Line Feeds\00", align 1
@linefeeds = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@RDevice_serial_enabled = common dso_local global i64 0, align 8
@TCSANOW = common dso_local global i32 0, align 4
@rdev_fd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xio_38 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xio_38() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* @CPU_regA, align 4
  store i32 1, i32* @CPU_regY, align 4
  %2 = load i32, i32* @CPU_ClrN, align 4
  %3 = load i32, i32* @Devices_ICAX1Z, align 4
  %4 = call i32 @Peek(i32 %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = and i32 %5, 32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @DBG_APRINT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* @translation, align 4
  br label %11

10:                                               ; preds = %0
  store i32 1, i32* @translation, align 4
  br label %11

11:                                               ; preds = %10, %8
  %12 = load i32, i32* %1, align 4
  %13 = and i32 %12, 64
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @DBG_APRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @linefeeds, align 4
  br label %18

17:                                               ; preds = %11
  store i32 0, i32* @linefeeds, align 4
  br label %18

18:                                               ; preds = %17, %15
  ret void
}

declare dso_local i32 @Peek(i32) #1

declare dso_local i32 @DBG_APRINT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
