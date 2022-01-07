; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopnz.c_m68k_op_pack_16_mm_ax7.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopnz.c_m68k_op_pack_16_mm_ax7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_pack_16_mm_ax7() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @CPU_TYPE, align 4
  %4 = call i64 @CPU_TYPE_IS_EC020_PLUS(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %0
  %7 = call i32 (...) @EA_AY_PD_8()
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @m68ki_read_8(i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = call i32 (...) @EA_AY_PD_8()
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %2, align 4
  %12 = shl i32 %11, 8
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @m68ki_read_8(i32 %13)
  %15 = or i32 %12, %14
  %16 = call i32 (...) @OPER_I_16()
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %2, align 4
  %18 = call i32 (...) @EA_A7_PD_8()
  %19 = load i32, i32* %2, align 4
  %20 = ashr i32 %19, 4
  %21 = and i32 %20, 240
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, 15
  %24 = or i32 %21, %23
  %25 = call i32 @m68ki_write_8(i32 %18, i32 %24)
  br label %28

26:                                               ; preds = %0
  %27 = call i32 (...) @m68ki_exception_illegal()
  br label %28

28:                                               ; preds = %26, %6
  ret void
}

declare dso_local i64 @CPU_TYPE_IS_EC020_PLUS(i32) #1

declare dso_local i32 @EA_AY_PD_8(...) #1

declare dso_local i32 @m68ki_read_8(i32) #1

declare dso_local i32 @OPER_I_16(...) #1

declare dso_local i32 @m68ki_write_8(i32, i32) #1

declare dso_local i32 @EA_A7_PD_8(...) #1

declare dso_local i32 @m68ki_exception_illegal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
