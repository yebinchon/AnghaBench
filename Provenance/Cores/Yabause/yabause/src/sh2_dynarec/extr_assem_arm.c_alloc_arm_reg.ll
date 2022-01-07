; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_alloc_arm_reg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_alloc_arm_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i8*, i32, i32 }

@HOST_REGS = common dso_local global i32 0, align 4
@EXCLUDE_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alloc_arm_reg(%struct.regstat* %0, i32 %1, i8 signext %2, i8 signext %3) #0 {
  %5 = alloca %struct.regstat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct.regstat* %0, %struct.regstat** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  store i8 0, i8* %10, align 1
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %46, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @HOST_REGS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %11
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @EXCLUDE_REG, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load %struct.regstat*, %struct.regstat** %5, align 8
  %21 = getelementptr inbounds %struct.regstat, %struct.regstat* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* %7, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %19
  %32 = load %struct.regstat*, %struct.regstat** %5, align 8
  %33 = getelementptr inbounds %struct.regstat, %struct.regstat* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = ashr i32 %34, %35
  %37 = and i32 %36, 1
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %10, align 1
  %39 = load %struct.regstat*, %struct.regstat** %5, align 8
  %40 = getelementptr inbounds %struct.regstat, %struct.regstat* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8 -1, i8* %44, align 1
  br label %45

45:                                               ; preds = %31, %19, %15
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %11

49:                                               ; preds = %11
  %50 = load i8, i8* %7, align 1
  %51 = load %struct.regstat*, %struct.regstat** %5, align 8
  %52 = getelementptr inbounds %struct.regstat, %struct.regstat* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8, i8* %8, align 1
  %55 = sext i8 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8 %50, i8* %56, align 1
  %57 = load i8, i8* %8, align 1
  %58 = sext i8 %57 to i32
  %59 = shl i32 1, %58
  %60 = xor i32 %59, -1
  %61 = load %struct.regstat*, %struct.regstat** %5, align 8
  %62 = getelementptr inbounds %struct.regstat, %struct.regstat* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load i8, i8* %10, align 1
  %66 = sext i8 %65 to i32
  %67 = load i8, i8* %8, align 1
  %68 = sext i8 %67 to i32
  %69 = shl i32 %66, %68
  %70 = load %struct.regstat*, %struct.regstat** %5, align 8
  %71 = getelementptr inbounds %struct.regstat, %struct.regstat* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load i8, i8* %8, align 1
  %75 = sext i8 %74 to i32
  %76 = shl i32 1, %75
  %77 = xor i32 %76, -1
  %78 = load %struct.regstat*, %struct.regstat** %5, align 8
  %79 = getelementptr inbounds %struct.regstat, %struct.regstat* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
