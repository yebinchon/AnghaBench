; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateDIV1.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateDIV1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }

@R8 = common dso_local global i32 0, align 4
@R2 = common dso_local global i32 0, align 4
@R4 = common dso_local global i32 0, align 4
@R3 = common dso_local global i32 0, align 4
@R6 = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@OP_AND = common dso_local global i32 0, align 4
@OP_ROTCR = common dso_local global i32 0, align 4
@R_SR = common dso_local global i32 0, align 4
@R5 = common dso_local global i32 0, align 4
@R7 = common dso_local global i32 0, align 4
@OP_NOT = common dso_local global i32 0, align 4
@OP_OR = common dso_local global i32 0, align 4
@OP_ROTCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_16__*)* @generateDIV1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateDIV1(i32 %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @INSTRUCTION_B(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @INSTRUCTION_C(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = call i32 @emitMOVLLG(%struct.TYPE_16__* %11, i32 16)
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = load i32, i32* @R8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @R2, align 4
  %17 = call i32 @emitMOVLL4(%struct.TYPE_16__* %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = load i32, i32* @R4, align 4
  %20 = call i32 @emitMOVI(%struct.TYPE_16__* %18, i32 3, i32 %19)
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = load i32, i32* @R4, align 4
  %23 = call i32 @emitSHLL8(%struct.TYPE_16__* %21, i32 %22)
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %25 = load i32, i32* @R8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @R3, align 4
  %28 = call i32 @emitMOVLL4(%struct.TYPE_16__* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = load i32, i32* @R4, align 4
  %31 = load i32, i32* @R6, align 4
  %32 = call i32 @emitMOV(%struct.TYPE_16__* %29, i32 %30, i32 %31)
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %34 = load i32, i32* @R0, align 4
  %35 = load i32, i32* @R6, align 4
  %36 = load i32, i32* @OP_AND, align 4
  %37 = call i32 @emitALU(%struct.TYPE_16__* %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = load i32, i32* @R0, align 4
  %40 = load i32, i32* @OP_ROTCR, align 4
  %41 = call i32 @emitSHIFT(%struct.TYPE_16__* %38, i32 %39, i32 %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %43 = load i32, i32* @R_SR, align 4
  %44 = load i32, i32* @R5, align 4
  %45 = call i32 @emitSTC(%struct.TYPE_16__* %42, i32 %43, i32 %44)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %47 = load i32, i32* @R4, align 4
  %48 = load i32, i32* @R7, align 4
  %49 = load i32, i32* @OP_NOT, align 4
  %50 = call i32 @emitALU(%struct.TYPE_16__* %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %52 = load i32, i32* @R7, align 4
  %53 = load i32, i32* @R5, align 4
  %54 = load i32, i32* @OP_AND, align 4
  %55 = call i32 @emitALU(%struct.TYPE_16__* %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %57 = load i32, i32* @R6, align 4
  %58 = load i32, i32* @R5, align 4
  %59 = load i32, i32* @OP_OR, align 4
  %60 = call i32 @emitALU(%struct.TYPE_16__* %56, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %62 = load i32, i32* @R5, align 4
  %63 = load i32, i32* @R_SR, align 4
  %64 = call i32 @emitLDC(%struct.TYPE_16__* %61, i32 %62, i32 %63)
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = load i32, i32* @R3, align 4
  %67 = load i32, i32* @R2, align 4
  %68 = call i32 @emitDIV1(%struct.TYPE_16__* %65, i32 %66, i32 %67)
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = load i32, i32* @R_SR, align 4
  %71 = load i32, i32* @R5, align 4
  %72 = call i32 @emitSTC(%struct.TYPE_16__* %69, i32 %70, i32 %71)
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %74 = load i32, i32* @R4, align 4
  %75 = load i32, i32* @R5, align 4
  %76 = load i32, i32* @OP_AND, align 4
  %77 = call i32 @emitALU(%struct.TYPE_16__* %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %79 = load i32, i32* @R0, align 4
  %80 = load i32, i32* @OP_ROTCL, align 4
  %81 = call i32 @emitSHIFT(%struct.TYPE_16__* %78, i32 %79, i32 %80)
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %83 = load i32, i32* @R2, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @R8, align 4
  %86 = call i32 @emitMOVLS4(%struct.TYPE_16__* %82, i32 %83, i32 %84, i32 %85)
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %88 = call i32 @emitANDI(%struct.TYPE_16__* %87, i32 243)
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %90 = load i32, i32* @R5, align 4
  %91 = load i32, i32* @R0, align 4
  %92 = load i32, i32* @OP_OR, align 4
  %93 = call i32 @emitALU(%struct.TYPE_16__* %89, i32 %90, i32 %91, i32 %92)
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %95 = call i32 @emitMOVLSG(%struct.TYPE_16__* %94, i32 16)
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 2
  store i32 %103, i32* %101, align 4
  ret void
}

declare dso_local i32 @INSTRUCTION_B(i32) #1

declare dso_local i32 @INSTRUCTION_C(i32) #1

declare dso_local i32 @emitMOVLLG(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @emitMOVLL4(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @emitMOVI(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @emitSHLL8(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @emitMOV(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @emitALU(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @emitSHIFT(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @emitSTC(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @emitLDC(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @emitDIV1(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @emitMOVLS4(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @emitANDI(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @emitMOVLSG(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
