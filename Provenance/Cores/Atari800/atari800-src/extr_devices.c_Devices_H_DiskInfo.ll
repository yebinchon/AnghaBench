; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_DiskInfo.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_H_DiskInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Devices_H_DiskInfo.info = internal global [16 x i32] [i32 32, i32 0, i32 255, i32 255, i32 255, i32 255, i32 72, i32 68, i32 73, i32 83, i32 75, i32 49, i32 32, i32 32, i32 1, i32 1], align 16
@devbug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Get Disk Information Command\00", align 1
@FALSE = common dso_local global i32 0, align 4
@Devices_ICBLLZ = common dso_local global i32 0, align 4
@CPU_regY = common dso_local global i32 0, align 4
@CPU_ClrN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Devices_H_DiskInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Devices_H_DiskInfo() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @devbug, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @Log_print(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32, i32* @FALSE, align 4
  %8 = call i32 @Devices_GetNumber(i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %22

12:                                               ; preds = %6
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 49, %13
  store i32 %14, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @Devices_H_DiskInfo.info, i64 0, i64 11), align 4
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 1, %15
  store i32 %16, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @Devices_H_DiskInfo.info, i64 0, i64 15), align 4
  %17 = load i32, i32* @Devices_ICBLLZ, align 4
  %18 = call i64 @MEMORY_dGetWordAligned(i32 %17)
  %19 = trunc i64 %18 to i32
  %20 = call i32 @MEMORY_CopyToMem(i32* getelementptr inbounds ([16 x i32], [16 x i32]* @Devices_H_DiskInfo.info, i64 0, i64 0), i32 %19, i32 16)
  store i32 1, i32* @CPU_regY, align 4
  %21 = load i32, i32* @CPU_ClrN, align 4
  br label %22

22:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @Log_print(i8*) #1

declare dso_local i32 @Devices_GetNumber(i32) #1

declare dso_local i32 @MEMORY_CopyToMem(i32*, i32, i32) #1

declare dso_local i64 @MEMORY_dGetWordAligned(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
