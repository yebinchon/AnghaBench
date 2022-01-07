; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_syscalls.c_trap_R_AddAdditiveLightToScene.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_syscalls.c_trap_R_AddAdditiveLightToScene.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CG_R_ADDADDITIVELIGHTTOSCENE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trap_R_AddAdditiveLightToScene(i32 %0, float %1, float %2, float %3, float %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store i32 %0, i32* %6, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %11 = load i32, i32* @CG_R_ADDADDITIVELIGHTTOSCENE, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load float, float* %7, align 4
  %14 = call i32 @PASSFLOAT(float %13)
  %15 = load float, float* %8, align 4
  %16 = call i32 @PASSFLOAT(float %15)
  %17 = load float, float* %9, align 4
  %18 = call i32 @PASSFLOAT(float %17)
  %19 = load float, float* %10, align 4
  %20 = call i32 @PASSFLOAT(float %19)
  %21 = call i32 @syscall(i32 %11, i32 %12, i32 %14, i32 %16, i32 %18, i32 %20)
  ret void
}

declare dso_local i32 @syscall(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PASSFLOAT(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
