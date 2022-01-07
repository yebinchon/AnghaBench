; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_BTE_ApplyPatch.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_bte.c_BTE_ApplyPatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i32 }

@btstate = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@bte_hci_apply_patch_complete = common dso_local global i32 0, align 4
@HCI_VENDOR_PATCH_START_OCF = common dso_local global i32 0, align 4
@HCI_VENDOR_OGF = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTE_ApplyPatch(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @_CPU_ISR_Disable(i32 %5)
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 2), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @btstate, i32 0, i32 0), align 8
  %8 = call i32 @hci_arg(%struct.TYPE_3__* @btstate)
  %9 = load i32, i32* @bte_hci_apply_patch_complete, align 4
  %10 = call i32 @hci_cmd_complete(i32 %9)
  %11 = load i32, i32* @HCI_VENDOR_PATCH_START_OCF, align 4
  %12 = load i32, i32* @HCI_VENDOR_OGF, align 4
  %13 = call i32 @hci_vendor_specific_command(i32 %11, i32 %12, i32* %4, i32 1)
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @_CPU_ISR_Restore(i32 %14)
  %16 = load i32, i32* @ERR_OK, align 4
  ret i32 %16
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @hci_arg(%struct.TYPE_3__*) #1

declare dso_local i32 @hci_cmd_complete(i32) #1

declare dso_local i32 @hci_vendor_specific_command(i32, i32, i32*, i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
