; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_bfexts_32_d.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_bfexts_32_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_TYPE = common dso_local global i32 0, align 4
@DY = common dso_local global i8* null, align 8
@REG_D = common dso_local global i32* null, align 8
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i8* null, align 8
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_bfexts_32_d() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = load i32, i32* @CPU_TYPE, align 4
  %6 = call i64 @CPU_TYPE_IS_EC020_PLUS(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %66

8:                                                ; preds = %0
  %9 = call i32 (...) @OPER_I_16()
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = ashr i32 %10, 6
  %12 = and i32 %11, 31
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %1, align 4
  store i32 %13, i32* %3, align 4
  %14 = load i8*, i8** @DY, align 8
  store i8* %14, i8** %4, align 8
  %15 = load i32, i32* %1, align 4
  %16 = call i64 @BIT_B(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %8
  %19 = load i32*, i32** @REG_D, align 8
  %20 = load i32, i32* %2, align 4
  %21 = and i32 %20, 7
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %18, %8
  %26 = load i32, i32* %1, align 4
  %27 = call i64 @BIT_5(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32*, i32** @REG_D, align 8
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 7
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %29, %25
  %37 = load i32, i32* %2, align 4
  %38 = and i32 %37, 31
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %3, align 4
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %40, 31
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %2, align 4
  %45 = call i8* @ROL_32(i8* %43, i32 %44)
  store i8* %45, i8** %4, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @NFLAG_32(i8* %46)
  store i32 %47, i32* @FLAG_N, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @MAKE_INT_32(i8* %48)
  %50 = load i32, i32* %3, align 4
  %51 = sub nsw i32 32, %50
  %52 = ashr i32 %49, %51
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %4, align 8
  %55 = load i8*, i8** %4, align 8
  store i8* %55, i8** @FLAG_Z, align 8
  %56 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %56, i32* @FLAG_V, align 4
  %57 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %57, i32* @FLAG_C, align 4
  %58 = load i8*, i8** %4, align 8
  %59 = ptrtoint i8* %58 to i32
  %60 = load i32*, i32** @REG_D, align 8
  %61 = load i32, i32* %1, align 4
  %62 = ashr i32 %61, 12
  %63 = and i32 %62, 7
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  store i32 %59, i32* %65, align 4
  br label %68

66:                                               ; preds = %0
  %67 = call i32 (...) @m68ki_exception_illegal()
  br label %68

68:                                               ; preds = %66, %36
  ret void
}

declare dso_local i64 @CPU_TYPE_IS_EC020_PLUS(i32) #1

declare dso_local i32 @OPER_I_16(...) #1

declare dso_local i64 @BIT_B(i32) #1

declare dso_local i64 @BIT_5(i32) #1

declare dso_local i8* @ROL_32(i8*, i32) #1

declare dso_local i32 @NFLAG_32(i8*) #1

declare dso_local i32 @MAKE_INT_32(i8*) #1

declare dso_local i32 @m68ki_exception_illegal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
