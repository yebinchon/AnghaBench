; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_pmap_switch.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_pmap_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PMAP__SWITCH = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_switch(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @PMAP__SWITCH, align 4
  %5 = call i32 @PMAP_CODE(i32 %4)
  %6 = load i32, i32* @DBG_FUNC_START, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @VM_KERNEL_ADDRHIDE(i32 %8)
  %10 = call i32 (i32, ...) @PMAP_TRACE_CONSTANT(i32 %7, i32 %9)
  %11 = call i32 (...) @splhigh()
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 (...) @current_thread()
  %14 = call i32 (...) @cpu_number()
  %15 = call i32 @set_dirbase(i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @splx(i32 %16)
  %18 = load i32, i32* @PMAP__SWITCH, align 4
  %19 = call i32 @PMAP_CODE(i32 %18)
  %20 = load i32, i32* @DBG_FUNC_END, align 4
  %21 = or i32 %19, %20
  %22 = call i32 (i32, ...) @PMAP_TRACE_CONSTANT(i32 %21)
  ret void
}

declare dso_local i32 @PMAP_TRACE_CONSTANT(i32, ...) #1

declare dso_local i32 @PMAP_CODE(i32) #1

declare dso_local i32 @VM_KERNEL_ADDRHIDE(i32) #1

declare dso_local i32 @splhigh(...) #1

declare dso_local i32 @set_dirbase(i32, i32, i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
