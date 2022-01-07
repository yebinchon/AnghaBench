; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateSTCMSR.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateSTCMSR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }

@R9 = common dso_local global i32 0, align 4
@R1 = common dso_local global i32 0, align 4
@R8 = common dso_local global i32 0, align 4
@R4 = common dso_local global i32 0, align 4
@R_PR = common dso_local global i32 0, align 4
@R10 = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@R5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_11__*)* @generateSTCMSR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateSTCMSR(i32 %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @INSTRUCTION_B(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = call i32 @emitMOVLLG(%struct.TYPE_11__* %8, i32 16)
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = load i32, i32* @R9, align 4
  %12 = load i32, i32* @R1, align 4
  %13 = call i32 @emitMOVLL4(%struct.TYPE_11__* %10, i32 %11, i32 5, i32 %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = load i32, i32* @R8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @R4, align 4
  %18 = call i32 @emitMOVLL4(%struct.TYPE_11__* %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = load i32, i32* @R_PR, align 4
  %21 = load i32, i32* @R10, align 4
  %22 = call i32 @emitSTS(%struct.TYPE_11__* %19, i32 %20, i32 %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = load i32, i32* @R4, align 4
  %25 = call i32 @emitADDI(%struct.TYPE_11__* %23, i32 -4, i32 %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = load i32, i32* @R0, align 4
  %28 = load i32, i32* @R5, align 4
  %29 = call i32 @emitMOV(%struct.TYPE_11__* %26, i32 %27, i32 %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = load i32, i32* @R1, align 4
  %32 = call i32 @emitJSR(%struct.TYPE_11__* %30, i32 %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = load i32, i32* @R4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @R8, align 4
  %37 = call i32 @emitMOVLS4(%struct.TYPE_11__* %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = load i32, i32* @R10, align 4
  %40 = load i32, i32* @R_PR, align 4
  %41 = call i32 @emitLDS(%struct.TYPE_11__* %38, i32 %39, i32 %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 2
  store i32 %45, i32* %43, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 2
  store i32 %49, i32* %47, align 4
  ret void
}

declare dso_local i32 @INSTRUCTION_B(i32) #1

declare dso_local i32 @emitMOVLLG(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @emitMOVLL4(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @emitSTS(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @emitADDI(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @emitMOV(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @emitJSR(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @emitMOVLS4(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @emitLDS(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
