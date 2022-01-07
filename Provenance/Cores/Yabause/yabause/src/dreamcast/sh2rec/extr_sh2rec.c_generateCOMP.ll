; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateCOMP.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateCOMP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@R8 = common dso_local global i32 0, align 4
@R2 = common dso_local global i32 0, align 4
@R3 = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@OP_ROTCR = common dso_local global i32 0, align 4
@OP_ROTCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_8__*, i32)* @generateCOMP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateCOMP(i32 %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @INSTRUCTION_B(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @INSTRUCTION_C(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = call i32 @emitMOVLLG(%struct.TYPE_8__* %13, i32 16)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = load i32, i32* @R8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @R2, align 4
  %19 = call i32 @emitMOVLL4(%struct.TYPE_8__* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = load i32, i32* @R8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @R3, align 4
  %24 = call i32 @emitMOVLL4(%struct.TYPE_8__* %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = load i32, i32* @R0, align 4
  %27 = load i32, i32* @OP_ROTCR, align 4
  %28 = call i32 @emitSHIFT(%struct.TYPE_8__* %25, i32 %26, i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = load i32, i32* @R3, align 4
  %31 = load i32, i32* @R2, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @emitALU(%struct.TYPE_8__* %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = load i32, i32* @R0, align 4
  %36 = load i32, i32* @OP_ROTCL, align 4
  %37 = call i32 @emitSHIFT(%struct.TYPE_8__* %34, i32 %35, i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = call i32 @emitMOVLSG(%struct.TYPE_8__* %38, i32 16)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  ret void
}

declare dso_local i32 @INSTRUCTION_B(i32) #1

declare dso_local i32 @INSTRUCTION_C(i32) #1

declare dso_local i32 @emitMOVLLG(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @emitMOVLL4(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @emitSHIFT(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @emitALU(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @emitMOVLSG(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
