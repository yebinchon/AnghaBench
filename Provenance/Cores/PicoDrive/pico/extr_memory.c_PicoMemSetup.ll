; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_PicoMemSetup.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_PicoMemSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32* }
%struct.TYPE_7__ = type { i32*, i32*, i32*, i32*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i64*, i32, i32, i32, i32, i32, i32 }

@m68k_read8_map = common dso_local global i64 0, align 8
@m68k_unmapped_read8 = common dso_local global i64 0, align 8
@m68k_read16_map = common dso_local global i64 0, align 8
@m68k_unmapped_read16 = common dso_local global i64 0, align 8
@m68k_write8_map = common dso_local global i64 0, align 8
@m68k_unmapped_write8 = common dso_local global i64 0, align 8
@m68k_write16_map = common dso_local global i64 0, align 8
@m68k_unmapped_write16 = common dso_local global i64 0, align 8
@M68K_MEM_SHIFT = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@SRam = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@SRF_ENABLED = common dso_local global i32 0, align 4
@PicoRead8_sram = common dso_local global i64 0, align 8
@PicoRead16_sram = common dso_local global i64 0, align 8
@PicoWrite8_sram = common dso_local global i64 0, align 8
@PicoWrite16_sram = common dso_local global i64 0, align 8
@PicoRead8_z80 = common dso_local global i64 0, align 8
@PicoRead16_z80 = common dso_local global i64 0, align 8
@PicoWrite8_z80 = common dso_local global i64 0, align 8
@PicoWrite16_z80 = common dso_local global i64 0, align 8
@PicoRead8_io = common dso_local global i64 0, align 8
@PicoRead16_io = common dso_local global i64 0, align 8
@PicoWrite8_io = common dso_local global i64 0, align 8
@PicoWrite16_io = common dso_local global i64 0, align 8
@PicoRead8_vdp = common dso_local global i64 0, align 8
@PicoRead16_vdp = common dso_local global i64 0, align 8
@PicoWrite8_vdp = common dso_local global i64 0, align 8
@PicoWrite16_vdp = common dso_local global i64 0, align 8
@FAMEC_FETCHBITS = common dso_local global i32 0, align 4
@M68K_FETCHBANK1 = common dso_local global i32 0, align 4
@PicoCpuCM68k = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@PicoCpuFM68k = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@m68k_read16 = common dso_local global i32 0, align 4
@m68k_read32 = common dso_local global i32 0, align 4
@m68k_read8 = common dso_local global i32 0, align 4
@m68k_write16 = common dso_local global i32 0, align 4
@m68k_write32 = common dso_local global i32 0, align 4
@m68k_write8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoMemSetup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @m68k_read8_map, align 8
  %5 = load i64, i64* @m68k_unmapped_read8, align 8
  %6 = call i32 @cpu68k_map_set(i64 %4, i32 0, i32 16777215, i64 %5, i32 1)
  %7 = load i64, i64* @m68k_read16_map, align 8
  %8 = load i64, i64* @m68k_unmapped_read16, align 8
  %9 = call i32 @cpu68k_map_set(i64 %7, i32 0, i32 16777215, i64 %8, i32 1)
  %10 = load i64, i64* @m68k_write8_map, align 8
  %11 = load i64, i64* @m68k_unmapped_write8, align 8
  %12 = call i32 @cpu68k_map_set(i64 %10, i32 0, i32 16777215, i64 %11, i32 1)
  %13 = load i64, i64* @m68k_write16_map, align 8
  %14 = load i64, i64* @m68k_unmapped_write16, align 8
  %15 = call i32 @cpu68k_map_set(i64 %13, i32 0, i32 16777215, i64 %14, i32 1)
  %16 = load i32, i32* @M68K_MEM_SHIFT, align 4
  %17 = shl i32 1, %16
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 0), align 8
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %19, %20
  %22 = load i32, i32* %1, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  store i32 %24, i32* %2, align 4
  %25 = load i64, i64* @m68k_read8_map, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sub nsw i32 %26, 1
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 2), align 8
  %29 = call i32 @cpu68k_map_set(i64 %25, i32 0, i32 %27, i64 %28, i32 0)
  %30 = load i64, i64* @m68k_read16_map, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 2), align 8
  %34 = call i32 @cpu68k_map_set(i64 %30, i32 0, i32 %32, i64 %33, i32 0)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 0), align 8
  %36 = load i32, i32* @SRF_ENABLED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %92

39:                                               ; preds = %0
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 3), align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %92

42:                                               ; preds = %39
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 1), align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 2), align 8
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* %1, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %1, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  store i32 %51, i32* %2, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 2), align 8
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 %52, %53
  %55 = icmp sge i32 %54, 16777216
  br i1 %55, label %56, label %59

56:                                               ; preds = %42
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 2), align 8
  %58 = sub nsw i32 16777216, %57
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %42
  %60 = load i64, i64* @m68k_read8_map, align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 2), align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 2), align 8
  %63 = load i32, i32* %2, align 4
  %64 = add nsw i32 %62, %63
  %65 = sub nsw i32 %64, 1
  %66 = load i64, i64* @PicoRead8_sram, align 8
  %67 = call i32 @cpu68k_map_set(i64 %60, i32 %61, i32 %65, i64 %66, i32 1)
  %68 = load i64, i64* @m68k_read16_map, align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 2), align 8
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 2), align 8
  %71 = load i32, i32* %2, align 4
  %72 = add nsw i32 %70, %71
  %73 = sub nsw i32 %72, 1
  %74 = load i64, i64* @PicoRead16_sram, align 8
  %75 = call i32 @cpu68k_map_set(i64 %68, i32 %69, i32 %73, i64 %74, i32 1)
  %76 = load i64, i64* @m68k_write8_map, align 8
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 2), align 8
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 2), align 8
  %79 = load i32, i32* %2, align 4
  %80 = add nsw i32 %78, %79
  %81 = sub nsw i32 %80, 1
  %82 = load i64, i64* @PicoWrite8_sram, align 8
  %83 = call i32 @cpu68k_map_set(i64 %76, i32 %77, i32 %81, i64 %82, i32 1)
  %84 = load i64, i64* @m68k_write16_map, align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 2), align 8
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 2), align 8
  %87 = load i32, i32* %2, align 4
  %88 = add nsw i32 %86, %87
  %89 = sub nsw i32 %88, 1
  %90 = load i64, i64* @PicoWrite16_sram, align 8
  %91 = call i32 @cpu68k_map_set(i64 %84, i32 %85, i32 %89, i64 %90, i32 1)
  br label %92

92:                                               ; preds = %59, %39, %0
  %93 = load i64, i64* @m68k_read8_map, align 8
  %94 = load i64, i64* @PicoRead8_z80, align 8
  %95 = call i32 @cpu68k_map_set(i64 %93, i32 10485760, i32 10551295, i64 %94, i32 1)
  %96 = load i64, i64* @m68k_read16_map, align 8
  %97 = load i64, i64* @PicoRead16_z80, align 8
  %98 = call i32 @cpu68k_map_set(i64 %96, i32 10485760, i32 10551295, i64 %97, i32 1)
  %99 = load i64, i64* @m68k_write8_map, align 8
  %100 = load i64, i64* @PicoWrite8_z80, align 8
  %101 = call i32 @cpu68k_map_set(i64 %99, i32 10485760, i32 10551295, i64 %100, i32 1)
  %102 = load i64, i64* @m68k_write16_map, align 8
  %103 = load i64, i64* @PicoWrite16_z80, align 8
  %104 = call i32 @cpu68k_map_set(i64 %102, i32 10485760, i32 10551295, i64 %103, i32 1)
  %105 = load i64, i64* @m68k_read8_map, align 8
  %106 = load i64, i64* @PicoRead8_io, align 8
  %107 = call i32 @cpu68k_map_set(i64 %105, i32 10551296, i32 10616831, i64 %106, i32 1)
  %108 = load i64, i64* @m68k_read16_map, align 8
  %109 = load i64, i64* @PicoRead16_io, align 8
  %110 = call i32 @cpu68k_map_set(i64 %108, i32 10551296, i32 10616831, i64 %109, i32 1)
  %111 = load i64, i64* @m68k_write8_map, align 8
  %112 = load i64, i64* @PicoWrite8_io, align 8
  %113 = call i32 @cpu68k_map_set(i64 %111, i32 10551296, i32 10616831, i64 %112, i32 1)
  %114 = load i64, i64* @m68k_write16_map, align 8
  %115 = load i64, i64* @PicoWrite16_io, align 8
  %116 = call i32 @cpu68k_map_set(i64 %114, i32 10551296, i32 10616831, i64 %115, i32 1)
  store i32 12582912, i32* %3, align 4
  br label %117

117:                                              ; preds = %150, %92
  %118 = load i32, i32* %3, align 4
  %119 = icmp slt i32 %118, 14680064
  br i1 %119, label %120, label %153

120:                                              ; preds = %117
  %121 = load i32, i32* %3, align 4
  %122 = and i32 %121, 15139040
  %123 = icmp ne i32 %122, 12582912
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %150

125:                                              ; preds = %120
  %126 = load i64, i64* @m68k_read8_map, align 8
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* %3, align 4
  %129 = add nsw i32 %128, 65535
  %130 = load i64, i64* @PicoRead8_vdp, align 8
  %131 = call i32 @cpu68k_map_set(i64 %126, i32 %127, i32 %129, i64 %130, i32 1)
  %132 = load i64, i64* @m68k_read16_map, align 8
  %133 = load i32, i32* %3, align 4
  %134 = load i32, i32* %3, align 4
  %135 = add nsw i32 %134, 65535
  %136 = load i64, i64* @PicoRead16_vdp, align 8
  %137 = call i32 @cpu68k_map_set(i64 %132, i32 %133, i32 %135, i64 %136, i32 1)
  %138 = load i64, i64* @m68k_write8_map, align 8
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* %3, align 4
  %141 = add nsw i32 %140, 65535
  %142 = load i64, i64* @PicoWrite8_vdp, align 8
  %143 = call i32 @cpu68k_map_set(i64 %138, i32 %139, i32 %141, i64 %142, i32 1)
  %144 = load i64, i64* @m68k_write16_map, align 8
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* %3, align 4
  %147 = add nsw i32 %146, 65535
  %148 = load i64, i64* @PicoWrite16_vdp, align 8
  %149 = call i32 @cpu68k_map_set(i64 %144, i32 %145, i32 %147, i64 %148, i32 1)
  br label %150

150:                                              ; preds = %125, %124
  %151 = load i32, i32* %3, align 4
  %152 = add nsw i32 %151, 65536
  store i32 %152, i32* %3, align 4
  br label %117

153:                                              ; preds = %117
  store i32 14680064, i32* %3, align 4
  br label %154

154:                                              ; preds = %182, %153
  %155 = load i32, i32* %3, align 4
  %156 = icmp slt i32 %155, 16777216
  br i1 %156, label %157, label %185

157:                                              ; preds = %154
  %158 = load i64, i64* @m68k_read8_map, align 8
  %159 = load i32, i32* %3, align 4
  %160 = load i32, i32* %3, align 4
  %161 = add nsw i32 %160, 65535
  %162 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 1), align 8
  %163 = call i32 @cpu68k_map_set(i64 %158, i32 %159, i32 %161, i64 %162, i32 0)
  %164 = load i64, i64* @m68k_read16_map, align 8
  %165 = load i32, i32* %3, align 4
  %166 = load i32, i32* %3, align 4
  %167 = add nsw i32 %166, 65535
  %168 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 1), align 8
  %169 = call i32 @cpu68k_map_set(i64 %164, i32 %165, i32 %167, i64 %168, i32 0)
  %170 = load i64, i64* @m68k_write8_map, align 8
  %171 = load i32, i32* %3, align 4
  %172 = load i32, i32* %3, align 4
  %173 = add nsw i32 %172, 65535
  %174 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 1), align 8
  %175 = call i32 @cpu68k_map_set(i64 %170, i32 %171, i32 %173, i64 %174, i32 0)
  %176 = load i64, i64* @m68k_write16_map, align 8
  %177 = load i32, i32* %3, align 4
  %178 = load i32, i32* %3, align 4
  %179 = add nsw i32 %178, 65535
  %180 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 1), align 8
  %181 = call i32 @cpu68k_map_set(i64 %176, i32 %177, i32 %179, i64 %180, i32 0)
  br label %182

182:                                              ; preds = %157
  %183 = load i32, i32* %3, align 4
  %184 = add nsw i32 %183, 65536
  store i32 %184, i32* %3, align 4
  br label %154

185:                                              ; preds = %154
  %186 = call i32 (...) @z80_mem_setup()
  ret void
}

declare dso_local i32 @cpu68k_map_set(i64, i32, i32, i64, i32) #1

declare dso_local i32 @z80_mem_setup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
