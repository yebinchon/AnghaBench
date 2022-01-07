; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_emit_cmpstr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_emit_cmpstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_cmpstr(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp sge i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @emit_pushreg(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @emit_xor(i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @emit_shrimm(i32 %19, i32 1, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @emit_mov(i32 %22, i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @emit_addimm_and_set_flags(i32 -16843009, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @emit_adcimm(i32 -1, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @emit_not(i32 %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @emit_xor(i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @emit_andimm(i32 %36, i32 16843009, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @emit_addimm_and_set_flags(i32 -1, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @emit_adc(i32 %41, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @emit_popreg(i32 %44)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @emit_pushreg(i32) #1

declare dso_local i32 @emit_xor(i32, i32, i32) #1

declare dso_local i32 @emit_shrimm(i32, i32, i32) #1

declare dso_local i32 @emit_mov(i32, i32) #1

declare dso_local i32 @emit_addimm_and_set_flags(i32, i32) #1

declare dso_local i32 @emit_adcimm(i32, i32) #1

declare dso_local i32 @emit_not(i32, i32) #1

declare dso_local i32 @emit_andimm(i32, i32, i32) #1

declare dso_local i32 @emit_adc(i32, i32) #1

declare dso_local i32 @emit_popreg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
