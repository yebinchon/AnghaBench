; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateMOVBS4.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateMOVBS4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@R8 = common dso_local global i32 0, align 4
@R5 = common dso_local global i32 0, align 4
@R9 = common dso_local global i32 0, align 4
@R1 = common dso_local global i32 0, align 4
@R4 = common dso_local global i32 0, align 4
@R_PR = common dso_local global i32 0, align 4
@R10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_8__*)* @generateMOVBS4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateMOVBS4(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @INSTRUCTION_C(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @INSTRUCTION_D(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = load i32, i32* @R8, align 4
  %13 = load i32, i32* @R5, align 4
  %14 = call i32 @emitMOVLL4(%struct.TYPE_8__* %11, i32 %12, i32 0, i32 %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = load i32, i32* @R9, align 4
  %17 = load i32, i32* @R1, align 4
  %18 = call i32 @emitMOVLL4(%struct.TYPE_8__* %15, i32 %16, i32 3, i32 %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = load i32, i32* @R8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @R4, align 4
  %23 = call i32 @emitMOVLL4(%struct.TYPE_8__* %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = load i32, i32* @R_PR, align 4
  %26 = load i32, i32* @R10, align 4
  %27 = call i32 @emitSTS(%struct.TYPE_8__* %24, i32 %25, i32 %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = load i32, i32* @R1, align 4
  %30 = call i32 @emitJSR(%struct.TYPE_8__* %28, i32 %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @R4, align 4
  %34 = call i32 @emitADDI(%struct.TYPE_8__* %31, i32 %32, i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = load i32, i32* @R10, align 4
  %37 = load i32, i32* @R_PR, align 4
  %38 = call i32 @emitLDS(%struct.TYPE_8__* %35, i32 %36, i32 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 2
  store i32 %46, i32* %44, align 4
  ret void
}

declare dso_local i32 @INSTRUCTION_C(i32) #1

declare dso_local i32 @INSTRUCTION_D(i32) #1

declare dso_local i32 @emitMOVLL4(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @emitSTS(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @emitJSR(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @emitADDI(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @emitLDS(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
