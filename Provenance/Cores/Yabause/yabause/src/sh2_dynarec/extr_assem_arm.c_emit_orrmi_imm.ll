; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_emit_orrmi_imm.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_emit_orrmi_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"orrmi %s,%s,#%d\0A\00", align 1
@regname = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"orr %s,%s,#%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_orrmi_imm(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @genimm(i32 %8, i32* %7)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %3
  %12 = load i32*, i32** @regname, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** @regname, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @assem_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @rd_rn_rm(i32 %24, i32 %25, i32 0)
  %27 = or i32 1132462080, %26
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @output_w32(i32 %29)
  br label %73

31:                                               ; preds = %3
  %32 = call i32 @assert(i32 0)
  %33 = load i32*, i32** @regname, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** @regname, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, 65280
  %45 = call i32 @assem_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %42, i32 %44)
  %46 = load i32*, i32** @regname, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** @regname, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, 255
  %58 = call i32 @assem_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %55, i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = ashr i32 %61, 8
  %63 = call i32 @rd_rn_imm_shift(i32 %59, i32 %60, i32 %62, i32 8)
  %64 = or i32 -478150656, %63
  %65 = call i32 @output_w32(i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, 255
  %70 = call i32 @rd_rn_imm_shift(i32 %66, i32 %67, i32 %69, i32 0)
  %71 = or i32 -478150656, %70
  %72 = call i32 @output_w32(i32 %71)
  br label %73

73:                                               ; preds = %31, %11
  ret void
}

declare dso_local i64 @genimm(i32, i32*) #1

declare dso_local i32 @assem_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @output_w32(i32) #1

declare dso_local i32 @rd_rn_rm(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rd_rn_imm_shift(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
