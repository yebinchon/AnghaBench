; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm_ppc_new.c_ltopandsecond.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm_ppc_new.c_ltopandsecond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@PPC_ADDI = common dso_local global i32 0, align 4
@PPC_LWZ = common dso_local global i32 0, align 4
@PPC_STW = common dso_local global i32 0, align 4
@PPC_STWU = common dso_local global i32 0, align 4
@R_OPSTACK = common dso_local global i32 0, align 4
@R_SECOND = common dso_local global i32 0, align 4
@R_TOP = common dso_local global i32 0, align 4
@buf = common dso_local global i32* null, align 8
@compiledOfs = common dso_local global i32 0, align 4
@instruction = common dso_local global i64 0, align 8
@jused = common dso_local global i64* null, align 8
@pass = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@rtopped = common dso_local global i32 0, align 4
@tvm = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ltopandsecond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ltopandsecond() #0 {
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
