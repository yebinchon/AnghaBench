; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_extb_32.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_extb_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_TYPE = common dso_local global i32 0, align 4
@DY = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_extb_32() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @CPU_TYPE, align 4
  %3 = call i64 @CPU_TYPE_IS_EC020_PLUS(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %0
  store i32* @DY, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @MASK_OUT_ABOVE_8(i32 %7)
  %9 = load i32*, i32** %1, align 8
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @GET_MSB_8(i32 %10)
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 -256, i32 0
  %15 = or i32 %8, %14
  %16 = load i32*, i32** %1, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32*, i32** %1, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @NFLAG_32(i32 %18)
  store i32 %19, i32* @FLAG_N, align 4
  %20 = load i32*, i32** %1, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* @FLAG_Z, align 4
  %22 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %22, i32* @FLAG_V, align 4
  %23 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %23, i32* @FLAG_C, align 4
  br label %26

24:                                               ; preds = %0
  %25 = call i32 (...) @m68ki_exception_illegal()
  br label %26

26:                                               ; preds = %24, %5
  ret void
}

declare dso_local i64 @CPU_TYPE_IS_EC020_PLUS(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_8(i32) #1

declare dso_local i64 @GET_MSB_8(i32) #1

declare dso_local i32 @NFLAG_32(i32) #1

declare dso_local i32 @m68ki_exception_illegal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
