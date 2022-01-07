; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_emit_movimm.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_emit_movimm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"mov %s,#%d\0A\00", align 1
@regname = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"mvn %s,#%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"add %s,%s,#%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_movimm(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @genimm(i32 %6, i32* %5)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load i32*, i32** @regname, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 (i8*, i32, i32, ...) @assem_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @rd_rn_rm(i32 %17, i32 0, i32 0)
  %19 = or i32 -476053504, %18
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @output_w32(i32 %21)
  br label %86

23:                                               ; preds = %2
  %24 = load i32, i32* %3, align 4
  %25 = xor i32 %24, -1
  %26 = call i64 @genimm(i32 %25, i32* %5)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load i32*, i32** @regname, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 (i8*, i32, i32, ...) @assem_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @rd_rn_rm(i32 %36, i32 0, i32 0)
  %38 = or i32 -471859200, %37
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @output_w32(i32 %40)
  br label %85

42:                                               ; preds = %23
  %43 = load i32, i32* %3, align 4
  %44 = icmp slt i32 %43, 65536
  br i1 %44, label %45, label %80

45:                                               ; preds = %42
  %46 = load i32*, i32** @regname, align 8
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %3, align 4
  %52 = and i32 %51, 65280
  %53 = call i32 (i8*, i32, i32, ...) @assem_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %3, align 4
  %56 = ashr i32 %55, 8
  %57 = call i32 @rd_rn_imm_shift(i32 %54, i32 0, i32 %56, i32 8)
  %58 = or i32 -476053504, %57
  %59 = call i32 @output_w32(i32 %58)
  %60 = load i32*, i32** @regname, align 8
  %61 = load i32, i32* %4, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** @regname, align 8
  %66 = load i32, i32* %4, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %3, align 4
  %71 = and i32 %70, 255
  %72 = call i32 (i8*, i32, i32, ...) @assem_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %69, i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %3, align 4
  %76 = and i32 %75, 255
  %77 = call i32 @rd_rn_imm_shift(i32 %73, i32 %74, i32 %76, i32 0)
  %78 = or i32 -494927872, %77
  %79 = call i32 @output_w32(i32 %78)
  br label %84

80:                                               ; preds = %42
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @emit_loadlp(i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %45
  br label %85

85:                                               ; preds = %84, %28
  br label %86

86:                                               ; preds = %85, %9
  ret void
}

declare dso_local i64 @genimm(i32, i32*) #1

declare dso_local i32 @assem_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @output_w32(i32) #1

declare dso_local i32 @rd_rn_rm(i32, i32, i32) #1

declare dso_local i32 @rd_rn_imm_shift(i32, i32, i32, i32) #1

declare dso_local i32 @emit_loadlp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
