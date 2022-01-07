; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateSTSMMACL.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateSTSMMACL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@R_MACL = common dso_local global i32 0, align 4
@R5 = common dso_local global i32 0, align 4
@R9 = common dso_local global i32 0, align 4
@R1 = common dso_local global i32 0, align 4
@R8 = common dso_local global i32 0, align 4
@R4 = common dso_local global i32 0, align 4
@R_PR = common dso_local global i32 0, align 4
@R10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_9__*)* @generateSTSMMACL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateSTSMMACL(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @INSTRUCTION_B(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = load i32, i32* @R_MACL, align 4
  %10 = load i32, i32* @R5, align 4
  %11 = call i32 @emitSTS(%struct.TYPE_9__* %8, i32 %9, i32 %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = load i32, i32* @R9, align 4
  %14 = load i32, i32* @R1, align 4
  %15 = call i32 @emitMOVLL4(%struct.TYPE_9__* %12, i32 %13, i32 5, i32 %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = load i32, i32* @R8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @R4, align 4
  %20 = call i32 @emitMOVLL4(%struct.TYPE_9__* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = load i32, i32* @R_PR, align 4
  %23 = load i32, i32* @R10, align 4
  %24 = call i32 @emitSTS(%struct.TYPE_9__* %21, i32 %22, i32 %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = load i32, i32* @R4, align 4
  %27 = call i32 @emitADDI(%struct.TYPE_9__* %25, i32 -4, i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = load i32, i32* @R1, align 4
  %30 = call i32 @emitJSR(%struct.TYPE_9__* %28, i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = load i32, i32* @R4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @R8, align 4
  %35 = call i32 @emitMOVLS4(%struct.TYPE_9__* %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = load i32, i32* @R10, align 4
  %38 = load i32, i32* @R_PR, align 4
  %39 = call i32 @emitLDS(%struct.TYPE_9__* %36, i32 %37, i32 %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 2
  store i32 %47, i32* %45, align 4
  ret void
}

declare dso_local i32 @INSTRUCTION_B(i32) #1

declare dso_local i32 @emitSTS(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @emitMOVLL4(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @emitADDI(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @emitJSR(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @emitMOVLS4(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @emitLDS(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
