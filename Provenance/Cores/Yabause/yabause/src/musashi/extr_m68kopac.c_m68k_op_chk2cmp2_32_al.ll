; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_chk2cmp2_32_al.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_chk2cmp2_32_al.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_TYPE = common dso_local global i32 0, align 4
@REG_DA = common dso_local global i32* null, align 8
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@EXCEPTION_CHK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_chk2cmp2_32_al() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @CPU_TYPE, align 4
  %7 = call i64 @CPU_TYPE_IS_EC020_PLUS(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %71

9:                                                ; preds = %0
  %10 = call i32 (...) @OPER_I_16()
  store i32 %10, i32* %1, align 4
  %11 = load i32*, i32** @REG_DA, align 8
  %12 = load i32, i32* %1, align 4
  %13 = ashr i32 %12, 12
  %14 = and i32 %13, 15
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %2, align 4
  %18 = call i32 (...) @EA_AL_32()
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @m68ki_read_32(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 4
  %23 = call i32 @m68ki_read_32(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* @FLAG_C, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = or i32 %30, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* @FLAG_Z, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @FLAG_C, align 4
  %42 = call i32 @CFLAG_SUB_32(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* @FLAG_C, align 4
  %43 = call i64 (...) @COND_CS()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %9
  %46 = load i32, i32* %1, align 4
  %47 = call i64 @BIT_B(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @EXCEPTION_CHK, align 4
  %51 = call i32 @m68ki_exception_trap(i32 %50)
  br label %52

52:                                               ; preds = %49, %45
  br label %73

53:                                               ; preds = %9
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %2, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* @FLAG_C, align 4
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @FLAG_C, align 4
  %60 = call i32 @CFLAG_SUB_32(i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* @FLAG_C, align 4
  %61 = call i64 (...) @COND_CS()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %53
  %64 = load i32, i32* %1, align 4
  %65 = call i64 @BIT_B(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @EXCEPTION_CHK, align 4
  %69 = call i32 @m68ki_exception_trap(i32 %68)
  br label %70

70:                                               ; preds = %67, %63, %53
  br label %73

71:                                               ; preds = %0
  %72 = call i32 (...) @m68ki_exception_illegal()
  br label %73

73:                                               ; preds = %71, %70, %52
  ret void
}

declare dso_local i64 @CPU_TYPE_IS_EC020_PLUS(i32) #1

declare dso_local i32 @OPER_I_16(...) #1

declare dso_local i32 @EA_AL_32(...) #1

declare dso_local i32 @m68ki_read_32(i32) #1

declare dso_local i32 @CFLAG_SUB_32(i32, i32, i32) #1

declare dso_local i64 @COND_CS(...) #1

declare dso_local i64 @BIT_B(i32) #1

declare dso_local i32 @m68ki_exception_trap(i32) #1

declare dso_local i32 @m68ki_exception_illegal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
