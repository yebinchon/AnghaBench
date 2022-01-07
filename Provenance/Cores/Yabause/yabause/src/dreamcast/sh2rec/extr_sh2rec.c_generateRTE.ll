; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateRTE.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateRTE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }

@R9 = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@R_PR = common dso_local global i32 0, align 4
@R10 = common dso_local global i32 0, align 4
@R8 = common dso_local global i32 0, align 4
@R4 = common dso_local global i32 0, align 4
@R1 = common dso_local global i32 0, align 4
@R2 = common dso_local global i32 0, align 4
@OP_ADD = common dso_local global i32 0, align 4
@R15 = common dso_local global i32 0, align 4
@OP_AND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_18__*)* @generateRTE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateRTE(i32 %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %5 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %6 = load i32, i32* @R9, align 4
  %7 = load i32, i32* @R0, align 4
  %8 = call i32 @emitMOVLL4(%struct.TYPE_18__* %5, i32 %6, i32 2, i32 %7)
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %10 = load i32, i32* @R_PR, align 4
  %11 = load i32, i32* @R10, align 4
  %12 = call i32 @emitSTS(%struct.TYPE_18__* %9, i32 %10, i32 %11)
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = load i32, i32* @R0, align 4
  %15 = call i32 @emitJSR(%struct.TYPE_18__* %13, i32 %14)
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %17 = load i32, i32* @R8, align 4
  %18 = load i32, i32* @R4, align 4
  %19 = call i32 @emitMOVLL4(%struct.TYPE_18__* %16, i32 %17, i32 15, i32 %18)
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %21 = load i32, i32* @R9, align 4
  %22 = load i32, i32* @R1, align 4
  %23 = call i32 @emitMOVLL4(%struct.TYPE_18__* %20, i32 %21, i32 2, i32 %22)
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = load i32, i32* @R8, align 4
  %26 = load i32, i32* @R4, align 4
  %27 = call i32 @emitMOVLL4(%struct.TYPE_18__* %24, i32 %25, i32 15, i32 %26)
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = load i32, i32* @R2, align 4
  %30 = call i32 @emitMOVI(%struct.TYPE_18__* %28, i32 4, i32 %29)
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %32 = load i32, i32* @R2, align 4
  %33 = load i32, i32* @R4, align 4
  %34 = load i32, i32* @OP_ADD, align 4
  %35 = call i32 @emitALU(%struct.TYPE_18__* %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %37 = load i32, i32* @R0, align 4
  %38 = load i32, i32* @R15, align 4
  %39 = call i32 @emitMOVLM(%struct.TYPE_18__* %36, i32 %37, i32 %38)
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %41 = load i32, i32* @R4, align 4
  %42 = load i32, i32* @R2, align 4
  %43 = load i32, i32* @OP_ADD, align 4
  %44 = call i32 @emitALU(%struct.TYPE_18__* %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %46 = load i32, i32* @R1, align 4
  %47 = call i32 @emitJSR(%struct.TYPE_18__* %45, i32 %46)
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %49 = load i32, i32* @R2, align 4
  %50 = load i32, i32* @R8, align 4
  %51 = call i32 @emitMOVLS4(%struct.TYPE_18__* %48, i32 %49, i32 15, i32 %50)
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %53 = load i32, i32* @R1, align 4
  %54 = call i32 @emitMOVWI(%struct.TYPE_18__* %52, i32 1, i32 %53)
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %56 = call i32 @emitBRA(%struct.TYPE_18__* %55, i32 1)
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %58 = load i32, i32* @R1, align 4
  %59 = load i32, i32* @R0, align 4
  %60 = load i32, i32* @OP_AND, align 4
  %61 = call i32 @emitALU(%struct.TYPE_18__* %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = call i32 @emit16(%struct.TYPE_18__* %62, i32 1011)
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %65 = load i32, i32* @R10, align 4
  %66 = load i32, i32* @R_PR, align 4
  %67 = call i32 @emitLDS(%struct.TYPE_18__* %64, i32 %65, i32 %66)
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %69 = call i32 @emitMOVLSG(%struct.TYPE_18__* %68, i32 16)
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 2
  store i32 %73, i32* %71, align 4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %75 = call i32 @sh2rec_rec_inst(%struct.TYPE_18__* %74, i32 1)
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %77 = call i32 @emitRTS(%struct.TYPE_18__* %76)
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %79 = load i32, i32* @R15, align 4
  %80 = load i32, i32* @R0, align 4
  %81 = call i32 @emitMOVLP(%struct.TYPE_18__* %78, i32 %79, i32 %80)
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 4
  store i32 %85, i32* %83, align 4
  ret void
}

declare dso_local i32 @emitMOVLL4(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @emitSTS(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @emitJSR(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @emitMOVI(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @emitALU(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @emitMOVLM(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @emitMOVLS4(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @emitMOVWI(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @emitBRA(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @emit16(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @emitLDS(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @emitMOVLSG(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @sh2rec_rec_inst(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @emitRTS(%struct.TYPE_18__*) #1

declare dso_local i32 @emitMOVLP(%struct.TYPE_18__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
