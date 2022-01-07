; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopnz.c_m68k_op_rte_32.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopnz.c_m68k_op_rte_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLAG_S = common dso_local global i64 0, align 8
@CPU_TYPE = common dso_local global i32 0, align 4
@INSTRUCTION_YES = common dso_local global i32 0, align 4
@CPU_INSTR_MODE = common dso_local global i32 0, align 4
@RUN_MODE_NORMAL = common dso_local global i32 0, align 4
@CPU_RUN_MODE = common dso_local global i32 0, align 4
@REG_A = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_rte_32() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @FLAG_S, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %87

6:                                                ; preds = %0
  %7 = call i32 (...) @m68ki_trace_t0()
  %8 = load i32, i32* @CPU_TYPE, align 4
  %9 = call i64 @CPU_TYPE_IS_000(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = call i32 (...) @m68ki_pull_16()
  store i32 %12, i32* %1, align 4
  %13 = call i32 (...) @m68ki_pull_32()
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @m68ki_jump(i32 %14)
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @m68ki_set_sr(i32 %16)
  %18 = load i32, i32* @INSTRUCTION_YES, align 4
  store i32 %18, i32* @CPU_INSTR_MODE, align 4
  %19 = load i32, i32* @RUN_MODE_NORMAL, align 4
  store i32 %19, i32* @CPU_RUN_MODE, align 4
  br label %89

20:                                               ; preds = %6
  %21 = load i32, i32* @CPU_TYPE, align 4
  %22 = call i64 @CPU_TYPE_IS_010(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = load i64*, i64** @REG_A, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 7
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 6
  %29 = call i32 @m68ki_read_16(i64 %28)
  %30 = ashr i32 %29, 12
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %24
  %34 = call i32 (...) @m68ki_pull_16()
  store i32 %34, i32* %1, align 4
  %35 = call i32 (...) @m68ki_pull_32()
  store i32 %35, i32* %2, align 4
  %36 = call i32 (...) @m68ki_fake_pull_16()
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @m68ki_jump(i32 %37)
  %39 = load i32, i32* %1, align 4
  %40 = call i32 @m68ki_set_sr(i32 %39)
  %41 = load i32, i32* @INSTRUCTION_YES, align 4
  store i32 %41, i32* @CPU_INSTR_MODE, align 4
  %42 = load i32, i32* @RUN_MODE_NORMAL, align 4
  store i32 %42, i32* @CPU_RUN_MODE, align 4
  br label %89

43:                                               ; preds = %24
  %44 = load i32, i32* @INSTRUCTION_YES, align 4
  store i32 %44, i32* @CPU_INSTR_MODE, align 4
  %45 = load i32, i32* @RUN_MODE_NORMAL, align 4
  store i32 %45, i32* @CPU_RUN_MODE, align 4
  %46 = call i32 (...) @m68ki_exception_format_error()
  br label %89

47:                                               ; preds = %20
  br label %48

48:                                               ; preds = %66, %47
  %49 = load i64*, i64** @REG_A, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 7
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 6
  %53 = call i32 @m68ki_read_16(i64 %52)
  %54 = ashr i32 %53, 12
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  switch i32 %55, label %83 [
    i32 0, label %56
    i32 1, label %66
    i32 2, label %72
  ]

56:                                               ; preds = %48
  %57 = call i32 (...) @m68ki_pull_16()
  store i32 %57, i32* %1, align 4
  %58 = call i32 (...) @m68ki_pull_32()
  store i32 %58, i32* %2, align 4
  %59 = call i32 (...) @m68ki_fake_pull_16()
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @m68ki_jump(i32 %60)
  %62 = load i32, i32* %1, align 4
  %63 = call i32 @m68ki_set_sr(i32 %62)
  %64 = load i32, i32* @INSTRUCTION_YES, align 4
  store i32 %64, i32* @CPU_INSTR_MODE, align 4
  %65 = load i32, i32* @RUN_MODE_NORMAL, align 4
  store i32 %65, i32* @CPU_RUN_MODE, align 4
  br label %89

66:                                               ; preds = %48
  %67 = call i32 (...) @m68ki_pull_16()
  store i32 %67, i32* %1, align 4
  %68 = call i32 (...) @m68ki_fake_pull_32()
  %69 = call i32 (...) @m68ki_fake_pull_16()
  %70 = load i32, i32* %1, align 4
  %71 = call i32 @m68ki_set_sr_noint(i32 %70)
  br label %48

72:                                               ; preds = %48
  %73 = call i32 (...) @m68ki_pull_16()
  store i32 %73, i32* %1, align 4
  %74 = call i32 (...) @m68ki_pull_32()
  store i32 %74, i32* %2, align 4
  %75 = call i32 (...) @m68ki_fake_pull_16()
  %76 = call i32 (...) @m68ki_fake_pull_32()
  %77 = load i32, i32* %2, align 4
  %78 = call i32 @m68ki_jump(i32 %77)
  %79 = load i32, i32* %1, align 4
  %80 = call i32 @m68ki_set_sr(i32 %79)
  %81 = load i32, i32* @INSTRUCTION_YES, align 4
  store i32 %81, i32* @CPU_INSTR_MODE, align 4
  %82 = load i32, i32* @RUN_MODE_NORMAL, align 4
  store i32 %82, i32* @CPU_RUN_MODE, align 4
  br label %89

83:                                               ; preds = %48
  %84 = load i32, i32* @INSTRUCTION_YES, align 4
  store i32 %84, i32* @CPU_INSTR_MODE, align 4
  %85 = load i32, i32* @RUN_MODE_NORMAL, align 4
  store i32 %85, i32* @CPU_RUN_MODE, align 4
  %86 = call i32 (...) @m68ki_exception_format_error()
  br label %89

87:                                               ; preds = %0
  %88 = call i32 (...) @m68ki_exception_privilege_violation()
  br label %89

89:                                               ; preds = %87, %83, %72, %56, %43, %33, %11
  ret void
}

declare dso_local i32 @m68ki_trace_t0(...) #1

declare dso_local i64 @CPU_TYPE_IS_000(i32) #1

declare dso_local i32 @m68ki_pull_16(...) #1

declare dso_local i32 @m68ki_pull_32(...) #1

declare dso_local i32 @m68ki_jump(i32) #1

declare dso_local i32 @m68ki_set_sr(i32) #1

declare dso_local i64 @CPU_TYPE_IS_010(i32) #1

declare dso_local i32 @m68ki_read_16(i64) #1

declare dso_local i32 @m68ki_fake_pull_16(...) #1

declare dso_local i32 @m68ki_exception_format_error(...) #1

declare dso_local i32 @m68ki_fake_pull_32(...) #1

declare dso_local i32 @m68ki_set_sr_noint(i32) #1

declare dso_local i32 @m68ki_exception_privilege_violation(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
