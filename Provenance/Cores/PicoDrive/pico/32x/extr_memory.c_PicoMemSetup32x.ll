; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_PicoMemSetup32x.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_PicoMemSetup32x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, i64, i64 }
%struct.TYPE_30__ = type { i32, i64, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_32__ = type { i32, i8* }
%struct.TYPE_26__ = type { i32, i8* }
%struct.TYPE_31__ = type { i8**, i8**, %struct.TYPE_26__*, %struct.TYPE_32__* }
%struct.TYPE_29__ = type { i64* }

@Pico32xMem = common dso_local global %struct.TYPE_28__* null, align 8
@EL_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"OOM\00", align 1
@Pico = common dso_local global %struct.TYPE_30__ zeroinitializer, align 8
@m68k_read8_map = common dso_local global i32 0, align 4
@m68k_read16_map = common dso_local global i32 0, align 4
@m68k_write8_map = common dso_local global i32 0, align 4
@PicoWrite8_hint = common dso_local global i64 0, align 8
@m68k_write16_map = common dso_local global i32 0, align 4
@PicoWrite16_hint = common dso_local global i64 0, align 8
@M68K_BANK_MASK = common dso_local global i32 0, align 4
@PicoWrite8_cart = common dso_local global i64 0, align 8
@PicoWrite16_cart = common dso_local global i64 0, align 8
@PicoWrite8_bank = common dso_local global i64 0, align 8
@PicoWrite16_bank = common dso_local global i64 0, align 8
@PicoRead8_32x_on = common dso_local global i64 0, align 8
@PicoRead16_32x_on = common dso_local global i64 0, align 8
@PicoWrite8_32x_on = common dso_local global i64 0, align 8
@PicoWrite16_32x_on = common dso_local global i64 0, align 8
@sh2_read8_map = common dso_local global %struct.TYPE_32__* null, align 8
@sh2_read8_unmapped = common dso_local global i32 0, align 4
@sh2_read16_unmapped = common dso_local global i32 0, align 4
@sh2_read16_map = common dso_local global %struct.TYPE_26__* null, align 8
@sh2_write8_map = common dso_local global %struct.TYPE_32__* null, align 8
@sh2_write8_unmapped = common dso_local global %struct.TYPE_32__ zeroinitializer, align 8
@sh2_write16_map = common dso_local global %struct.TYPE_32__* null, align 8
@sh2_write16_unmapped = common dso_local global %struct.TYPE_32__ zeroinitializer, align 8
@sh2_write_ignore = common dso_local global %struct.TYPE_32__ zeroinitializer, align 8
@sh2_read8_cs0 = common dso_local global i32 0, align 4
@sh2_read16_cs0 = common dso_local global i32 0, align 4
@sh2_write8_cs0 = common dso_local global %struct.TYPE_32__ zeroinitializer, align 8
@sh2_write16_cs0 = common dso_local global %struct.TYPE_32__ zeroinitializer, align 8
@sh2_write8_sdram = common dso_local global %struct.TYPE_32__ zeroinitializer, align 8
@sh2_write8_sdram_wt = common dso_local global %struct.TYPE_32__ zeroinitializer, align 8
@sh2_write16_sdram = common dso_local global %struct.TYPE_32__ zeroinitializer, align 8
@sh2_read8_da = common dso_local global i32 0, align 4
@sh2_read16_da = common dso_local global i32 0, align 4
@sh2_write8_da = common dso_local global %struct.TYPE_32__ zeroinitializer, align 8
@sh2_write16_da = common dso_local global %struct.TYPE_32__ zeroinitializer, align 8
@sh2_peripheral_read8 = common dso_local global i32 0, align 4
@sh2_peripheral_read16 = common dso_local global i32 0, align 4
@sh2_peripheral_write8 = common dso_local global %struct.TYPE_32__ zeroinitializer, align 8
@sh2_peripheral_write16 = common dso_local global %struct.TYPE_32__ zeroinitializer, align 8
@ssh2 = common dso_local global %struct.TYPE_31__ zeroinitializer, align 8
@msh2 = common dso_local global %struct.TYPE_31__ zeroinitializer, align 8
@z80_write_map = common dso_local global i32 0, align 4
@z80_md_bank_write_32x = common dso_local global i32 0, align 4
@PicoCpuFM68k = common dso_local global %struct.TYPE_29__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoMemSetup32x() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call %struct.TYPE_28__* @plat_mmap(i32 100663296, i32 24, i32 0, i32 0)
  store %struct.TYPE_28__* %3, %struct.TYPE_28__** @Pico32xMem, align 8
  %4 = load %struct.TYPE_28__*, %struct.TYPE_28__** @Pico32xMem, align 8
  %5 = icmp eq %struct.TYPE_28__* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @EL_STATUS, align 4
  %8 = call i32 @elprintf(i32 %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %312

9:                                                ; preds = %0
  %10 = call i32 (...) @get_bios()
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @Pico, i32 0, i32 2, i32 0), align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %79, label %13

13:                                               ; preds = %9
  store i32 8, i32* %1, align 4
  %14 = load i32, i32* @m68k_read8_map, align 4
  %15 = load i32, i32* %1, align 4
  %16 = sub i32 %15, 1
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** @Pico32xMem, align 8
  %18 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @cpu68k_map_set(i32 %14, i32 0, i32 %16, i64 %19, i32 0)
  %21 = load i32, i32* @m68k_read16_map, align 4
  %22 = load i32, i32* %1, align 4
  %23 = sub i32 %22, 1
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** @Pico32xMem, align 8
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @cpu68k_map_set(i32 %21, i32 0, i32 %23, i64 %26, i32 0)
  %28 = load i32, i32* @m68k_write8_map, align 4
  %29 = load i32, i32* %1, align 4
  %30 = sub i32 %29, 1
  %31 = load i64, i64* @PicoWrite8_hint, align 8
  %32 = call i32 @cpu68k_map_set(i32 %28, i32 0, i32 %30, i64 %31, i32 1)
  %33 = load i32, i32* @m68k_write16_map, align 4
  %34 = load i32, i32* %1, align 4
  %35 = sub i32 %34, 1
  %36 = load i64, i64* @PicoWrite16_hint, align 8
  %37 = call i32 @cpu68k_map_set(i32 %33, i32 0, i32 %35, i64 %36, i32 1)
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @Pico, i32 0, i32 0), align 8
  %39 = load i32, i32* @M68K_BANK_MASK, align 4
  %40 = add i32 %38, %39
  %41 = load i32, i32* @M68K_BANK_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* %1, align 4
  %45 = icmp ugt i32 %44, 524288
  br i1 %45, label %46, label %47

46:                                               ; preds = %13
  store i32 524288, i32* %1, align 4
  br label %47

47:                                               ; preds = %46, %13
  %48 = load i32, i32* @m68k_read8_map, align 4
  %49 = load i32, i32* %1, align 4
  %50 = add i32 8912896, %49
  %51 = sub i32 %50, 1
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @Pico, i32 0, i32 1), align 8
  %53 = call i32 @cpu68k_map_set(i32 %48, i32 8912896, i32 %51, i64 %52, i32 0)
  %54 = load i32, i32* @m68k_read16_map, align 4
  %55 = load i32, i32* %1, align 4
  %56 = add i32 8912896, %55
  %57 = sub i32 %56, 1
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @Pico, i32 0, i32 1), align 8
  %59 = call i32 @cpu68k_map_set(i32 %54, i32 8912896, i32 %57, i64 %58, i32 0)
  %60 = load i32, i32* @m68k_write8_map, align 4
  %61 = load i32, i32* %1, align 4
  %62 = add i32 8912896, %61
  %63 = sub i32 %62, 1
  %64 = load i64, i64* @PicoWrite8_cart, align 8
  %65 = call i32 @cpu68k_map_set(i32 %60, i32 8912896, i32 %63, i64 %64, i32 1)
  %66 = load i32, i32* @m68k_write16_map, align 4
  %67 = load i32, i32* %1, align 4
  %68 = add i32 8912896, %67
  %69 = sub i32 %68, 1
  %70 = load i64, i64* @PicoWrite16_cart, align 8
  %71 = call i32 @cpu68k_map_set(i32 %66, i32 8912896, i32 %69, i64 %70, i32 1)
  %72 = call i32 @bank_switch(i32 0)
  %73 = load i32, i32* @m68k_write8_map, align 4
  %74 = load i64, i64* @PicoWrite8_bank, align 8
  %75 = call i32 @cpu68k_map_set(i32 %73, i32 9437184, i32 10485759, i64 %74, i32 1)
  %76 = load i32, i32* @m68k_write16_map, align 4
  %77 = load i64, i64* @PicoWrite16_bank, align 8
  %78 = call i32 @cpu68k_map_set(i32 %76, i32 9437184, i32 10485759, i64 %77, i32 1)
  br label %79

79:                                               ; preds = %47, %9
  %80 = load i32, i32* @m68k_read8_map, align 4
  %81 = load i64, i64* @PicoRead8_32x_on, align 8
  %82 = call i32 @cpu68k_map_set(i32 %80, i32 10551296, i32 10616831, i64 %81, i32 1)
  %83 = load i32, i32* @m68k_read16_map, align 4
  %84 = load i64, i64* @PicoRead16_32x_on, align 8
  %85 = call i32 @cpu68k_map_set(i32 %83, i32 10551296, i32 10616831, i64 %84, i32 1)
  %86 = load i32, i32* @m68k_write8_map, align 4
  %87 = load i64, i64* @PicoWrite8_32x_on, align 8
  %88 = call i32 @cpu68k_map_set(i32 %86, i32 10551296, i32 10616831, i64 %87, i32 1)
  %89 = load i32, i32* @m68k_write16_map, align 4
  %90 = load i64, i64* @PicoWrite16_32x_on, align 8
  %91 = call i32 @cpu68k_map_set(i32 %89, i32 10551296, i32 10616831, i64 %90, i32 1)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %112, %79
  %93 = load i32, i32* %2, align 4
  %94 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_read8_map, align 8
  %95 = call i32 @ARRAY_SIZE(%struct.TYPE_32__* %94)
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %92
  %98 = load i32, i32* @sh2_read8_unmapped, align 4
  %99 = call i8* @MAP_HANDLER(i32 %98)
  %100 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_read8_map, align 8
  %101 = load i32, i32* %2, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %103, i32 0, i32 1
  store i8* %99, i8** %104, align 8
  %105 = load i32, i32* @sh2_read16_unmapped, align 4
  %106 = call i8* @MAP_HANDLER(i32 %105)
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** @sh2_read16_map, align 8
  %108 = load i32, i32* %2, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 1
  store i8* %106, i8** %111, align 8
  br label %112

112:                                              ; preds = %97
  %113 = load i32, i32* %2, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %2, align 4
  br label %92

115:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %132, %115
  %117 = load i32, i32* %2, align 4
  %118 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_write8_map, align 8
  %119 = call i32 @ARRAY_SIZE(%struct.TYPE_32__* %118)
  %120 = icmp slt i32 %117, %119
  br i1 %120, label %121, label %135

121:                                              ; preds = %116
  %122 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_write8_map, align 8
  %123 = load i32, i32* %2, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %122, i64 %124
  %126 = bitcast %struct.TYPE_32__* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %126, i8* align 8 bitcast (%struct.TYPE_32__* @sh2_write8_unmapped to i8*), i64 16, i1 false)
  %127 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_write16_map, align 8
  %128 = load i32, i32* %2, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %127, i64 %129
  %131 = bitcast %struct.TYPE_32__* %130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %131, i8* align 8 bitcast (%struct.TYPE_32__* @sh2_write16_unmapped to i8*), i64 16, i1 false)
  br label %132

132:                                              ; preds = %121
  %133 = load i32, i32* %2, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %2, align 4
  br label %116

135:                                              ; preds = %116
  store i32 64, i32* %2, align 4
  br label %136

136:                                              ; preds = %153, %135
  %137 = load i32, i32* %2, align 4
  %138 = icmp sle i32 %137, 95
  br i1 %138, label %139, label %156

139:                                              ; preds = %136
  %140 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_write8_map, align 8
  %141 = load i32, i32* %2, align 4
  %142 = ashr i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %140, i64 %143
  %145 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_write16_map, align 8
  %146 = load i32, i32* %2, align 4
  %147 = ashr i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %145, i64 %148
  %150 = bitcast %struct.TYPE_32__* %149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %150, i8* align 8 bitcast (%struct.TYPE_32__* @sh2_write_ignore to i8*), i64 16, i1 false)
  %151 = bitcast %struct.TYPE_32__* %144 to i8*
  %152 = bitcast %struct.TYPE_32__* %149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %151, i8* align 8 %152, i64 16, i1 false)
  br label %153

153:                                              ; preds = %139
  %154 = load i32, i32* %2, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %2, align 4
  br label %136

156:                                              ; preds = %136
  %157 = load i32, i32* @sh2_read8_cs0, align 4
  %158 = call i8* @MAP_HANDLER(i32 %157)
  %159 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_read8_map, align 8
  %160 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %159, i64 16
  %161 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %160, i32 0, i32 1
  store i8* %158, i8** %161, align 8
  %162 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_read8_map, align 8
  %163 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %163, i32 0, i32 1
  store i8* %158, i8** %164, align 8
  %165 = load i32, i32* @sh2_read16_cs0, align 4
  %166 = call i8* @MAP_HANDLER(i32 %165)
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** @sh2_read16_map, align 8
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %167, i64 16
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 1
  store i8* %166, i8** %169, align 8
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** @sh2_read16_map, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i64 0
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 1
  store i8* %166, i8** %172, align 8
  %173 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_write8_map, align 8
  %174 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %173, i64 0
  %175 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_write8_map, align 8
  %176 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %175, i64 16
  %177 = bitcast %struct.TYPE_32__* %176 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %177, i8* align 8 bitcast (%struct.TYPE_32__* @sh2_write8_cs0 to i8*), i64 16, i1 false)
  %178 = bitcast %struct.TYPE_32__* %174 to i8*
  %179 = bitcast %struct.TYPE_32__* %176 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %178, i8* align 8 %179, i64 16, i1 false)
  %180 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_write16_map, align 8
  %181 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %180, i64 0
  %182 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_write16_map, align 8
  %183 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %182, i64 16
  %184 = bitcast %struct.TYPE_32__* %183 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %184, i8* align 8 bitcast (%struct.TYPE_32__* @sh2_write16_cs0 to i8*), i64 16, i1 false)
  %185 = bitcast %struct.TYPE_32__* %181 to i8*
  %186 = bitcast %struct.TYPE_32__* %183 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %185, i8* align 8 %186, i64 16, i1 false)
  %187 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @Pico, i32 0, i32 1), align 8
  %188 = call i8* @MAP_MEMORY(i64 %187)
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** @sh2_read16_map, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i64 17
  %191 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %190, i32 0, i32 1
  store i8* %188, i8** %191, align 8
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** @sh2_read16_map, align 8
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %192, i64 1
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 1
  store i8* %188, i8** %194, align 8
  %195 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_read8_map, align 8
  %196 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %195, i64 17
  %197 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %196, i32 0, i32 1
  store i8* %188, i8** %197, align 8
  %198 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_read8_map, align 8
  %199 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %198, i64 1
  %200 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %199, i32 0, i32 1
  store i8* %188, i8** %200, align 8
  %201 = load %struct.TYPE_26__*, %struct.TYPE_26__** @sh2_read16_map, align 8
  %202 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %201, i64 17
  %203 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %202, i32 0, i32 0
  store i32 4194303, i32* %203, align 8
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** @sh2_read16_map, align 8
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i64 1
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %205, i32 0, i32 0
  store i32 4194303, i32* %206, align 8
  %207 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_read8_map, align 8
  %208 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %207, i64 17
  %209 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %208, i32 0, i32 0
  store i32 4194303, i32* %209, align 8
  %210 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_read8_map, align 8
  %211 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %210, i64 1
  %212 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %211, i32 0, i32 0
  store i32 4194303, i32* %212, align 8
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** @sh2_read16_map, align 8
  %214 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %213, i64 18
  %215 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %214, i32 0, i32 0
  store i32 131071, i32* %215, align 8
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** @sh2_read16_map, align 8
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %216, i64 2
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %217, i32 0, i32 0
  store i32 131071, i32* %218, align 8
  %219 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_read8_map, align 8
  %220 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %219, i64 18
  %221 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %220, i32 0, i32 0
  store i32 131071, i32* %221, align 8
  %222 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_read8_map, align 8
  %223 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %222, i64 2
  %224 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %223, i32 0, i32 0
  store i32 131071, i32* %224, align 8
  %225 = load %struct.TYPE_28__*, %struct.TYPE_28__** @Pico32xMem, align 8
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = call i8* @MAP_MEMORY(i64 %227)
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** @sh2_read16_map, align 8
  %230 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %229, i64 19
  %231 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %230, i32 0, i32 1
  store i8* %228, i8** %231, align 8
  %232 = load %struct.TYPE_26__*, %struct.TYPE_26__** @sh2_read16_map, align 8
  %233 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %232, i64 3
  %234 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %233, i32 0, i32 1
  store i8* %228, i8** %234, align 8
  %235 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_read8_map, align 8
  %236 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %235, i64 19
  %237 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %236, i32 0, i32 1
  store i8* %228, i8** %237, align 8
  %238 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_read8_map, align 8
  %239 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %238, i64 3
  %240 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %239, i32 0, i32 1
  store i8* %228, i8** %240, align 8
  %241 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_write8_map, align 8
  %242 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %241, i64 3
  %243 = bitcast %struct.TYPE_32__* %242 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %243, i8* align 8 bitcast (%struct.TYPE_32__* @sh2_write8_sdram to i8*), i64 16, i1 false)
  %244 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_write8_map, align 8
  %245 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %244, i64 19
  %246 = bitcast %struct.TYPE_32__* %245 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %246, i8* align 8 bitcast (%struct.TYPE_32__* @sh2_write8_sdram_wt to i8*), i64 16, i1 false)
  %247 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_write16_map, align 8
  %248 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %247, i64 3
  %249 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_write16_map, align 8
  %250 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %249, i64 19
  %251 = bitcast %struct.TYPE_32__* %250 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %251, i8* align 8 bitcast (%struct.TYPE_32__* @sh2_write16_sdram to i8*), i64 16, i1 false)
  %252 = bitcast %struct.TYPE_32__* %248 to i8*
  %253 = bitcast %struct.TYPE_32__* %250 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %252, i8* align 8 %253, i64 16, i1 false)
  %254 = load %struct.TYPE_26__*, %struct.TYPE_26__** @sh2_read16_map, align 8
  %255 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %254, i64 19
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 0
  store i32 262143, i32* %256, align 8
  %257 = load %struct.TYPE_26__*, %struct.TYPE_26__** @sh2_read16_map, align 8
  %258 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %257, i64 3
  %259 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %258, i32 0, i32 0
  store i32 262143, i32* %259, align 8
  %260 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_read8_map, align 8
  %261 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %260, i64 19
  %262 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %261, i32 0, i32 0
  store i32 262143, i32* %262, align 8
  %263 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_read8_map, align 8
  %264 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %263, i64 3
  %265 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %264, i32 0, i32 0
  store i32 262143, i32* %265, align 8
  %266 = load i32, i32* @sh2_read8_da, align 4
  %267 = call i8* @MAP_HANDLER(i32 %266)
  %268 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_read8_map, align 8
  %269 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %268, i64 96
  %270 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %269, i32 0, i32 1
  store i8* %267, i8** %270, align 8
  %271 = load i32, i32* @sh2_read16_da, align 4
  %272 = call i8* @MAP_HANDLER(i32 %271)
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** @sh2_read16_map, align 8
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i64 96
  %275 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %274, i32 0, i32 1
  store i8* %272, i8** %275, align 8
  %276 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_write8_map, align 8
  %277 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %276, i64 96
  %278 = bitcast %struct.TYPE_32__* %277 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %278, i8* align 8 bitcast (%struct.TYPE_32__* @sh2_write8_da to i8*), i64 16, i1 false)
  %279 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_write16_map, align 8
  %280 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %279, i64 96
  %281 = bitcast %struct.TYPE_32__* %280 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %281, i8* align 8 bitcast (%struct.TYPE_32__* @sh2_write16_da to i8*), i64 16, i1 false)
  %282 = load i32, i32* @sh2_peripheral_read8, align 4
  %283 = call i8* @MAP_HANDLER(i32 %282)
  %284 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_read8_map, align 8
  %285 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %284, i64 127
  %286 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %285, i32 0, i32 1
  store i8* %283, i8** %286, align 8
  %287 = load i32, i32* @sh2_peripheral_read16, align 4
  %288 = call i8* @MAP_HANDLER(i32 %287)
  %289 = load %struct.TYPE_26__*, %struct.TYPE_26__** @sh2_read16_map, align 8
  %290 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %289, i64 127
  %291 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %290, i32 0, i32 1
  store i8* %288, i8** %291, align 8
  %292 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_write8_map, align 8
  %293 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %292, i64 127
  %294 = bitcast %struct.TYPE_32__* %293 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %294, i8* align 8 bitcast (%struct.TYPE_32__* @sh2_peripheral_write8 to i8*), i64 16, i1 false)
  %295 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_write16_map, align 8
  %296 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %295, i64 127
  %297 = bitcast %struct.TYPE_32__* %296 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %297, i8* align 8 bitcast (%struct.TYPE_32__* @sh2_peripheral_write16 to i8*), i64 16, i1 false)
  %298 = call i32 @Pico32xSwapDRAM(i32 1)
  %299 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_read8_map, align 8
  store %struct.TYPE_32__* %299, %struct.TYPE_32__** getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @ssh2, i32 0, i32 3), align 8
  store %struct.TYPE_32__* %299, %struct.TYPE_32__** getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @msh2, i32 0, i32 3), align 8
  %300 = load %struct.TYPE_26__*, %struct.TYPE_26__** @sh2_read16_map, align 8
  store %struct.TYPE_26__* %300, %struct.TYPE_26__** getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @ssh2, i32 0, i32 2), align 8
  store %struct.TYPE_26__* %300, %struct.TYPE_26__** getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @msh2, i32 0, i32 2), align 8
  %301 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_write8_map, align 8
  %302 = bitcast %struct.TYPE_32__* %301 to i8*
  %303 = bitcast i8* %302 to i8**
  store i8** %303, i8*** getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @ssh2, i32 0, i32 0), align 8
  store i8** %303, i8*** getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @msh2, i32 0, i32 0), align 8
  %304 = load %struct.TYPE_32__*, %struct.TYPE_32__** @sh2_write16_map, align 8
  %305 = bitcast %struct.TYPE_32__* %304 to i8*
  %306 = bitcast i8* %305 to i8**
  store i8** %306, i8*** getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @ssh2, i32 0, i32 1), align 8
  store i8** %306, i8*** getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @msh2, i32 0, i32 1), align 8
  %307 = call i32 @sh2_drc_mem_setup(%struct.TYPE_31__* @msh2)
  %308 = call i32 @sh2_drc_mem_setup(%struct.TYPE_31__* @ssh2)
  %309 = load i32, i32* @z80_write_map, align 4
  %310 = load i32, i32* @z80_md_bank_write_32x, align 4
  %311 = call i32 @z80_map_set(i32 %309, i32 32768, i32 65535, i32 %310, i32 1)
  br label %312

312:                                              ; preds = %156, %6
  ret void
}

declare dso_local %struct.TYPE_28__* @plat_mmap(i32, i32, i32, i32) #1

declare dso_local i32 @elprintf(i32, i8*) #1

declare dso_local i32 @get_bios(...) #1

declare dso_local i32 @cpu68k_map_set(i32, i32, i32, i64, i32) #1

declare dso_local i32 @bank_switch(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_32__*) #1

declare dso_local i8* @MAP_HANDLER(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @MAP_MEMORY(i64) #1

declare dso_local i32 @Pico32xSwapDRAM(i32) #1

declare dso_local i32 @sh2_drc_mem_setup(%struct.TYPE_31__*) #1

declare dso_local i32 @z80_map_set(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
