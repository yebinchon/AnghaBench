; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateMOVLP.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateMOVLP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }

@R_PR = common dso_local global i32 0, align 4
@R10 = common dso_local global i32 0, align 4
@R9 = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@R8 = common dso_local global i32 0, align 4
@R4 = common dso_local global i32 0, align 4
@R1 = common dso_local global i32 0, align 4
@OP_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_10__*)* @generateMOVLP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateMOVLP(i32 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @INSTRUCTION_B(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @INSTRUCTION_C(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = load i32, i32* @R_PR, align 4
  %13 = load i32, i32* @R10, align 4
  %14 = call i32 @emitSTS(%struct.TYPE_10__* %11, i32 %12, i32 %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = load i32, i32* @R9, align 4
  %17 = load i32, i32* @R0, align 4
  %18 = call i32 @emitMOVLL4(%struct.TYPE_10__* %15, i32 %16, i32 2, i32 %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = load i32, i32* @R8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @R4, align 4
  %23 = call i32 @emitMOVLL4(%struct.TYPE_10__* %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = load i32, i32* @R1, align 4
  %26 = call i32 @emitMOVI(%struct.TYPE_10__* %24, i32 4, i32 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = load i32, i32* @R4, align 4
  %29 = load i32, i32* @R1, align 4
  %30 = load i32, i32* @OP_ADD, align 4
  %31 = call i32 @emitALU(%struct.TYPE_10__* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = load i32, i32* @R0, align 4
  %34 = call i32 @emitJSR(%struct.TYPE_10__* %32, i32 %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = load i32, i32* @R1, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @R8, align 4
  %39 = call i32 @emitMOVLS4(%struct.TYPE_10__* %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = load i32, i32* @R10, align 4
  %42 = load i32, i32* @R_PR, align 4
  %43 = call i32 @emitLDS(%struct.TYPE_10__* %40, i32 %41, i32 %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = load i32, i32* @R0, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @R8, align 4
  %48 = call i32 @emitMOVLS4(%struct.TYPE_10__* %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 2
  store i32 %56, i32* %54, align 4
  ret void
}

declare dso_local i32 @INSTRUCTION_B(i32) #1

declare dso_local i32 @INSTRUCTION_C(i32) #1

declare dso_local i32 @emitSTS(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @emitMOVLL4(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @emitMOVI(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @emitALU(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @emitJSR(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @emitMOVLS4(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @emitLDS(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
