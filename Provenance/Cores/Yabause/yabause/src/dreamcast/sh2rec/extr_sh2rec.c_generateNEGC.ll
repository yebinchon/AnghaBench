; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateNEGC.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateNEGC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@R8 = common dso_local global i32 0, align 4
@R3 = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@OP_ROTCR = common dso_local global i32 0, align 4
@R2 = common dso_local global i32 0, align 4
@OP_NEGC = common dso_local global i32 0, align 4
@OP_ROTCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_9__*)* @generateNEGC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateNEGC(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @INSTRUCTION_B(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @INSTRUCTION_C(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = call i32 @emitMOVLLG(%struct.TYPE_9__* %11, i32 16)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = load i32, i32* @R8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @R3, align 4
  %17 = call i32 @emitMOVLL4(%struct.TYPE_9__* %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = load i32, i32* @R0, align 4
  %20 = load i32, i32* @OP_ROTCR, align 4
  %21 = call i32 @emitSHIFT(%struct.TYPE_9__* %18, i32 %19, i32 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = load i32, i32* @R3, align 4
  %24 = load i32, i32* @R2, align 4
  %25 = load i32, i32* @OP_NEGC, align 4
  %26 = call i32 @emitALU(%struct.TYPE_9__* %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = load i32, i32* @R0, align 4
  %29 = load i32, i32* @OP_ROTCL, align 4
  %30 = call i32 @emitSHIFT(%struct.TYPE_9__* %27, i32 %28, i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = load i32, i32* @R2, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @R8, align 4
  %35 = call i32 @emitMOVLS4(%struct.TYPE_9__* %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = call i32 @emitMOVLSG(%struct.TYPE_9__* %36, i32 16)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 2
  store i32 %45, i32* %43, align 4
  ret void
}

declare dso_local i32 @INSTRUCTION_B(i32) #1

declare dso_local i32 @INSTRUCTION_C(i32) #1

declare dso_local i32 @emitMOVLLG(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @emitMOVLL4(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @emitSHIFT(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @emitALU(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @emitMOVLS4(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @emitMOVLSG(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
