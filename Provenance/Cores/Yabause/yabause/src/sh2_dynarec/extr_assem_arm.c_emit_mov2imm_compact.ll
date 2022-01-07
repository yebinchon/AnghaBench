; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_emit_mov2imm_compact.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_emit_mov2imm_compact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"add %s,%s,#%d\0A\00", align 1
@regname = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"sub %s,%s,#%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_mov2imm_compact(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @emit_movimm(i32 %10, i32 %11)
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %13, %14
  %16 = call i64 @genimm(i32 %15, i32* %9)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %4
  %19 = load i32*, i32** @regname, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** @regname, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 %29, %30
  %32 = call i32 @assem_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %28, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @rd_rn_rm(i32 %33, i32 %34, i32 0)
  %36 = or i32 -494927872, %35
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @output_w32(i32 %38)
  br label %73

40:                                               ; preds = %4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %41, %42
  %44 = call i64 @genimm(i32 %43, i32* %9)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %40
  %47 = load i32*, i32** @regname, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** @regname, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %57, %58
  %60 = call i32 @assem_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %56, i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @rd_rn_rm(i32 %61, i32 %62, i32 0)
  %64 = or i32 -499122176, %63
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @output_w32(i32 %66)
  br label %72

68:                                               ; preds = %40
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @emit_movimm(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %46
  br label %73

73:                                               ; preds = %72, %18
  ret void
}

declare dso_local i32 @emit_movimm(i32, i32) #1

declare dso_local i64 @genimm(i32, i32*) #1

declare dso_local i32 @assem_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @output_w32(i32) #1

declare dso_local i32 @rd_rn_rm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
