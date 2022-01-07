; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_memory.c_MEMORY_StateSave.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_memory.c_MEMORY_StateSave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Atari800_machine_type = common dso_local global i64 0, align 8
@Atari800_MACHINE_800 = common dso_local global i64 0, align 8
@MEMORY_axlon_num_banks = common dso_local global i32 0, align 4
@axlon_curbank = common dso_local global i32 0, align 4
@MEMORY_axlon_0f_mirror = common dso_local global i32 0, align 4
@axlon_ram = common dso_local global i64* null, align 8
@mosaic_current_num_banks = common dso_local global i32 0, align 4
@mosaic_curbank = common dso_local global i32 0, align 4
@mosaic_ram = common dso_local global i64* null, align 8
@MEMORY_ram_size = common dso_local global i32 0, align 4
@MEMORY_mem = common dso_local global i64* null, align 8
@MEMORY_attrib = common dso_local global i64* null, align 8
@Atari800_MACHINE_XLXE = common dso_local global i64 0, align 8
@MEMORY_basic = common dso_local global i64* null, align 8
@under_cartA0BF = common dso_local global i64* null, align 8
@MEMORY_os = common dso_local global i64* null, align 8
@under_atarixl_os = common dso_local global i64* null, align 8
@MEMORY_xegame = common dso_local global i64* null, align 8
@MEMORY_RAM_320_RAMBO = common dso_local global i32 0, align 4
@MEMORY_RAM_320_COMPY_SHOP = common dso_local global i32 0, align 4
@PIA_PORTB = common dso_local global i64 0, align 8
@PIA_PORTB_mask = common dso_local global i64 0, align 8
@MEMORY_cartA0BF_enabled = common dso_local global i32 0, align 4
@atarixe_memory = common dso_local global i64* null, align 8
@atarixe_memory_size = common dso_local global i32 0, align 4
@ANTIC_xe_ptr = common dso_local global i32* null, align 8
@MEMORY_selftest_enabled = common dso_local global i64 0, align 8
@antic_bank_under_selftest = common dso_local global i64* null, align 8
@MEMORY_enable_mapram = common dso_local global i32 0, align 4
@mapram_memory = common dso_local global i64* null, align 8
@MEMORY_HARDWARE = common dso_local global i64 0, align 8
@MEMORY_RAM = common dso_local global i64 0, align 8
@MEMORY_ROM = common dso_local global i64 0, align 8
@MEMORY_ROM_PutByte = common dso_local global i32* null, align 8
@MEMORY_writemap = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MEMORY_StateSave(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* @Atari800_machine_type, align 8
  %6 = load i64, i64* @Atari800_MACHINE_800, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %30

8:                                                ; preds = %1
  %9 = call i32 @StateSav_SaveINT(i32* @MEMORY_axlon_num_banks, i32 1)
  %10 = load i32, i32* @MEMORY_axlon_num_banks, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = call i32 @StateSav_SaveINT(i32* @axlon_curbank, i32 1)
  %14 = call i32 @StateSav_SaveINT(i32* @MEMORY_axlon_0f_mirror, i32 1)
  %15 = load i64*, i64** @axlon_ram, align 8
  %16 = load i32, i32* @MEMORY_axlon_num_banks, align 4
  %17 = mul nsw i32 %16, 16384
  %18 = call i32 @StateSav_SaveUBYTE(i64* %15, i32 %17)
  br label %19

19:                                               ; preds = %12, %8
  %20 = call i32 @StateSav_SaveINT(i32* @mosaic_current_num_banks, i32 1)
  %21 = load i32, i32* @mosaic_current_num_banks, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = call i32 @StateSav_SaveINT(i32* @mosaic_curbank, i32 1)
  %25 = load i64*, i64** @mosaic_ram, align 8
  %26 = load i32, i32* @mosaic_current_num_banks, align 4
  %27 = mul nsw i32 %26, 4096
  %28 = call i32 @StateSav_SaveUBYTE(i64* %25, i32 %27)
  br label %29

29:                                               ; preds = %23, %19
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i32, i32* @MEMORY_ram_size, align 4
  %32 = icmp sgt i32 %31, 64
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @MEMORY_ram_size, align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi i32 [ 64, %33 ], [ %35, %34 ]
  store i32 %37, i32* %3, align 4
  %38 = call i32 @StateSav_SaveINT(i32* %3, i32 1)
  %39 = load i64*, i64** @MEMORY_mem, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = call i32 @StateSav_SaveUBYTE(i64* %40, i32 65536)
  %42 = load i64*, i64** @MEMORY_attrib, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = call i32 @StateSav_SaveUBYTE(i64* %43, i32 65536)
  %45 = load i64, i64* @Atari800_machine_type, align 8
  %46 = load i64, i64* @Atari800_MACHINE_XLXE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %36
  %49 = load i64, i64* %2, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i64*, i64** @MEMORY_basic, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = call i32 @StateSav_SaveUBYTE(i64* %53, i32 8192)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i64*, i64** @under_cartA0BF, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = call i32 @StateSav_SaveUBYTE(i64* %57, i32 8192)
  %59 = load i64, i64* %2, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i64*, i64** @MEMORY_os, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = call i32 @StateSav_SaveUBYTE(i64* %63, i32 16384)
  br label %65

65:                                               ; preds = %61, %55
  %66 = load i64*, i64** @under_atarixl_os, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = call i32 @StateSav_SaveUBYTE(i64* %67, i32 16384)
  %69 = load i64, i64* %2, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i64*, i64** @MEMORY_xegame, align 8
  %73 = call i32 @StateSav_SaveUBYTE(i64* %72, i32 8192)
  br label %74

74:                                               ; preds = %71, %65
  br label %75

75:                                               ; preds = %74, %36
  %76 = load i32, i32* @MEMORY_ram_size, align 4
  %77 = sub nsw i32 %76, 64
  %78 = sdiv i32 %77, 16
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %75
  %83 = call i32 @StateSav_SaveINT(i32* %3, i32 1)
  %84 = load i32, i32* @MEMORY_ram_size, align 4
  %85 = load i32, i32* @MEMORY_RAM_320_RAMBO, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @MEMORY_ram_size, align 4
  %89 = load i32, i32* @MEMORY_RAM_320_COMPY_SHOP, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87, %82
  %92 = load i32, i32* @MEMORY_ram_size, align 4
  %93 = sub nsw i32 %92, 320
  store i32 %93, i32* %3, align 4
  %94 = call i32 @StateSav_SaveINT(i32* %3, i32 1)
  br label %95

95:                                               ; preds = %91, %87
  %96 = load i64, i64* @PIA_PORTB, align 8
  %97 = load i64, i64* @PIA_PORTB_mask, align 8
  %98 = or i64 %96, %97
  store i64 %98, i64* %4, align 8
  %99 = call i32 @StateSav_SaveUBYTE(i64* %4, i32 1)
  %100 = call i32 @StateSav_SaveINT(i32* @MEMORY_cartA0BF_enabled, i32 1)
  %101 = load i32, i32* @MEMORY_ram_size, align 4
  %102 = icmp sgt i32 %101, 64
  br i1 %102, label %103, label %117

103:                                              ; preds = %95
  %104 = load i64*, i64** @atarixe_memory, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 0
  %106 = load i32, i32* @atarixe_memory_size, align 4
  %107 = call i32 @StateSav_SaveUBYTE(i64* %105, i32 %106)
  %108 = load i32*, i32** @ANTIC_xe_ptr, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load i64, i64* @MEMORY_selftest_enabled, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i64*, i64** @antic_bank_under_selftest, align 8
  %115 = call i32 @StateSav_SaveUBYTE(i64* %114, i32 2048)
  br label %116

116:                                              ; preds = %113, %110, %103
  br label %117

117:                                              ; preds = %116, %95
  %118 = load i64, i64* @Atari800_machine_type, align 8
  %119 = load i64, i64* @Atari800_MACHINE_XLXE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %117
  %122 = load i32, i32* @MEMORY_ram_size, align 4
  %123 = icmp sgt i32 %122, 20
  br i1 %123, label %124, label %132

124:                                              ; preds = %121
  %125 = call i32 @StateSav_SaveINT(i32* @MEMORY_enable_mapram, i32 1)
  %126 = load i32, i32* @MEMORY_enable_mapram, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i64*, i64** @mapram_memory, align 8
  %130 = call i32 @StateSav_SaveUBYTE(i64* %129, i32 2048)
  br label %131

131:                                              ; preds = %128, %124
  br label %132

132:                                              ; preds = %131, %121, %117
  ret void
}

declare dso_local i32 @StateSav_SaveINT(i32*, i32) #1

declare dso_local i32 @StateSav_SaveUBYTE(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
