; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_cmpi_16_pcdi.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_cmpi_16_pcdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_TYPE = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_cmpi_16_pcdi() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @CPU_TYPE, align 4
  %5 = call i64 @CPU_TYPE_IS_EC020_PLUS(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %0
  %8 = call i64 (...) @OPER_I_16()
  store i64 %8, i64* %1, align 8
  %9 = call i64 (...) @OPER_PCDI_16()
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* %1, align 8
  %12 = sub nsw i64 %10, %11
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @NFLAG_16(i64 %13)
  store i32 %14, i32* @FLAG_N, align 4
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @MASK_OUT_ABOVE_16(i64 %15)
  store i32 %16, i32* @FLAG_Z, align 4
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @VFLAG_SUB_16(i64 %17, i64 %18, i64 %19)
  store i32 %20, i32* @FLAG_V, align 4
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @CFLAG_16(i64 %21)
  store i32 %22, i32* @FLAG_C, align 4
  br label %25

23:                                               ; preds = %0
  %24 = call i32 (...) @m68ki_exception_illegal()
  br label %25

25:                                               ; preds = %23, %7
  ret void
}

declare dso_local i64 @CPU_TYPE_IS_EC020_PLUS(i32) #1

declare dso_local i64 @OPER_I_16(...) #1

declare dso_local i64 @OPER_PCDI_16(...) #1

declare dso_local i32 @NFLAG_16(i64) #1

declare dso_local i32 @MASK_OUT_ABOVE_16(i64) #1

declare dso_local i32 @VFLAG_SUB_16(i64, i64, i64) #1

declare dso_local i32 @CFLAG_16(i64) #1

declare dso_local i32 @m68ki_exception_illegal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
