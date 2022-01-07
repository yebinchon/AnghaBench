; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateTAS.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateTAS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }

@R9 = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@R_PR = common dso_local global i32 0, align 4
@R10 = common dso_local global i32 0, align 4
@R8 = common dso_local global i32 0, align 4
@R4 = common dso_local global i32 0, align 4
@R5 = common dso_local global i32 0, align 4
@R2 = common dso_local global i32 0, align 4
@OP_ROTCR = common dso_local global i32 0, align 4
@OP_TST = common dso_local global i32 0, align 4
@OP_ROTCL = common dso_local global i32 0, align 4
@R1 = common dso_local global i32 0, align 4
@OP_OR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_13__*)* @generateTAS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateTAS(i32 %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @INSTRUCTION_B(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %9 = load i32, i32* @R9, align 4
  %10 = load i32, i32* @R0, align 4
  %11 = call i32 @emitMOVLL4(%struct.TYPE_13__* %8, i32 %9, i32 0, i32 %10)
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = load i32, i32* @R_PR, align 4
  %14 = load i32, i32* @R10, align 4
  %15 = call i32 @emitSTS(%struct.TYPE_13__* %12, i32 %13, i32 %14)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = load i32, i32* @R0, align 4
  %18 = call i32 @emitJSR(%struct.TYPE_13__* %16, i32 %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = load i32, i32* @R8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @R4, align 4
  %23 = call i32 @emitMOVLL4(%struct.TYPE_13__* %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = load i32, i32* @R0, align 4
  %26 = load i32, i32* @R5, align 4
  %27 = call i32 @emitMOV(%struct.TYPE_13__* %24, i32 %25, i32 %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = call i32 @emitMOVLLG(%struct.TYPE_13__* %28, i32 16)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = load i32, i32* @R2, align 4
  %32 = call i32 @emitMOVI(%struct.TYPE_13__* %30, i32 128, i32 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = load i32, i32* @R8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @R4, align 4
  %37 = call i32 @emitMOVLL4(%struct.TYPE_13__* %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = load i32, i32* @R0, align 4
  %40 = load i32, i32* @OP_ROTCR, align 4
  %41 = call i32 @emitSHIFT(%struct.TYPE_13__* %38, i32 %39, i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = load i32, i32* @R5, align 4
  %44 = load i32, i32* @R5, align 4
  %45 = load i32, i32* @OP_TST, align 4
  %46 = call i32 @emitALU(%struct.TYPE_13__* %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = load i32, i32* @R0, align 4
  %49 = load i32, i32* @OP_ROTCL, align 4
  %50 = call i32 @emitSHIFT(%struct.TYPE_13__* %47, i32 %48, i32 %49)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = load i32, i32* @R9, align 4
  %53 = load i32, i32* @R1, align 4
  %54 = call i32 @emitMOVLL4(%struct.TYPE_13__* %51, i32 %52, i32 3, i32 %53)
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = call i32 @emitMOVLSG(%struct.TYPE_13__* %55, i32 16)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = load i32, i32* @R1, align 4
  %59 = call i32 @emitJSR(%struct.TYPE_13__* %57, i32 %58)
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = load i32, i32* @R2, align 4
  %62 = load i32, i32* @R5, align 4
  %63 = load i32, i32* @OP_OR, align 4
  %64 = call i32 @emitALU(%struct.TYPE_13__* %60, i32 %61, i32 %62, i32 %63)
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = load i32, i32* @R10, align 4
  %67 = load i32, i32* @R_PR, align 4
  %68 = call i32 @emitLDS(%struct.TYPE_13__* %65, i32 %66, i32 %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 4
  store i32 %72, i32* %70, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 2
  store i32 %76, i32* %74, align 4
  ret void
}

declare dso_local i32 @INSTRUCTION_B(i32) #1

declare dso_local i32 @emitMOVLL4(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @emitSTS(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emitJSR(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @emitMOV(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emitMOVLLG(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @emitMOVI(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emitSHIFT(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emitALU(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @emitMOVLSG(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @emitLDS(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
