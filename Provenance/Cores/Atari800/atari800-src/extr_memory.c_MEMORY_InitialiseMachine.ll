; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_memory.c_MEMORY_InitialiseMachine.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_memory.c_MEMORY_InitialiseMachine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Atari800_machine_type = common dso_local global i32 0, align 4
@Atari800_MACHINE_800 = common dso_local global i32 0, align 4
@ANTIC_xe_ptr = common dso_local global i32* null, align 8
@FALSE = common dso_local global i8* null, align 8
@cart809F_enabled = common dso_local global i8* null, align 8
@MEMORY_cartA0BF_enabled = common dso_local global i8* null, align 8
@Atari800_MACHINE_XLXE = common dso_local global i32 0, align 4
@GTIA_TRIG = common dso_local global i64* null, align 8
@GTIA_GRACTL = common dso_local global i32 0, align 4
@GTIA_TRIG_latch = common dso_local global i64* null, align 8
@MEMORY_mem = common dso_local global i64 0, align 8
@MEMORY_os = common dso_local global i32 0, align 4
@MEMORY_ram_size = common dso_local global i32 0, align 4
@MEMORY_mosaic_num_banks = common dso_local global i32 0, align 4
@MEMORY_axlon_num_banks = common dso_local global i32 0, align 4
@MEMORY_axlon_0f_mirror = common dso_local global i32 0, align 4
@axlon_curbank = common dso_local global i64 0, align 8
@mosaic_curbank = common dso_local global i32 0, align 4
@ANTIC_GetByte = common dso_local global i32 0, align 4
@ANTIC_PutByte = common dso_local global i32 0, align 4
@AxlonPutByte = common dso_local global i32 0, align 4
@CARTRIDGE_GetByte = common dso_local global i32 0, align 4
@CARTRIDGE_PutByte = common dso_local global i32 0, align 4
@GTIA_GetByte = common dso_local global i32 0, align 4
@GTIA_PutByte = common dso_local global i32 0, align 4
@MEMORY_readmap = common dso_local global i32* null, align 8
@MEMORY_writemap = common dso_local global i32* null, align 8
@MosaicPutByte = common dso_local global i32 0, align 4
@PBI_D1GetByte = common dso_local global i32 0, align 4
@PBI_D1PutByte = common dso_local global i32 0, align 4
@PBI_D6GetByte = common dso_local global i32 0, align 4
@PBI_D6PutByte = common dso_local global i32 0, align 4
@PBI_D7GetByte = common dso_local global i32 0, align 4
@PBI_D7PutByte = common dso_local global i32 0, align 4
@PIA_GetByte = common dso_local global i32 0, align 4
@PIA_PutByte = common dso_local global i32 0, align 4
@POKEY_GetByte = common dso_local global i32 0, align 4
@POKEY_PutByte = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MEMORY_InitialiseMachine() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @Atari800_machine_type, align 4
  %7 = load i32, i32* @Atari800_MACHINE_800, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %15

10:                                               ; preds = %0
  %11 = load i32, i32* @Atari800_machine_type, align 4
  %12 = icmp eq i32 %11, 128
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 2048, i32 16384
  br label %15

15:                                               ; preds = %10, %9
  %16 = phi i32 [ 10240, %9 ], [ %14, %10 ]
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = sub nsw i32 65536, %17
  store i32 %18, i32* %2, align 4
  store i32* null, i32** @ANTIC_xe_ptr, align 8
  %19 = load i8*, i8** @FALSE, align 8
  store i8* %19, i8** @cart809F_enabled, align 8
  %20 = load i8*, i8** @FALSE, align 8
  store i8* %20, i8** @MEMORY_cartA0BF_enabled, align 8
  %21 = load i32, i32* @Atari800_machine_type, align 4
  %22 = load i32, i32* @Atari800_MACHINE_XLXE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %15
  %25 = load i64*, i64** @GTIA_TRIG, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 3
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @GTIA_GRACTL, align 4
  %28 = and i32 %27, 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i64*, i64** @GTIA_TRIG_latch, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 3
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %30, %24
  br label %34

34:                                               ; preds = %33, %15
  %35 = load i64, i64* @MEMORY_mem, align 8
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = load i32, i32* @MEMORY_os, align 4
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @memcpy(i64 %38, i32 %39, i32 %40)
  %42 = load i32, i32* @Atari800_machine_type, align 4
  switch i32 %42, label %50 [
    i32 128, label %43
  ]

43:                                               ; preds = %34
  %44 = call i32 @MEMORY_dFillMem(i32 0, i32 0, i32 63488)
  %45 = call i32 @MEMORY_SetRAM(i32 0, i32 16383)
  %46 = call i32 @MEMORY_SetROM(i32 16384, i32 65535)
  %47 = call i32 @MEMORY_SetHARDWARE(i32 49152, i32 53247)
  %48 = call i32 @MEMORY_SetHARDWARE(i32 54272, i32 54527)
  %49 = call i32 @MEMORY_SetHARDWARE(i32 59392, i32 61439)
  br label %123

50:                                               ; preds = %34
  %51 = load i32, i32* @MEMORY_ram_size, align 4
  %52 = icmp sgt i32 %51, 64
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @MEMORY_ram_size, align 4
  %56 = mul nsw i32 %55, 1024
  br label %57

57:                                               ; preds = %54, %53
  %58 = phi i32 [ 65536, %53 ], [ %56, %54 ]
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %2, align 4
  %60 = icmp slt i32 %59, 53248
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* %2, align 4
  br label %64

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ 53248, %63 ]
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %4, align 4
  br label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  store i32 %74, i32* %5, align 4
  %75 = call i32 (...) @ESC_PatchOS()
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @MEMORY_dFillMem(i32 0, i32 0, i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = sub nsw i32 %78, 1
  %80 = call i32 @MEMORY_SetRAM(i32 0, i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %73
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* %5, align 4
  %88 = sub nsw i32 %86, %87
  %89 = call i32 @MEMORY_dFillMem(i32 %85, i32 255, i32 %88)
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %4, align 4
  %92 = sub nsw i32 %91, 1
  %93 = call i32 @MEMORY_SetROM(i32 %90, i32 %92)
  br label %94

94:                                               ; preds = %84, %73
  %95 = load i32, i32* %4, align 4
  %96 = icmp slt i32 %95, 53248
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @MEMORY_SetROM(i32 %98, i32 53247)
  br label %100

100:                                              ; preds = %97, %94
  %101 = call i32 @MEMORY_SetROM(i32 55296, i32 65535)
  %102 = call i32 @MEMORY_SetHARDWARE(i32 53248, i32 55295)
  %103 = load i32, i32* @Atari800_machine_type, align 4
  %104 = load i32, i32* @Atari800_MACHINE_800, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %100
  %107 = load i32, i32* @MEMORY_mosaic_num_banks, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 @MEMORY_SetHARDWARE(i32 65280, i32 65535)
  br label %111

111:                                              ; preds = %109, %106
  %112 = load i32, i32* @MEMORY_axlon_num_banks, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = call i32 @MEMORY_SetHARDWARE(i32 52992, i32 53247)
  %116 = load i32, i32* @MEMORY_axlon_0f_mirror, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = call i32 @MEMORY_SetHARDWARE(i32 3840, i32 4095)
  br label %120

120:                                              ; preds = %118, %114
  br label %121

121:                                              ; preds = %120, %111
  br label %122

122:                                              ; preds = %121, %100
  br label %123

123:                                              ; preds = %122, %43
  %124 = call i32 (...) @AllocXEMemory()
  %125 = call i32 (...) @alloc_axlon_memory()
  %126 = call i32 (...) @alloc_mosaic_memory()
  store i64 0, i64* @axlon_curbank, align 8
  store i32 63, i32* @mosaic_curbank, align 4
  %127 = call i32 (...) @AllocMapRAM()
  %128 = call i32 (...) @Atari800_Coldstart()
  ret void
}

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @MEMORY_dFillMem(i32, i32, i32) #1

declare dso_local i32 @MEMORY_SetRAM(i32, i32) #1

declare dso_local i32 @MEMORY_SetROM(i32, i32) #1

declare dso_local i32 @MEMORY_SetHARDWARE(i32, i32) #1

declare dso_local i32 @ESC_PatchOS(...) #1

declare dso_local i32 @AllocXEMemory(...) #1

declare dso_local i32 @alloc_axlon_memory(...) #1

declare dso_local i32 @alloc_mosaic_memory(...) #1

declare dso_local i32 @AllocMapRAM(...) #1

declare dso_local i32 @Atari800_Coldstart(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
