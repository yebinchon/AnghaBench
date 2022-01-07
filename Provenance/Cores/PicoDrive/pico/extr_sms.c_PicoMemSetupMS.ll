; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_sms.c_PicoMemSetupMS.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_sms.c_PicoMemSetupMS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@z80_read_map = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@z80_write_map = common dso_local global i32 0, align 4
@xwrite = common dso_local global i64 0, align 8
@CZ80 = common dso_local global i32 0, align 4
@drZ80 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@z80_sms_in = common dso_local global i32 0, align 4
@z80_sms_out = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoMemSetupMS() #0 {
  %1 = load i32, i32* @z80_read_map, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 1), align 8
  %3 = call i32 @z80_map_set(i32 %1, i32 0, i32 49151, i64 %2, i32 0)
  %4 = load i32, i32* @z80_read_map, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0), align 8
  %6 = call i32 @z80_map_set(i32 %4, i32 49152, i32 57343, i64 %5, i32 0)
  %7 = load i32, i32* @z80_read_map, align 4
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0), align 8
  %9 = call i32 @z80_map_set(i32 %7, i32 57344, i32 65535, i64 %8, i32 0)
  %10 = load i32, i32* @z80_write_map, align 4
  %11 = load i64, i64* @xwrite, align 8
  %12 = call i32 @z80_map_set(i32 %10, i32 0, i32 49151, i64 %11, i32 1)
  %13 = load i32, i32* @z80_write_map, align 4
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0), align 8
  %15 = call i32 @z80_map_set(i32 %13, i32 49152, i32 57343, i64 %14, i32 0)
  %16 = load i32, i32* @z80_write_map, align 4
  %17 = load i64, i64* @xwrite, align 8
  %18 = call i32 @z80_map_set(i32 %16, i32 57344, i32 65535, i64 %17, i32 1)
  ret void
}

declare dso_local i32 @z80_map_set(i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
