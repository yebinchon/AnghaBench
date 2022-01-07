; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_z80_mem_setup.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_z80_mem_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }

@z80_read_map = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ym2612_read_local_z80 = common dso_local global i64 0, align 8
@z80_md_vdp_read = common dso_local global i64 0, align 8
@z80_md_bank_read = common dso_local global i64 0, align 8
@z80_write_map = common dso_local global i32 0, align 4
@z80_md_ym2612_write = common dso_local global i64 0, align 8
@z80_md_vdp_br_write = common dso_local global i64 0, align 8
@z80_md_bank_write = common dso_local global i64 0, align 8
@CZ80 = common dso_local global i32 0, align 4
@drZ80 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@z80_md_in = common dso_local global i32 0, align 4
@z80_md_out = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @z80_mem_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @z80_mem_setup() #0 {
  %1 = load i32, i32* @z80_read_map, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0), align 8
  %3 = call i32 @z80_map_set(i32 %1, i32 0, i32 8191, i64 %2, i32 0)
  %4 = load i32, i32* @z80_read_map, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0), align 8
  %6 = call i32 @z80_map_set(i32 %4, i32 8192, i32 16383, i64 %5, i32 0)
  %7 = load i32, i32* @z80_read_map, align 4
  %8 = load i64, i64* @ym2612_read_local_z80, align 8
  %9 = call i32 @z80_map_set(i32 %7, i32 16384, i32 24575, i64 %8, i32 1)
  %10 = load i32, i32* @z80_read_map, align 4
  %11 = load i64, i64* @z80_md_vdp_read, align 8
  %12 = call i32 @z80_map_set(i32 %10, i32 24576, i32 32767, i64 %11, i32 1)
  %13 = load i32, i32* @z80_read_map, align 4
  %14 = load i64, i64* @z80_md_bank_read, align 8
  %15 = call i32 @z80_map_set(i32 %13, i32 32768, i32 65535, i64 %14, i32 1)
  %16 = load i32, i32* @z80_write_map, align 4
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0), align 8
  %18 = call i32 @z80_map_set(i32 %16, i32 0, i32 8191, i64 %17, i32 0)
  %19 = load i32, i32* @z80_write_map, align 4
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0), align 8
  %21 = call i32 @z80_map_set(i32 %19, i32 8192, i32 16383, i64 %20, i32 0)
  %22 = load i32, i32* @z80_write_map, align 4
  %23 = load i64, i64* @z80_md_ym2612_write, align 8
  %24 = call i32 @z80_map_set(i32 %22, i32 16384, i32 24575, i64 %23, i32 1)
  %25 = load i32, i32* @z80_write_map, align 4
  %26 = load i64, i64* @z80_md_vdp_br_write, align 8
  %27 = call i32 @z80_map_set(i32 %25, i32 24576, i32 32767, i64 %26, i32 1)
  %28 = load i32, i32* @z80_write_map, align 4
  %29 = load i64, i64* @z80_md_bank_write, align 8
  %30 = call i32 @z80_map_set(i32 %28, i32 32768, i32 65535, i64 %29, i32 1)
  ret void
}

declare dso_local i32 @z80_map_set(i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
