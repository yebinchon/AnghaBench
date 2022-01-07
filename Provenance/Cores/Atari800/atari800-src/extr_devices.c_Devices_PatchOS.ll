; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_PatchOS.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_devices.c_Devices_PatchOS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@Atari800_os_version = common dso_local global i32 0, align 4
@BINLOAD_loading_basic = common dso_local global i32 0, align 4
@Devices_TABLE_OPEN = common dso_local global i32 0, align 4
@ehopen_addr = common dso_local global i32 0, align 4
@Devices_TABLE_CLOS = common dso_local global i32 0, align 4
@ehclos_addr = common dso_local global i32 0, align 4
@Devices_TABLE_READ = common dso_local global i32 0, align 4
@ehread_addr = common dso_local global i32 0, align 4
@Devices_TABLE_WRIT = common dso_local global i32 0, align 4
@ehwrit_addr = common dso_local global i32 0, align 4
@ready_prompt = common dso_local global i32 0, align 4
@ready_ptr = common dso_local global i32 0, align 4
@ESC_EHWRIT = common dso_local global i32 0, align 4
@Devices_IgnoreReady = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@Devices_E_Read = common dso_local global i32 0, align 4
@Devices_E_Write = common dso_local global i32 0, align 4
@Devices_K_Read = common dso_local global i32 0, align 4
@Devices_P_Close = common dso_local global i32 0, align 4
@Devices_P_Init = common dso_local global i32 0, align 4
@Devices_P_Open = common dso_local global i32 0, align 4
@Devices_P_Status = common dso_local global i32 0, align 4
@Devices_P_Write = common dso_local global i32 0, align 4
@Devices_TABLE_INIT = common dso_local global i32 0, align 4
@Devices_TABLE_STAT = common dso_local global i32 0, align 4
@Devices_enable_p_patch = common dso_local global i32 0, align 4
@ESC_EHREAD = common dso_local global i32 0, align 4
@ESC_KHREAD = common dso_local global i32 0, align 4
@ESC_PHCLOS = common dso_local global i32 0, align 4
@ESC_PHINIT = common dso_local global i32 0, align 4
@ESC_PHOPEN = common dso_local global i32 0, align 4
@ESC_PHSTAT = common dso_local global i32 0, align 4
@ESC_PHWRIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Devices_PatchOS() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @Atari800_os_version, align 4
  switch i32 %7, label %16 [
    i32 140, label %8
    i32 139, label %8
    i32 130, label %8
    i32 143, label %8
    i32 142, label %9
    i32 141, label %10
    i32 138, label %11
    i32 137, label %12
    i32 136, label %12
    i32 135, label %12
    i32 134, label %12
    i32 133, label %12
    i32 128, label %12
    i32 132, label %13
    i32 131, label %14
    i32 129, label %15
  ]

8:                                                ; preds = %0, %0, %0, %0
  store i32 61667, i32* %2, align 4
  br label %18

9:                                                ; preds = %0
  store i32 50426, i32* %2, align 4
  br label %18

10:                                               ; preds = %0
  store i32 50297, i32* %2, align 4
  br label %18

11:                                               ; preds = %0
  store i32 50236, i32* %2, align 4
  br label %18

12:                                               ; preds = %0, %0, %0, %0, %0, %0
  store i32 50222, i32* %2, align 4
  br label %18

13:                                               ; preds = %0
  store i32 50220, i32* %2, align 4
  br label %18

14:                                               ; preds = %0
  store i32 50235, i32* %2, align 4
  br label %18

15:                                               ; preds = %0
  store i32 50155, i32* %2, align 4
  br label %18

16:                                               ; preds = %0
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %1, align 4
  br label %68

18:                                               ; preds = %15, %14, %13, %12, %11, %10, %9, %8
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %63, %18
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 5
  br i1 %21, label %22, label %66

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i32 @MEMORY_dGetWord(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @MEMORY_dGetByte(i32 %26)
  switch i32 %27, label %59 [
    i32 69, label %28
  ]

28:                                               ; preds = %22
  %29 = load i32, i32* @BINLOAD_loading_basic, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @Devices_TABLE_OPEN, align 4
  %34 = add nsw i32 %32, %33
  %35 = call i32 @MEMORY_dGetWord(i32 %34)
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @ehopen_addr, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @Devices_TABLE_CLOS, align 4
  %39 = add nsw i32 %37, %38
  %40 = call i32 @MEMORY_dGetWord(i32 %39)
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @ehclos_addr, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @Devices_TABLE_READ, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i32 @MEMORY_dGetWord(i32 %44)
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @ehread_addr, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @Devices_TABLE_WRIT, align 4
  %49 = add nsw i32 %47, %48
  %50 = call i32 @MEMORY_dGetWord(i32 %49)
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @ehwrit_addr, align 4
  %52 = load i32, i32* @ready_prompt, align 4
  store i32 %52, i32* @ready_ptr, align 4
  %53 = load i32, i32* @ehwrit_addr, align 4
  %54 = load i32, i32* @ESC_EHWRIT, align 4
  %55 = load i32, i32* @Devices_IgnoreReady, align 4
  %56 = call i32 @ESC_AddEscRts(i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %31, %28
  br label %59

59:                                               ; preds = %22, %58
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %2, align 4
  %62 = add nsw i32 %61, 3
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %19

66:                                               ; preds = %19
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %1, align 4
  br label %68

68:                                               ; preds = %66, %16
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

declare dso_local i32 @MEMORY_dGetWord(i32) #1

declare dso_local i32 @MEMORY_dGetByte(i32) #1

declare dso_local i32 @ESC_AddEscRts(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
