; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateTSTM.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateTSTM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }

@R_PR = common dso_local global i32 0, align 4
@R10 = common dso_local global i32 0, align 4
@R9 = common dso_local global i32 0, align 4
@R1 = common dso_local global i32 0, align 4
@R8 = common dso_local global i32 0, align 4
@R4 = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@OP_ADD = common dso_local global i32 0, align 4
@R5 = common dso_local global i32 0, align 4
@R3 = common dso_local global i32 0, align 4
@OP_ROTCR = common dso_local global i32 0, align 4
@OP_TST = common dso_local global i32 0, align 4
@OP_ROTCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_13__*)* @generateTSTM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateTSTM(i32 %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @INSTRUCTION_CD(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %9 = load i32, i32* @R_PR, align 4
  %10 = load i32, i32* @R10, align 4
  %11 = call i32 @emitSTS(%struct.TYPE_13__* %8, i32 %9, i32 %10)
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = load i32, i32* @R9, align 4
  %14 = load i32, i32* @R1, align 4
  %15 = call i32 @emitMOVLL4(%struct.TYPE_13__* %12, i32 %13, i32 0, i32 %14)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = call i32 @emitMOVLLG(%struct.TYPE_13__* %16, i32 17)
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = load i32, i32* @R8, align 4
  %20 = load i32, i32* @R4, align 4
  %21 = call i32 @emitMOVLL4(%struct.TYPE_13__* %18, i32 %19, i32 0, i32 %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = load i32, i32* @R1, align 4
  %24 = call i32 @emitJSR(%struct.TYPE_13__* %22, i32 %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = load i32, i32* @R0, align 4
  %27 = load i32, i32* @R4, align 4
  %28 = load i32, i32* @OP_ADD, align 4
  %29 = call i32 @emitALU(%struct.TYPE_13__* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = load i32, i32* @R0, align 4
  %32 = load i32, i32* @R5, align 4
  %33 = call i32 @emitMOV(%struct.TYPE_13__* %30, i32 %31, i32 %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @R3, align 4
  %37 = call i32 @emitMOVI(%struct.TYPE_13__* %34, i32 %35, i32 %36)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = call i32 @emitMOVLLG(%struct.TYPE_13__* %38, i32 16)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = load i32, i32* @R0, align 4
  %42 = load i32, i32* @OP_ROTCR, align 4
  %43 = call i32 @emitSHIFT(%struct.TYPE_13__* %40, i32 %41, i32 %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = load i32, i32* @R3, align 4
  %46 = load i32, i32* @R5, align 4
  %47 = load i32, i32* @OP_TST, align 4
  %48 = call i32 @emitALU(%struct.TYPE_13__* %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = load i32, i32* @R0, align 4
  %51 = load i32, i32* @OP_ROTCL, align 4
  %52 = call i32 @emitSHIFT(%struct.TYPE_13__* %49, i32 %50, i32 %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = call i32 @emitMOVLSG(%struct.TYPE_13__* %53, i32 16)
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = load i32, i32* @R10, align 4
  %57 = load i32, i32* @R_PR, align 4
  %58 = call i32 @emitLDS(%struct.TYPE_13__* %55, i32 %56, i32 %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 3
  store i32 %62, i32* %60, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 2
  store i32 %66, i32* %64, align 4
  ret void
}

declare dso_local i32 @INSTRUCTION_CD(i32) #1

declare dso_local i32 @emitSTS(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emitMOVLL4(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @emitMOVLLG(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @emitJSR(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @emitALU(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @emitMOV(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emitMOVI(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emitSHIFT(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emitMOVLSG(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @emitLDS(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
