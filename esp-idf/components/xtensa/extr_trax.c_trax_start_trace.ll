; ModuleID = '/home/carl/AnghaBench/esp-idf/components/xtensa/extr_trax.c_trax_start_trace.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/xtensa/extr_trax.c_trax_start_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Trax_start_trace called, but trax is disabled in menuconfig!\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@ERI_TRAX_DELAYCNT = common dso_local global i32 0, align 4
@ERI_TRAX_PCMATCHCTRL = common dso_local global i32 0, align 4
@ERI_TRAX_TRAXCTRL = common dso_local global i32 0, align 4
@ERI_TRAX_TRAXSTAT = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@TRAXCTRL_CNTU = common dso_local global i32 0, align 4
@TRAXCTRL_PTOWS = common dso_local global i32 0, align 4
@TRAXCTRL_SMPER_SHIFT = common dso_local global i32 0, align 4
@TRAXCTRL_TMEN = common dso_local global i32 0, align 4
@TRAXCTRL_TREN = common dso_local global i32 0, align 4
@TRAXCTRL_TRSTP = common dso_local global i32 0, align 4
@TRAXSTAT_TRACT = common dso_local global i32 0, align 4
@TRAX_DOWNCOUNT_INSTRUCTIONS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trax_start_trace(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @TAG, align 4
  %5 = call i32 @ESP_LOGE(i32 %4, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  ret i32 %6
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
