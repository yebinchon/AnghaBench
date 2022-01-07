; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-sound.c_ResetVectors.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-sound.c_ResetVectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IVector = common dso_local global i32 0, align 4
@SBIHOld = common dso_local global i32 0, align 4
@SBIH = common dso_local global i32 0, align 4
@SBIHRMOld = common dso_local global i32 0, align 4
@SBIHRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ResetVectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ResetVectors() #0 {
  %1 = load i32, i32* @IVector, align 4
  %2 = call i32 @_go32_dpmi_set_protected_mode_interrupt_vector(i32 %1, i32* @SBIHOld)
  %3 = call i32 @_go32_dpmi_free_iret_wrapper(i32* @SBIH)
  %4 = load i32, i32* @IVector, align 4
  %5 = call i32 @_go32_dpmi_set_real_mode_interrupt_vector(i32 %4, i32* @SBIHRMOld)
  %6 = call i32 @_go32_dpmi_free_real_mode_callback(i32* @SBIHRM)
  ret void
}

declare dso_local i32 @_go32_dpmi_set_protected_mode_interrupt_vector(i32, i32*) #1

declare dso_local i32 @_go32_dpmi_free_iret_wrapper(i32*) #1

declare dso_local i32 @_go32_dpmi_set_real_mode_interrupt_vector(i32, i32*) #1

declare dso_local i32 @_go32_dpmi_free_real_mode_callback(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
