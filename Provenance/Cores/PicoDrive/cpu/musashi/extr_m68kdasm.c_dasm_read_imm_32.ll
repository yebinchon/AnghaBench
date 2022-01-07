; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kdasm.c_dasm_read_imm_32.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kdasm.c_dasm_read_imm_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_rawop = common dso_local global i32* null, align 8
@g_cpu_pc = common dso_local global i32 0, align 4
@g_rawbasepc = common dso_local global i64 0, align 8
@g_address_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dasm_read_imm_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasm_read_imm_32(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32*, i32** @g_rawop, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %45

6:                                                ; preds = %1
  %7 = load i32*, i32** @g_rawop, align 8
  %8 = load i32, i32* @g_cpu_pc, align 4
  %9 = add nsw i32 %8, 0
  %10 = sext i32 %9 to i64
  %11 = load i64, i64* @g_rawbasepc, align 8
  %12 = sub i64 %10, %11
  %13 = getelementptr inbounds i32, i32* %7, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 24
  %16 = load i32*, i32** @g_rawop, align 8
  %17 = load i32, i32* @g_cpu_pc, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @g_rawbasepc, align 8
  %21 = sub i64 %19, %20
  %22 = getelementptr inbounds i32, i32* %16, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 16
  %25 = or i32 %15, %24
  %26 = load i32*, i32** @g_rawop, align 8
  %27 = load i32, i32* @g_cpu_pc, align 4
  %28 = add nsw i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @g_rawbasepc, align 8
  %31 = sub i64 %29, %30
  %32 = getelementptr inbounds i32, i32* %26, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 8
  %35 = or i32 %25, %34
  %36 = load i32*, i32** @g_rawop, align 8
  %37 = load i32, i32* @g_cpu_pc, align 4
  %38 = add nsw i32 %37, 3
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* @g_rawbasepc, align 8
  %41 = sub i64 %39, %40
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %35, %43
  store i32 %44, i32* %3, align 4
  br label %51

45:                                               ; preds = %1
  %46 = load i32, i32* @g_cpu_pc, align 4
  %47 = load i32, i32* @g_address_mask, align 4
  %48 = and i32 %46, %47
  %49 = call i32 @m68k_read_disassembler_32(i32 %48)
  %50 = and i32 %49, 65535
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %6
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @g_cpu_pc, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* @g_cpu_pc, align 4
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @m68k_read_disassembler_32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
