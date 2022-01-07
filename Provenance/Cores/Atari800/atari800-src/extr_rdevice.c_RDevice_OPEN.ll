; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_rdevice.c_RDevice_OPEN.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_rdevice.c_RDevice_OPEN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_regA = common dso_local global i32 0, align 4
@CPU_regY = common dso_local global i32 0, align 4
@CPU_ClrN = common dso_local global i32 0, align 4
@bufend = common dso_local global i64 0, align 8
@Devices_ICAX2Z = common dso_local global i32 0, align 4
@Devices_ICAX1Z = common dso_local global i32 0, align 4
@Devices_ICDNOZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"R*: Open for Reading...\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"R*: Open for Writing...\00", align 1
@RDevice_serial_enabled = common dso_local global i64 0, align 8
@inetaddress = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RDevice_OPEN() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 1, i32* @CPU_regA, align 4
  store i32 1, i32* @CPU_regY, align 4
  %4 = load i32, i32* @CPU_ClrN, align 4
  store i64 0, i64* @bufend, align 8
  %5 = load i32, i32* @Devices_ICAX2Z, align 4
  %6 = call i32 @Peek(i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @Devices_ICAX1Z, align 4
  %8 = call i32 @Peek(i32 %7)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* @Devices_ICDNOZ, align 4
  %10 = call i32 @MEMORY_dGetByte(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = call i32 @DBG_APRINT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %0
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %17, 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @DBG_APRINT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32, i32* %2, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %22
  ret void
}

declare dso_local i32 @Peek(i32) #1

declare dso_local i32 @MEMORY_dGetByte(i32) #1

declare dso_local i32 @DBG_APRINT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
