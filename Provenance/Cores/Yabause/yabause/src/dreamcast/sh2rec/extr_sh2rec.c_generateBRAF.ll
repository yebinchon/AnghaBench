; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateBRAF.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateBRAF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i64 }

@R0 = common dso_local global i32 0, align 4
@R8 = common dso_local global i32 0, align 4
@R2 = common dso_local global i32 0, align 4
@OP_ADD = common dso_local global i32 0, align 4
@R15 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_13__*)* @generateBRAF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateBRAF(i32 %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @INSTRUCTION_B(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = and i32 %16, 3
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = load i32, i32* @R0, align 4
  %22 = call i32 @emitMOVLI(%struct.TYPE_13__* %20, i32 2, i32 %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = load i32, i32* @R8, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @R2, align 4
  %27 = call i32 @emitMOVLL4(%struct.TYPE_13__* %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = call i32 @emitBRA(%struct.TYPE_13__* %28, i32 3)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = load i32, i32* @R0, align 4
  %32 = load i32, i32* @R2, align 4
  %33 = load i32, i32* @OP_ADD, align 4
  %34 = call i32 @emitALU(%struct.TYPE_13__* %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = call i32 @emit16(%struct.TYPE_13__* %35, i32 0)
  br label %53

37:                                               ; preds = %2
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = load i32, i32* @R0, align 4
  %40 = call i32 @emitMOVLI(%struct.TYPE_13__* %38, i32 1, i32 %39)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = load i32, i32* @R8, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @R2, align 4
  %45 = call i32 @emitMOVLL4(%struct.TYPE_13__* %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = call i32 @emitBRA(%struct.TYPE_13__* %46, i32 2)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = load i32, i32* @R0, align 4
  %50 = load i32, i32* @R2, align 4
  %51 = load i32, i32* @OP_ADD, align 4
  %52 = call i32 @emitALU(%struct.TYPE_13__* %48, i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %37, %19
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @emit32(%struct.TYPE_13__* %54, i32 %55)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = load i32, i32* @R2, align 4
  %59 = load i32, i32* @R15, align 4
  %60 = call i32 @emitMOVLM(%struct.TYPE_13__* %57, i32 %58, i32 %59)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 2
  store i32 %64, i32* %62, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = call i32 @sh2rec_rec_inst(%struct.TYPE_13__* %65, i32 1)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = call i32 @emitRTS(%struct.TYPE_13__* %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = load i32, i32* @R15, align 4
  %71 = load i32, i32* @R0, align 4
  %72 = call i32 @emitMOVLP(%struct.TYPE_13__* %69, i32 %70, i32 %71)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 2
  store i32 %76, i32* %74, align 4
  ret void
}

declare dso_local i32 @INSTRUCTION_B(i32) #1

declare dso_local i32 @emitMOVLI(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emitMOVLL4(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @emitBRA(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @emitALU(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @emit16(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @emit32(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @emitMOVLM(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @sh2rec_rec_inst(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @emitRTS(%struct.TYPE_13__*) #1

declare dso_local i32 @emitMOVLP(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
