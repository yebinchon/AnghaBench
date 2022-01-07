; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp_desc.c_cpu_syscall_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp_desc.c_cpu_syscall_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MSR_IA32_SYSENTER_CS = common dso_local global i32 0, align 4
@SYSENTER_CS = common dso_local global i32 0, align 4
@MSR_IA32_SYSENTER_EIP = common dso_local global i32 0, align 4
@hi64_sysenter = common dso_local global i64 0, align 8
@MSR_IA32_SYSENTER_ESP = common dso_local global i32 0, align 4
@MSR_IA32_EFER = common dso_local global i32 0, align 4
@MSR_IA32_EFER_SCE = common dso_local global i32 0, align 4
@MSR_IA32_LSTAR = common dso_local global i32 0, align 4
@hi64_syscall = common dso_local global i64 0, align 8
@MSR_IA32_STAR = common dso_local global i32 0, align 4
@USER_CS = common dso_local global i64 0, align 8
@KERNEL64_CS = common dso_local global i64 0, align 8
@MSR_IA32_FMASK = common dso_local global i32 0, align 4
@EFL_DF = common dso_local global i32 0, align 4
@EFL_IF = common dso_local global i32 0, align 4
@EFL_TF = common dso_local global i32 0, align 4
@EFL_NT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_syscall_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @MSR_IA32_SYSENTER_CS, align 4
  %4 = load i32, i32* @SYSENTER_CS, align 4
  %5 = call i32 @wrmsr64(i32 %3, i32 %4)
  %6 = load i32, i32* @MSR_IA32_SYSENTER_EIP, align 4
  %7 = load i64, i64* @hi64_sysenter, align 8
  %8 = call i32 @DBLMAP(i64 %7)
  %9 = call i32 @wrmsr64(i32 %6, i32 %8)
  %10 = load i32, i32* @MSR_IA32_SYSENTER_ESP, align 4
  %11 = call %struct.TYPE_4__* (...) @current_cpu_datap()
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @wrmsr64(i32 %10, i32 %14)
  %16 = load i32, i32* @MSR_IA32_EFER, align 4
  %17 = load i32, i32* @MSR_IA32_EFER, align 4
  %18 = call i32 @rdmsr64(i32 %17)
  %19 = load i32, i32* @MSR_IA32_EFER_SCE, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @wrmsr64(i32 %16, i32 %20)
  %22 = load i32, i32* @MSR_IA32_LSTAR, align 4
  %23 = load i64, i64* @hi64_syscall, align 8
  %24 = call i32 @DBLMAP(i64 %23)
  %25 = call i32 @wrmsr64(i32 %22, i32 %24)
  %26 = load i32, i32* @MSR_IA32_STAR, align 4
  %27 = load i64, i64* @USER_CS, align 8
  %28 = trunc i64 %27 to i32
  %29 = shl i32 %28, 48
  %30 = load i64, i64* @KERNEL64_CS, align 8
  %31 = trunc i64 %30 to i32
  %32 = shl i32 %31, 32
  %33 = or i32 %29, %32
  %34 = call i32 @wrmsr64(i32 %26, i32 %33)
  %35 = load i32, i32* @MSR_IA32_FMASK, align 4
  %36 = load i32, i32* @EFL_DF, align 4
  %37 = load i32, i32* @EFL_IF, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @EFL_TF, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @EFL_NT, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @wrmsr64(i32 %35, i32 %42)
  ret void
}

declare dso_local i32 @wrmsr64(i32, i32) #1

declare dso_local i32 @DBLMAP(i64) #1

declare dso_local %struct.TYPE_4__* @current_cpu_datap(...) #1

declare dso_local i32 @rdmsr64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
