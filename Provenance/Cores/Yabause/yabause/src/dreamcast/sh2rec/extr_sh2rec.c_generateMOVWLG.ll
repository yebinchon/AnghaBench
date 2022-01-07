; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateMOVWLG.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateMOVWLG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }

@R_PR = common dso_local global i32 0, align 4
@R10 = common dso_local global i32 0, align 4
@R4 = common dso_local global i32 0, align 4
@R9 = common dso_local global i32 0, align 4
@R1 = common dso_local global i32 0, align 4
@OP_EXTUB = common dso_local global i32 0, align 4
@OP_SHLL = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@OP_ADD = common dso_local global i32 0, align 4
@OP_EXTSW = common dso_local global i32 0, align 4
@R8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_12__*)* @generateMOVWLG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateMOVWLG(i32 %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @INSTRUCTION_CD(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = load i32, i32* @R_PR, align 4
  %10 = load i32, i32* @R10, align 4
  %11 = call i32 @emitSTS(%struct.TYPE_12__* %8, i32 %9, i32 %10)
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @R4, align 4
  %15 = call i32 @emitMOVI(%struct.TYPE_12__* %12, i32 %13, i32 %14)
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = load i32, i32* @R9, align 4
  %18 = load i32, i32* @R1, align 4
  %19 = call i32 @emitMOVLL4(%struct.TYPE_12__* %16, i32 %17, i32 1, i32 %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = load i32, i32* @R4, align 4
  %22 = load i32, i32* @R4, align 4
  %23 = load i32, i32* @OP_EXTUB, align 4
  %24 = call i32 @emitALU(%struct.TYPE_12__* %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = call i32 @emitMOVLLG(%struct.TYPE_12__* %25, i32 17)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = load i32, i32* @R4, align 4
  %29 = load i32, i32* @OP_SHLL, align 4
  %30 = call i32 @emitSHIFT(%struct.TYPE_12__* %27, i32 %28, i32 %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = load i32, i32* @R1, align 4
  %33 = call i32 @emitJSR(%struct.TYPE_12__* %31, i32 %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = load i32, i32* @R0, align 4
  %36 = load i32, i32* @R4, align 4
  %37 = load i32, i32* @OP_ADD, align 4
  %38 = call i32 @emitALU(%struct.TYPE_12__* %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = load i32, i32* @R0, align 4
  %41 = load i32, i32* @R0, align 4
  %42 = load i32, i32* @OP_EXTSW, align 4
  %43 = call i32 @emitALU(%struct.TYPE_12__* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = load i32, i32* @R10, align 4
  %46 = load i32, i32* @R_PR, align 4
  %47 = call i32 @emitLDS(%struct.TYPE_12__* %44, i32 %45, i32 %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = load i32, i32* @R0, align 4
  %50 = load i32, i32* @R8, align 4
  %51 = call i32 @emitMOVLS4(%struct.TYPE_12__* %48, i32 %49, i32 0, i32 %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 2
  store i32 %59, i32* %57, align 4
  ret void
}

declare dso_local i32 @INSTRUCTION_CD(i32) #1

declare dso_local i32 @emitSTS(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @emitMOVI(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @emitMOVLL4(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @emitALU(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @emitMOVLLG(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @emitSHIFT(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @emitJSR(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @emitLDS(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @emitMOVLS4(%struct.TYPE_12__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
