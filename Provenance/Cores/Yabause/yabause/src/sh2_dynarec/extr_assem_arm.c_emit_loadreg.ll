; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_emit_loadreg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_emit_loadreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MMREG = common dso_local global i32 0, align 4
@memory_map = common dso_local global i64 0, align 8
@dynarec_local = common dso_local global i32 0, align 4
@slave = common dso_local global i64 0, align 8
@slave_reg = common dso_local global i64 0, align 8
@master_reg = common dso_local global i64 0, align 8
@CCREG = common dso_local global i32 0, align 4
@slave_cc = common dso_local global i32 0, align 4
@master_cc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ldr %s,fp+%d\0A\00", align 1
@regname = common dso_local global i32* null, align 8
@FP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_loadreg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @MMREG, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i64, i64* @memory_map, align 8
  %12 = trunc i64 %11 to i32
  %13 = sub nsw i32 %12, ptrtoint (i32* @dynarec_local to i32)
  %14 = ashr i32 %13, 2
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @emit_movimm(i32 %14, i32 %15)
  br label %62

17:                                               ; preds = %2
  %18 = load i64, i64* @slave, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64, i64* @slave_reg, align 8
  %22 = trunc i64 %21 to i32
  br label %26

23:                                               ; preds = %17
  %24 = load i64, i64* @master_reg, align 8
  %25 = trunc i64 %24 to i32
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ %22, %20 ], [ %25, %23 ]
  %28 = load i32, i32* %3, align 4
  %29 = shl i32 %28, 2
  %30 = add nsw i32 %27, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @CCREG, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load i64, i64* @slave, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %39

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38, %37
  %40 = phi i32 [ ptrtoint (i32* @slave_cc to i32), %37 ], [ ptrtoint (i32* @master_cc to i32), %38 ]
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %26
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 %42, ptrtoint (i32* @dynarec_local to i32)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 4096
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i32*, i32** @regname, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @assem_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @FP, align 4
  %57 = call i32 @rd_rn_rm(i32 %55, i32 %56, i32 0)
  %58 = or i32 -443547648, %57
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @output_w32(i32 %60)
  br label %62

62:                                               ; preds = %41, %10
  ret void
}

declare dso_local i32 @emit_movimm(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @assem_debug(i8*, i32, i32) #1

declare dso_local i32 @output_w32(i32) #1

declare dso_local i32 @rd_rn_rm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
