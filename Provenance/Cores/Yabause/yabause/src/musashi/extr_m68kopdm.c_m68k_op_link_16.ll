; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_link_16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_link_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AY = common dso_local global i64 0, align 8
@REG_A = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_link_16() #0 {
  %1 = alloca i64*, align 8
  store i64* @AY, i64** %1, align 8
  %2 = load i64*, i64** %1, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @m68ki_push_32(i64 %3)
  %5 = load i64*, i64** @REG_A, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 7
  %7 = load i64, i64* %6, align 8
  %8 = load i64*, i64** %1, align 8
  store i64 %7, i64* %8, align 8
  %9 = load i64*, i64** @REG_A, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 7
  %11 = load i64, i64* %10, align 8
  %12 = call i32 (...) @OPER_I_16()
  %13 = call i64 @MAKE_INT_16(i32 %12)
  %14 = add nsw i64 %11, %13
  %15 = call i64 @MASK_OUT_ABOVE_32(i64 %14)
  %16 = load i64*, i64** @REG_A, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 7
  store i64 %15, i64* %17, align 8
  ret void
}

declare dso_local i32 @m68ki_push_32(i64) #1

declare dso_local i64 @MASK_OUT_ABOVE_32(i64) #1

declare dso_local i64 @MAKE_INT_16(i32) #1

declare dso_local i32 @OPER_I_16(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
