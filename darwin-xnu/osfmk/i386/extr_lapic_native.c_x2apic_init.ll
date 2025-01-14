; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_lapic_native.c_x2apic_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_lapic_native.c_x2apic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSR_IA32_APIC_BASE = common dso_local global i32 0, align 4
@MSR_IA32_APIC_BASE_EXTENDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"x2APIC mode enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @x2apic_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x2apic_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @MSR_IA32_APIC_BASE, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @rdmsr(i32 %3, i32 %4, i32 %5)
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @MSR_IA32_APIC_BASE_EXTENDED, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %0
  %12 = load i32, i32* @MSR_IA32_APIC_BASE_EXTENDED, align 4
  %13 = load i32, i32* %1, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* @MSR_IA32_APIC_BASE, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @wrmsr(i32 %15, i32 %16, i32 %17)
  %19 = call i32 @kprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %11, %0
  ret void
}

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

declare dso_local i32 @kprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
