; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateBSRF.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateBSRF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i64 }

@R0 = common dso_local global i32 0, align 4
@R8 = common dso_local global i32 0, align 4
@R2 = common dso_local global i32 0, align 4
@OP_ADD = common dso_local global i32 0, align 4
@R15 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_14__*)* @generateBSRF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateBSRF(i32 %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @INSTRUCTION_B(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = load i32, i32* @R0, align 4
  %15 = call i32 @emitMOVLI(%struct.TYPE_14__* %13, i32 1, i32 %14)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 3
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = call i32 @emitBRA(%struct.TYPE_14__* %23, i32 3)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = load i32, i32* @R8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @R2, align 4
  %29 = call i32 @emitMOVLL4(%struct.TYPE_14__* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = call i32 @emit16(%struct.TYPE_14__* %30, i32 0)
  br label %40

32:                                               ; preds = %2
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = call i32 @emitBRA(%struct.TYPE_14__* %33, i32 2)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = load i32, i32* @R8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @R2, align 4
  %39 = call i32 @emitMOVLL4(%struct.TYPE_14__* %35, i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %32, %22
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @emit32(%struct.TYPE_14__* %41, i32 %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = load i32, i32* @R0, align 4
  %46 = load i32, i32* @R2, align 4
  %47 = load i32, i32* @OP_ADD, align 4
  %48 = call i32 @emitALU(%struct.TYPE_14__* %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = call i32 @emitMOVLSG(%struct.TYPE_14__* %49, i32 21)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %52 = load i32, i32* @R2, align 4
  %53 = load i32, i32* @R15, align 4
  %54 = call i32 @emitMOVLM(%struct.TYPE_14__* %51, i32 %52, i32 %53)
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 2
  store i32 %58, i32* %56, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = call i32 @sh2rec_rec_inst(%struct.TYPE_14__* %59, i32 1)
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %62 = call i32 @emitRTS(%struct.TYPE_14__* %61)
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = load i32, i32* @R15, align 4
  %65 = load i32, i32* @R0, align 4
  %66 = call i32 @emitMOVLP(%struct.TYPE_14__* %63, i32 %64, i32 %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 2
  store i32 %70, i32* %68, align 4
  ret void
}

declare dso_local i32 @INSTRUCTION_B(i32) #1

declare dso_local i32 @emitMOVLI(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @emitBRA(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @emitMOVLL4(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @emit16(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @emit32(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @emitALU(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @emitMOVLSG(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @emitMOVLM(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @sh2rec_rec_inst(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @emitRTS(%struct.TYPE_14__*) #1

declare dso_local i32 @emitMOVLP(%struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
