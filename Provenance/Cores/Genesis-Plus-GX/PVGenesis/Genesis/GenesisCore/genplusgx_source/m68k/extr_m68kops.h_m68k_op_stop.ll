; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_stop.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@FLAG_S = common dso_local global i64 0, align 8
@STOP_LEVEL_STOP = common dso_local global i32 0, align 4
@CPU_STOPPED = common dso_local global i32 0, align 4
@m68ki_cpu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_stop() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @FLAG_S, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %0
  %5 = call i32 (...) @OPER_I_16()
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @STOP_LEVEL_STOP, align 4
  %7 = load i32, i32* @CPU_STOPPED, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* @CPU_STOPPED, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @m68ki_set_sr(i32 %9)
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68ki_cpu, i32 0, i32 0), align 8
  %12 = load i32, i32* @MUL, align 4
  %13 = mul nsw i32 4, %12
  %14 = sext i32 %13 to i64
  %15 = sub nsw i64 %11, %14
  %16 = call i32 @SET_CYCLES(i64 %15)
  br label %19

17:                                               ; preds = %0
  %18 = call i32 (...) @m68ki_exception_privilege_violation()
  br label %19

19:                                               ; preds = %17, %4
  ret void
}

declare dso_local i32 @OPER_I_16(...) #1

declare dso_local i32 @m68ki_set_sr(i32) #1

declare dso_local i32 @SET_CYCLES(i64) #1

declare dso_local i32 @m68ki_exception_privilege_violation(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
