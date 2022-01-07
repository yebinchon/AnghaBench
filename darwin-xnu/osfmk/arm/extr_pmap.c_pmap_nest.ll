; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_nest.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_nest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERN_FAILURE = common dso_local global i32 0, align 4
@PMAP__NEST = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_nest(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* @PMAP__NEST, align 4
  %14 = call i32 @PMAP_CODE(i32 %13)
  %15 = load i32, i32* @DBG_FUNC_START, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @VM_KERNEL_ADDRHIDE(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @VM_KERNEL_ADDRHIDE(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @VM_KERNEL_ADDRHIDE(i32 %21)
  %23 = call i32 (i32, i32, i32, ...) @PMAP_TRACE(i32 2, i32 %16, i32 %18, i32 %20, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @pmap_nest_internal(i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @PMAP__NEST, align 4
  %31 = call i32 @PMAP_CODE(i32 %30)
  %32 = load i32, i32* @DBG_FUNC_END, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %11, align 4
  %35 = call i32 (i32, i32, i32, ...) @PMAP_TRACE(i32 2, i32 %33, i32 %34)
  %36 = load i32, i32* %11, align 4
  ret i32 %36
}

declare dso_local i32 @PMAP_TRACE(i32, i32, i32, ...) #1

declare dso_local i32 @PMAP_CODE(i32) #1

declare dso_local i32 @VM_KERNEL_ADDRHIDE(i32) #1

declare dso_local i32 @pmap_nest_internal(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
