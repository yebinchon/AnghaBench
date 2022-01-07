; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateORM.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateORM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }

@R_PR = common dso_local global i32 0, align 4
@R10 = common dso_local global i32 0, align 4
@R8 = common dso_local global i32 0, align 4
@R4 = common dso_local global i32 0, align 4
@R9 = common dso_local global i32 0, align 4
@R1 = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@OP_ADD = common dso_local global i32 0, align 4
@R15 = common dso_local global i32 0, align 4
@R5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_13__*)* @generateORM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateORM(i32 %0, %struct.TYPE_13__* %1) #0 {
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
  %13 = call i32 @emitMOVLLG(%struct.TYPE_13__* %12, i32 17)
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = load i32, i32* @R8, align 4
  %16 = load i32, i32* @R4, align 4
  %17 = call i32 @emitMOVLL4(%struct.TYPE_13__* %14, i32 %15, i32 0, i32 %16)
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = load i32, i32* @R9, align 4
  %20 = load i32, i32* @R1, align 4
  %21 = call i32 @emitMOVLL4(%struct.TYPE_13__* %18, i32 %19, i32 0, i32 %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = load i32, i32* @R0, align 4
  %24 = load i32, i32* @R4, align 4
  %25 = load i32, i32* @OP_ADD, align 4
  %26 = call i32 @emitALU(%struct.TYPE_13__* %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = load i32, i32* @R1, align 4
  %29 = call i32 @emitJSR(%struct.TYPE_13__* %27, i32 %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = load i32, i32* @R4, align 4
  %32 = load i32, i32* @R15, align 4
  %33 = call i32 @emitMOVLM(%struct.TYPE_13__* %30, i32 %31, i32 %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = load i32, i32* @R9, align 4
  %36 = load i32, i32* @R1, align 4
  %37 = call i32 @emitMOVLL4(%struct.TYPE_13__* %34, i32 %35, i32 3, i32 %36)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @emitORI(%struct.TYPE_13__* %38, i32 %39)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = load i32, i32* @R15, align 4
  %43 = load i32, i32* @R4, align 4
  %44 = call i32 @emitMOVLP(%struct.TYPE_13__* %41, i32 %42, i32 %43)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = load i32, i32* @R1, align 4
  %47 = call i32 @emitJSR(%struct.TYPE_13__* %45, i32 %46)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = load i32, i32* @R0, align 4
  %50 = load i32, i32* @R5, align 4
  %51 = call i32 @emitMOV(%struct.TYPE_13__* %48, i32 %49, i32 %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = load i32, i32* @R10, align 4
  %54 = load i32, i32* @R_PR, align 4
  %55 = call i32 @emitLDS(%struct.TYPE_13__* %52, i32 %53, i32 %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 3
  store i32 %59, i32* %57, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 2
  store i32 %63, i32* %61, align 4
  ret void
}

declare dso_local i32 @INSTRUCTION_CD(i32) #1

declare dso_local i32 @emitSTS(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emitMOVLLG(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @emitMOVLL4(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @emitALU(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @emitJSR(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @emitMOVLM(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emitORI(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @emitMOVLP(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emitMOV(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emitLDS(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
