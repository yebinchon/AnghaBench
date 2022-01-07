; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-sound.c_SetVectors.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-sound.c_SetVectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@SBIRQHandler = common dso_local global i64 0, align 8
@SBIHRM = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@SBIH = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@IVector = common dso_local global i32 0, align 4
@SBIHRMOld = common dso_local global i32 0, align 4
@SBIHRMRegs = common dso_local global i32 0, align 4
@SBIHOld = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @SetVectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetVectors() #0 {
  %1 = load i64, i64* @SBIRQHandler, align 8
  %2 = trunc i64 %1 to i32
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SBIHRM, i32 0, i32 0), align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @SBIH, i32 0, i32 0), align 4
  %3 = call i32 (...) @_my_cs()
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SBIHRM, i32 0, i32 1), align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @SBIH, i32 0, i32 1), align 4
  %4 = load i32, i32* @IVector, align 4
  %5 = call i32 @_go32_dpmi_get_real_mode_interrupt_vector(i32 %4, i32* @SBIHRMOld)
  %6 = call i32 @_go32_dpmi_allocate_real_mode_callback_iret(%struct.TYPE_7__* @SBIHRM, i32* @SBIHRMRegs)
  %7 = load i32, i32* @IVector, align 4
  %8 = call i32 @_go32_dpmi_set_real_mode_interrupt_vector(i32 %7, %struct.TYPE_7__* @SBIHRM)
  %9 = load i32, i32* @IVector, align 4
  %10 = call i32 @_go32_dpmi_get_protected_mode_interrupt_vector(i32 %9, i32* @SBIHOld)
  %11 = call i32 @_go32_dpmi_allocate_iret_wrapper(%struct.TYPE_8__* @SBIH)
  %12 = load i32, i32* @IVector, align 4
  %13 = call i32 @_go32_dpmi_set_protected_mode_interrupt_vector(i32 %12, %struct.TYPE_8__* @SBIH)
  ret i32 1
}

declare dso_local i32 @_my_cs(...) #1

declare dso_local i32 @_go32_dpmi_get_real_mode_interrupt_vector(i32, i32*) #1

declare dso_local i32 @_go32_dpmi_allocate_real_mode_callback_iret(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @_go32_dpmi_set_real_mode_interrupt_vector(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @_go32_dpmi_get_protected_mode_interrupt_vector(i32, i32*) #1

declare dso_local i32 @_go32_dpmi_allocate_iret_wrapper(%struct.TYPE_8__*) #1

declare dso_local i32 @_go32_dpmi_set_protected_mode_interrupt_vector(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
