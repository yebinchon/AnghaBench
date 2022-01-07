; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateDIV0S.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateDIV0S.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }

@R8 = common dso_local global i32 0, align 4
@R2 = common dso_local global i32 0, align 4
@R4 = common dso_local global i32 0, align 4
@R3 = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@OP_SHLR = common dso_local global i32 0, align 4
@R_SR = common dso_local global i32 0, align 4
@R5 = common dso_local global i32 0, align 4
@OP_AND = common dso_local global i32 0, align 4
@OP_ROTCL = common dso_local global i32 0, align 4
@OP_OR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_13__*)* @generateDIV0S to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateDIV0S(i32 %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @INSTRUCTION_B(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @INSTRUCTION_C(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = call i32 @emitMOVLLG(%struct.TYPE_13__* %11, i32 16)
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = load i32, i32* @R8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @R2, align 4
  %17 = call i32 @emitMOVLL4(%struct.TYPE_13__* %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = load i32, i32* @R4, align 4
  %20 = call i32 @emitMOVI(%struct.TYPE_13__* %18, i32 3, i32 %19)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = call i32 @emitANDI(%struct.TYPE_13__* %21, i32 242)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = load i32, i32* @R8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @R3, align 4
  %27 = call i32 @emitMOVLL4(%struct.TYPE_13__* %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = load i32, i32* @R4, align 4
  %30 = call i32 @emitSHLL8(%struct.TYPE_13__* %28, i32 %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = load i32, i32* @R0, align 4
  %33 = load i32, i32* @OP_SHLR, align 4
  %34 = call i32 @emitSHIFT(%struct.TYPE_13__* %31, i32 %32, i32 %33)
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = load i32, i32* @R3, align 4
  %37 = load i32, i32* @R2, align 4
  %38 = call i32 @emitDIV0S(%struct.TYPE_13__* %35, i32 %36, i32 %37)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = load i32, i32* @R_SR, align 4
  %41 = load i32, i32* @R5, align 4
  %42 = call i32 @emitSTC(%struct.TYPE_13__* %39, i32 %40, i32 %41)
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = load i32, i32* @R4, align 4
  %45 = load i32, i32* @R5, align 4
  %46 = load i32, i32* @OP_AND, align 4
  %47 = call i32 @emitALU(%struct.TYPE_13__* %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = load i32, i32* @R0, align 4
  %50 = load i32, i32* @OP_ROTCL, align 4
  %51 = call i32 @emitSHIFT(%struct.TYPE_13__* %48, i32 %49, i32 %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = load i32, i32* @R5, align 4
  %54 = load i32, i32* @R0, align 4
  %55 = load i32, i32* @OP_OR, align 4
  %56 = call i32 @emitALU(%struct.TYPE_13__* %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = call i32 @emitMOVLSG(%struct.TYPE_13__* %57, i32 16)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 2
  store i32 %66, i32* %64, align 4
  ret void
}

declare dso_local i32 @INSTRUCTION_B(i32) #1

declare dso_local i32 @INSTRUCTION_C(i32) #1

declare dso_local i32 @emitMOVLLG(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @emitMOVLL4(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @emitMOVI(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emitANDI(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @emitSHLL8(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @emitSHIFT(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emitDIV0S(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emitSTC(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emitALU(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @emitMOVLSG(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
