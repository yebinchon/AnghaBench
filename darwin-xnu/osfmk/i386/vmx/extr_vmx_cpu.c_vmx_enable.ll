; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/vmx/extr_vmx_cpu.c_vmx_enable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/vmx/extr_vmx_cpu.c_vmx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSR_IA32_FEATURE_CONTROL = common dso_local global i32 0, align 4
@MSR_IA32_FEATCTL_LOCK = common dso_local global i32 0, align 4
@MSR_IA32_FEATCTL_VMXON = common dso_local global i32 0, align 4
@CR4_VMXE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vmx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_enable() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @vmx_is_available()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %25

5:                                                ; preds = %0
  %6 = load i32, i32* @MSR_IA32_FEATURE_CONTROL, align 4
  %7 = call i32 @rdmsr64(i32 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @MSR_IA32_FEATCTL_LOCK, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 0, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %5
  %13 = load i32, i32* @MSR_IA32_FEATURE_CONTROL, align 4
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @MSR_IA32_FEATCTL_VMXON, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MSR_IA32_FEATCTL_LOCK, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @wrmsr64(i32 %13, i32 %18)
  br label %20

20:                                               ; preds = %12, %5
  %21 = call i32 (...) @get_cr4()
  %22 = load i32, i32* @CR4_VMXE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @set_cr4(i32 %23)
  br label %25

25:                                               ; preds = %20, %4
  ret void
}

declare dso_local i32 @vmx_is_available(...) #1

declare dso_local i32 @rdmsr64(i32) #1

declare dso_local i32 @wrmsr64(i32, i32) #1

declare dso_local i32 @set_cr4(i32) #1

declare dso_local i32 @get_cr4(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
