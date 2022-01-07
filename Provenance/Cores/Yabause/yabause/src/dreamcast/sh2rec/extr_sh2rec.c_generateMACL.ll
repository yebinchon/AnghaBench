; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateMACL.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateMACL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }

@R_PR = common dso_local global i32 0, align 4
@R10 = common dso_local global i32 0, align 4
@R8 = common dso_local global i32 0, align 4
@R4 = common dso_local global i32 0, align 4
@R9 = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@R15 = common dso_local global i32 0, align 4
@R_SR = common dso_local global i32 0, align 4
@R2 = common dso_local global i32 0, align 4
@R3 = common dso_local global i32 0, align 4
@OP_AND = common dso_local global i32 0, align 4
@OP_OR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_17__*)* @generateMACL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateMACL(i32 %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @INSTRUCTION_B(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @INSTRUCTION_C(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %12 = load i32, i32* @R_PR, align 4
  %13 = load i32, i32* @R10, align 4
  %14 = call i32 @emitSTS(%struct.TYPE_17__* %11, i32 %12, i32 %13)
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %16 = load i32, i32* @R8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @R4, align 4
  %19 = call i32 @emitMOVLL4(%struct.TYPE_17__* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = load i32, i32* @R9, align 4
  %22 = load i32, i32* @R0, align 4
  %23 = call i32 @emitMOVLL4(%struct.TYPE_17__* %20, i32 %21, i32 2, i32 %22)
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = load i32, i32* @R4, align 4
  %26 = call i32 @emitADDI(%struct.TYPE_17__* %24, i32 4, i32 %25)
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = load i32, i32* @R4, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @R8, align 4
  %31 = call i32 @emitMOVLS4(%struct.TYPE_17__* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %33 = load i32, i32* @R0, align 4
  %34 = call i32 @emitJSR(%struct.TYPE_17__* %32, i32 %33)
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %36 = load i32, i32* @R4, align 4
  %37 = call i32 @emitADDI(%struct.TYPE_17__* %35, i32 -4, i32 %36)
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %39 = load i32, i32* @R0, align 4
  %40 = load i32, i32* @R15, align 4
  %41 = call i32 @emitMOVLM(%struct.TYPE_17__* %38, i32 %39, i32 %40)
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = load i32, i32* @R8, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @R4, align 4
  %46 = call i32 @emitMOVLL4(%struct.TYPE_17__* %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %48 = load i32, i32* @R9, align 4
  %49 = load i32, i32* @R0, align 4
  %50 = call i32 @emitMOVLL4(%struct.TYPE_17__* %47, i32 %48, i32 2, i32 %49)
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = load i32, i32* @R4, align 4
  %53 = call i32 @emitADDI(%struct.TYPE_17__* %51, i32 4, i32 %52)
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %55 = load i32, i32* @R4, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @R8, align 4
  %58 = call i32 @emitMOVLS4(%struct.TYPE_17__* %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %60 = load i32, i32* @R0, align 4
  %61 = call i32 @emitJSR(%struct.TYPE_17__* %59, i32 %60)
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %63 = load i32, i32* @R4, align 4
  %64 = call i32 @emitADDI(%struct.TYPE_17__* %62, i32 -4, i32 %63)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %66 = load i32, i32* @R_SR, align 4
  %67 = load i32, i32* @R2, align 4
  %68 = call i32 @emitSTC(%struct.TYPE_17__* %65, i32 %66, i32 %67)
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %70 = load i32, i32* @R3, align 4
  %71 = call i32 @emitMOVI(%struct.TYPE_17__* %69, i32 253, i32 %70)
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %73 = load i32, i32* @R0, align 4
  %74 = load i32, i32* @R15, align 4
  %75 = call i32 @emitMOVLM(%struct.TYPE_17__* %72, i32 %73, i32 %74)
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %77 = call i32 @emitMOVLLG(%struct.TYPE_17__* %76, i32 16)
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %79 = load i32, i32* @R2, align 4
  %80 = load i32, i32* @R3, align 4
  %81 = load i32, i32* @OP_AND, align 4
  %82 = call i32 @emitALU(%struct.TYPE_17__* %78, i32 %79, i32 %80, i32 %81)
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %84 = call i32 @emitANDI(%struct.TYPE_17__* %83, i32 2)
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %86 = load i32, i32* @R0, align 4
  %87 = load i32, i32* @R3, align 4
  %88 = load i32, i32* @OP_OR, align 4
  %89 = call i32 @emitALU(%struct.TYPE_17__* %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %91 = load i32, i32* @R3, align 4
  %92 = load i32, i32* @R_SR, align 4
  %93 = call i32 @emitLDC(%struct.TYPE_17__* %90, i32 %91, i32 %92)
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %95 = load i32, i32* @R15, align 4
  %96 = load i32, i32* @R15, align 4
  %97 = call i32 @emitMACL(%struct.TYPE_17__* %94, i32 %95, i32 %96)
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %99 = load i32, i32* @R2, align 4
  %100 = load i32, i32* @R_SR, align 4
  %101 = call i32 @emitLDC(%struct.TYPE_17__* %98, i32 %99, i32 %100)
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %103 = load i32, i32* @R10, align 4
  %104 = load i32, i32* @R_PR, align 4
  %105 = call i32 @emitLDS(%struct.TYPE_17__* %102, i32 %103, i32 %104)
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 3
  store i32 %109, i32* %107, align 4
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 2
  store i32 %113, i32* %111, align 4
  ret void
}

declare dso_local i32 @INSTRUCTION_B(i32) #1

declare dso_local i32 @INSTRUCTION_C(i32) #1

declare dso_local i32 @emitSTS(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @emitMOVLL4(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @emitADDI(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @emitMOVLS4(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @emitJSR(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @emitMOVLM(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @emitSTC(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @emitMOVI(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @emitMOVLLG(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @emitALU(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @emitANDI(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @emitLDC(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @emitMACL(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @emitLDS(%struct.TYPE_17__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
