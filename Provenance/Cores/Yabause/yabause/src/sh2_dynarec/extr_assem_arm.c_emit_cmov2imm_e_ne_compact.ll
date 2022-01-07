; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_emit_cmov2imm_e_ne_compact.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_emit_cmov2imm_e_ne_compact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"addne %s,%s,#%d\0A\00", align 1
@regname = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"subne %s,%s,#%d\0A\00", align 1
@out = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"ldrne %s,pc+? [=%x]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_cmov2imm_e_ne_compact(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 %8, %9
  %11 = call i64 @genimm(i32 %10, i32* %7)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %3
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @emit_movimm(i32 %14, i32 %15)
  %17 = load i32*, i32** @regname, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** @regname, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 %27, %28
  %30 = call i32 (i8*, i32, i32, ...) @assem_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %26, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @rd_rn_rm(i32 %31, i32 %32, i32 0)
  %34 = or i32 310378496, %33
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @output_w32(i32 %36)
  br label %89

38:                                               ; preds = %3
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %39, %40
  %42 = call i64 @genimm(i32 %41, i32* %7)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @emit_movimm(i32 %45, i32 %46)
  %48 = load i32*, i32** @regname, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** @regname, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %5, align 4
  %60 = sub nsw i32 %58, %59
  %61 = call i32 (i8*, i32, i32, ...) @assem_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %57, i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @rd_rn_rm(i32 %62, i32 %63, i32 0)
  %65 = or i32 306184192, %64
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @output_w32(i32 %67)
  br label %88

69:                                               ; preds = %38
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @emit_movimm(i32 %70, i32 %71)
  %73 = load i64, i64* @out, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @add_literal(i32 %74, i32 %75)
  %77 = load i32*, i32** @regname, align 8
  %78 = load i32, i32* %6, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 (i8*, i32, i32, ...) @assem_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @rd_rn_rm(i32 %84, i32 15, i32 0)
  %86 = or i32 361758720, %85
  %87 = call i32 @output_w32(i32 %86)
  br label %88

88:                                               ; preds = %69, %44
  br label %89

89:                                               ; preds = %88, %13
  ret void
}

declare dso_local i64 @genimm(i32, i32*) #1

declare dso_local i32 @emit_movimm(i32, i32) #1

declare dso_local i32 @assem_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @output_w32(i32) #1

declare dso_local i32 @rd_rn_rm(i32, i32, i32) #1

declare dso_local i32 @add_literal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
