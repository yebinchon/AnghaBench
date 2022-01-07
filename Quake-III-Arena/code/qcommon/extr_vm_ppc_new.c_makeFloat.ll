; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm_ppc_new.c_makeFloat.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm_ppc_new.c_makeFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opStackRegType = common dso_local global i32* null, align 8
@opStackLoadInstructionAddr = common dso_local global i32** null, align 8
@PPC_LWZ = common dso_local global i32 0, align 4
@opStackIntRegisters = common dso_local global i32* null, align 8
@opStackFloatRegisters = common dso_local global i32* null, align 8
@PPC_LFS = common dso_local global i32 0, align 4
@PPC_LFSX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"stw\00", align 1
@PPC_STW = common dso_local global i32 0, align 4
@R_OPSTACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ori\00", align 1
@PPC_ORI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"lfs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @makeFloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makeFloat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32*, i32** @opStackRegType, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %135

14:                                               ; preds = %1
  %15 = load i32**, i32*** @opStackLoadInstructionAddr, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %99

21:                                               ; preds = %14
  %22 = load i32**, i32*** @opStackLoadInstructionAddr, align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, -67108864
  %30 = load i32, i32* @PPC_LWZ, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %21
  %33 = load i32, i32* %3, align 4
  %34 = lshr i32 %33, 21
  %35 = and i32 %34, 31
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 31
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, 65535
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32*, i32** @opStackIntRegisters, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = sub i32 %41, %44
  %46 = load i32*, i32** @opStackFloatRegisters, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = add i32 %45, %48
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* @PPC_LFS, align 4
  %51 = load i32, i32* %4, align 4
  %52 = shl i32 %51, 21
  %53 = or i32 %50, %52
  %54 = load i32, i32* %5, align 4
  %55 = shl i32 %54, 16
  %56 = or i32 %53, %55
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %3, align 4
  br label %88

59:                                               ; preds = %21
  %60 = load i32, i32* %3, align 4
  %61 = lshr i32 %60, 21
  %62 = and i32 %61, 31
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %3, align 4
  %64 = lshr i32 %63, 16
  %65 = and i32 %64, 31
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %3, align 4
  %67 = lshr i32 %66, 11
  %68 = and i32 %67, 31
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32*, i32** @opStackIntRegisters, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = sub i32 %69, %72
  %74 = load i32*, i32** @opStackFloatRegisters, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = add i32 %73, %76
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* @PPC_LFSX, align 4
  %79 = load i32, i32* %4, align 4
  %80 = shl i32 %79, 21
  %81 = or i32 %78, %80
  %82 = load i32, i32* %5, align 4
  %83 = shl i32 %82, 16
  %84 = or i32 %81, %83
  %85 = load i32, i32* %6, align 4
  %86 = shl i32 %85, 11
  %87 = or i32 %84, %86
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %59, %32
  %89 = load i32, i32* %3, align 4
  %90 = load i32**, i32*** @opStackLoadInstructionAddr, align 8
  %91 = load i32, i32* %2, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  store i32 %89, i32* %94, align 4
  %95 = load i32**, i32*** @opStackLoadInstructionAddr, align 8
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  store i32* null, i32** %98, align 8
  br label %130

99:                                               ; preds = %14
  %100 = load i32, i32* @PPC_STW, align 4
  %101 = load i32*, i32** @opStackIntRegisters, align 8
  %102 = load i32, i32* %2, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @R_OPSTACK, align 4
  %107 = load i32, i32* %2, align 4
  %108 = mul nsw i32 %107, 4
  %109 = add nsw i32 %108, 4
  %110 = call i32 @InstImm(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %105, i32 %106, i32 %109)
  %111 = load i32, i32* @PPC_ORI, align 4
  %112 = call i32 @Inst(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 0, i32 0, i32 0)
  %113 = load i32, i32* @PPC_ORI, align 4
  %114 = call i32 @Inst(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 0, i32 0, i32 0)
  %115 = load i32, i32* @PPC_ORI, align 4
  %116 = call i32 @Inst(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 0, i32 0, i32 0)
  %117 = load i32, i32* @PPC_ORI, align 4
  %118 = call i32 @Inst(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 0, i32 0, i32 0)
  %119 = load i32, i32* @PPC_LFS, align 4
  %120 = load i32*, i32** @opStackFloatRegisters, align 8
  %121 = load i32, i32* %2, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @R_OPSTACK, align 4
  %126 = load i32, i32* %2, align 4
  %127 = mul nsw i32 %126, 4
  %128 = add nsw i32 %127, 4
  %129 = call i32 @InstImm(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %119, i32 %124, i32 %125, i32 %128)
  br label %130

130:                                              ; preds = %99, %88
  %131 = load i32*, i32** @opStackRegType, align 8
  %132 = load i32, i32* %2, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 2, i32* %134, align 4
  br label %135

135:                                              ; preds = %130, %1
  ret void
}

declare dso_local i32 @InstImm(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @Inst(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
