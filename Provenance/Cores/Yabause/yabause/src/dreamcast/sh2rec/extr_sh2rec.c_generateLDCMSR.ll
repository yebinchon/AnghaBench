; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateLDCMSR.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateLDCMSR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }

@R9 = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@R_PR = common dso_local global i32 0, align 4
@R10 = common dso_local global i32 0, align 4
@R8 = common dso_local global i32 0, align 4
@R4 = common dso_local global i32 0, align 4
@R1 = common dso_local global i32 0, align 4
@OP_ADD = common dso_local global i32 0, align 4
@R2 = common dso_local global i32 0, align 4
@OP_AND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_14__*)* @generateLDCMSR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateLDCMSR(i32 %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @INSTRUCTION_B(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %9 = load i32, i32* @R9, align 4
  %10 = load i32, i32* @R0, align 4
  %11 = call i32 @emitMOVLL4(%struct.TYPE_14__* %8, i32 %9, i32 2, i32 %10)
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = load i32, i32* @R_PR, align 4
  %14 = load i32, i32* @R10, align 4
  %15 = call i32 @emitSTS(%struct.TYPE_14__* %12, i32 %13, i32 %14)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = load i32, i32* @R8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @R4, align 4
  %20 = call i32 @emitMOVLL4(%struct.TYPE_14__* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = load i32, i32* @R1, align 4
  %23 = call i32 @emitMOVI(%struct.TYPE_14__* %21, i32 4, i32 %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = load i32, i32* @R4, align 4
  %26 = load i32, i32* @R1, align 4
  %27 = load i32, i32* @OP_ADD, align 4
  %28 = call i32 @emitALU(%struct.TYPE_14__* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = load i32, i32* @R0, align 4
  %31 = call i32 @emitJSR(%struct.TYPE_14__* %29, i32 %30)
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = load i32, i32* @R1, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @R8, align 4
  %36 = call i32 @emitMOVLS4(%struct.TYPE_14__* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = load i32, i32* @R10, align 4
  %39 = load i32, i32* @R_PR, align 4
  %40 = call i32 @emitLDS(%struct.TYPE_14__* %37, i32 %38, i32 %39)
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = load i32, i32* @R2, align 4
  %43 = call i32 @emitMOVWI(%struct.TYPE_14__* %41, i32 2, i32 %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = call i32 @emitBRA(%struct.TYPE_14__* %44, i32 1)
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = load i32, i32* @R2, align 4
  %48 = load i32, i32* @R0, align 4
  %49 = load i32, i32* @OP_AND, align 4
  %50 = call i32 @emitALU(%struct.TYPE_14__* %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %52 = call i32 @emit16(%struct.TYPE_14__* %51, i32 1011)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = call i32 @emitMOVLSG(%struct.TYPE_14__* %53, i32 16)
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 3
  store i32 %58, i32* %56, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 2
  store i32 %62, i32* %60, align 4
  ret void
}

declare dso_local i32 @INSTRUCTION_B(i32) #1

declare dso_local i32 @emitMOVLL4(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @emitSTS(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @emitMOVI(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @emitALU(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @emitJSR(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @emitMOVLS4(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @emitLDS(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @emitMOVWI(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @emitBRA(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @emit16(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @emitMOVLSG(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
