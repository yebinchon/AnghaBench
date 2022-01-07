; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari.c_Atari800_StateRead.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari.c_Atari800_StateRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Atari800_TV_PAL = common dso_local global i32 0, align 4
@Atari800_TV_NTSC = common dso_local global i32 0, align 4
@Atari800_MACHINE_SIZE = common dso_local global i32 0, align 4
@Atari800_MACHINE_XLXE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Warning: Bad machine type read in from state save, defaulting to XL/XE\00", align 1
@Atari800_machine_type = common dso_local global i32 0, align 4
@Atari800_builtin_basic = common dso_local global i32 0, align 4
@Atari800_keyboard_leds = common dso_local global i32 0, align 4
@Atari800_f_keys = common dso_local global i32 0, align 4
@Atari800_jumper = common dso_local global i32 0, align 4
@Atari800_builtin_game = common dso_local global i32 0, align 4
@Atari800_keyboard_detached = common dso_local global i32 0, align 4
@Atari800_MACHINE_800 = common dso_local global i32 0, align 4
@MEMORY_ram_size = common dso_local global i32 0, align 4
@MEMORY_RAM_320_COMPY_SHOP = common dso_local global i32 0, align 4
@Atari800_MACHINE_5200 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"Warning: Bad machine type read in from state save, defaulting to 800 XL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Atari800_StateRead(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp sge i32 %10, 7
  br i1 %11, label %12, label %67

12:                                               ; preds = %1
  %13 = call i32 @StateSav_ReadUBYTE(i32* %3, i32 1)
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @Atari800_TV_PAL, align 4
  br label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @Atari800_TV_NTSC, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = call i32 @Atari800_SetTVMode(i32 %21)
  %23 = call i32 @StateSav_ReadUBYTE(i32* %3, i32 1)
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @Atari800_MACHINE_SIZE, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %20
  %31 = load i32, i32* @Atari800_MACHINE_XLXE, align 4
  store i32 %31, i32* %3, align 4
  %32 = call i32 @Log_print(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @Atari800_SetMachineType(i32 %34)
  %36 = load i32, i32* @Atari800_machine_type, align 4
  %37 = load i32, i32* @Atari800_MACHINE_XLXE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %33
  %40 = call i32 @StateSav_ReadUBYTE(i32* %3, i32 1)
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i32
  store i32 %43, i32* @Atari800_builtin_basic, align 4
  %44 = call i32 @StateSav_ReadUBYTE(i32* %3, i32 1)
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i32
  store i32 %47, i32* @Atari800_keyboard_leds, align 4
  %48 = call i32 @StateSav_ReadUBYTE(i32* %3, i32 1)
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  store i32 %51, i32* @Atari800_f_keys, align 4
  %52 = call i32 @StateSav_ReadUBYTE(i32* %3, i32 1)
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i32
  store i32 %55, i32* @Atari800_jumper, align 4
  %56 = call i32 (...) @Atari800_UpdateJumper()
  %57 = call i32 @StateSav_ReadUBYTE(i32* %3, i32 1)
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  store i32 %60, i32* @Atari800_builtin_game, align 4
  %61 = call i32 @StateSav_ReadUBYTE(i32* %3, i32 1)
  %62 = load i32, i32* %3, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i32
  store i32 %64, i32* @Atari800_keyboard_detached, align 4
  %65 = call i32 (...) @Atari800_UpdateKeyboardDetached()
  br label %66

66:                                               ; preds = %39, %33
  br label %112

67:                                               ; preds = %1
  %68 = call i32 @StateSav_ReadUBYTE(i32* %5, i32 1)
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @Atari800_TV_PAL, align 4
  br label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @Atari800_TV_NTSC, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @Atari800_SetTVMode(i32 %77)
  %79 = call i32 @StateSav_ReadUBYTE(i32* %5, i32 1)
  %80 = call i32 @StateSav_ReadINT(i32* %7, i32 1)
  %81 = load i32, i32* %5, align 4
  switch i32 %81, label %103 [
    i32 0, label %82
    i32 1, label %84
    i32 2, label %86
    i32 3, label %88
    i32 4, label %91
    i32 5, label %93
    i32 6, label %95
    i32 7, label %97
    i32 8, label %99
    i32 9, label %101
  ]

82:                                               ; preds = %75
  %83 = load i32, i32* @Atari800_MACHINE_800, align 4
  store i32 %83, i32* @Atari800_machine_type, align 4
  store i32 48, i32* @MEMORY_ram_size, align 4
  br label %106

84:                                               ; preds = %75
  %85 = load i32, i32* @Atari800_MACHINE_XLXE, align 4
  store i32 %85, i32* @Atari800_machine_type, align 4
  store i32 64, i32* @MEMORY_ram_size, align 4
  br label %106

86:                                               ; preds = %75
  %87 = load i32, i32* @Atari800_MACHINE_XLXE, align 4
  store i32 %87, i32* @Atari800_machine_type, align 4
  store i32 128, i32* @MEMORY_ram_size, align 4
  br label %106

88:                                               ; preds = %75
  %89 = load i32, i32* @Atari800_MACHINE_XLXE, align 4
  store i32 %89, i32* @Atari800_machine_type, align 4
  %90 = load i32, i32* @MEMORY_RAM_320_COMPY_SHOP, align 4
  store i32 %90, i32* @MEMORY_ram_size, align 4
  br label %106

91:                                               ; preds = %75
  %92 = load i32, i32* @Atari800_MACHINE_5200, align 4
  store i32 %92, i32* @Atari800_machine_type, align 4
  store i32 16, i32* @MEMORY_ram_size, align 4
  br label %106

93:                                               ; preds = %75
  %94 = load i32, i32* @Atari800_MACHINE_800, align 4
  store i32 %94, i32* @Atari800_machine_type, align 4
  store i32 16, i32* @MEMORY_ram_size, align 4
  br label %106

95:                                               ; preds = %75
  %96 = load i32, i32* @Atari800_MACHINE_XLXE, align 4
  store i32 %96, i32* @Atari800_machine_type, align 4
  store i32 16, i32* @MEMORY_ram_size, align 4
  br label %106

97:                                               ; preds = %75
  %98 = load i32, i32* @Atari800_MACHINE_XLXE, align 4
  store i32 %98, i32* @Atari800_machine_type, align 4
  store i32 576, i32* @MEMORY_ram_size, align 4
  br label %106

99:                                               ; preds = %75
  %100 = load i32, i32* @Atari800_MACHINE_XLXE, align 4
  store i32 %100, i32* @Atari800_machine_type, align 4
  store i32 1088, i32* @MEMORY_ram_size, align 4
  br label %106

101:                                              ; preds = %75
  %102 = load i32, i32* @Atari800_MACHINE_XLXE, align 4
  store i32 %102, i32* @Atari800_machine_type, align 4
  store i32 192, i32* @MEMORY_ram_size, align 4
  br label %106

103:                                              ; preds = %75
  %104 = load i32, i32* @Atari800_MACHINE_XLXE, align 4
  store i32 %104, i32* @Atari800_machine_type, align 4
  store i32 64, i32* @MEMORY_ram_size, align 4
  %105 = call i32 @Log_print(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %101, %99, %97, %95, %93, %91, %88, %86, %84, %82
  %107 = call i32 @StateSav_ReadINT(i32* %9, i32 1)
  %108 = call i32 @StateSav_ReadINT(i32* %6, i32 1)
  %109 = call i32 @StateSav_ReadINT(i32* %8, i32 1)
  %110 = load i32, i32* @Atari800_machine_type, align 4
  %111 = call i32 @Atari800_SetMachineType(i32 %110)
  br label %112

112:                                              ; preds = %106, %66
  %113 = call i32 (...) @load_roms()
  ret void
}

declare dso_local i32 @StateSav_ReadUBYTE(i32*, i32) #1

declare dso_local i32 @Atari800_SetTVMode(i32) #1

declare dso_local i32 @Log_print(i8*) #1

declare dso_local i32 @Atari800_SetMachineType(i32) #1

declare dso_local i32 @Atari800_UpdateJumper(...) #1

declare dso_local i32 @Atari800_UpdateKeyboardDetached(...) #1

declare dso_local i32 @StateSav_ReadINT(i32*, i32) #1

declare dso_local i32 @load_roms(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
