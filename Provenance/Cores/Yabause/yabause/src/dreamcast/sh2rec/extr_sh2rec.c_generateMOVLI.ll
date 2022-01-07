; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateMOVLI.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateMOVLI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i64 }

@R4 = common dso_local global i32 0, align 4
@R9 = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@R_PR = common dso_local global i32 0, align 4
@R10 = common dso_local global i32 0, align 4
@R8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_13__*)* @generateMOVLI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateMOVLI(i32 %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @INSTRUCTION_B(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @INSTRUCTION_CD(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 4
  %16 = and i32 %15, -4
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 %17, 2
  %19 = add i32 %16, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = and i32 %23, 3
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %2
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = load i32, i32* @R4, align 4
  %29 = call i32 @emitMOVLI(%struct.TYPE_13__* %27, i32 1, i32 %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = call i32 @emitBRA(%struct.TYPE_13__* %30, i32 2)
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = load i32, i32* @R9, align 4
  %34 = load i32, i32* @R0, align 4
  %35 = call i32 @emitMOVLL4(%struct.TYPE_13__* %32, i32 %33, i32 2, i32 %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @emit32(%struct.TYPE_13__* %36, i32 %37)
  br label %54

39:                                               ; preds = %2
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = load i32, i32* @R4, align 4
  %42 = call i32 @emitMOVLI(%struct.TYPE_13__* %40, i32 1, i32 %41)
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = call i32 @emitBRA(%struct.TYPE_13__* %43, i32 3)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = load i32, i32* @R9, align 4
  %47 = load i32, i32* @R0, align 4
  %48 = call i32 @emitMOVLL4(%struct.TYPE_13__* %45, i32 %46, i32 2, i32 %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = call i32 @emit16(%struct.TYPE_13__* %49, i32 0)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @emit32(%struct.TYPE_13__* %51, i32 %52)
  br label %54

54:                                               ; preds = %39, %26
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = load i32, i32* @R_PR, align 4
  %57 = load i32, i32* @R10, align 4
  %58 = call i32 @emitSTS(%struct.TYPE_13__* %55, i32 %56, i32 %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = load i32, i32* @R0, align 4
  %61 = call i32 @emitJSR(%struct.TYPE_13__* %59, i32 %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = call i32 @emitNOP(%struct.TYPE_13__* %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = load i32, i32* @R10, align 4
  %66 = load i32, i32* @R_PR, align 4
  %67 = call i32 @emitLDS(%struct.TYPE_13__* %64, i32 %65, i32 %66)
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = load i32, i32* @R0, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @R8, align 4
  %72 = call i32 @emitMOVLS4(%struct.TYPE_13__* %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 2
  store i32 %80, i32* %78, align 8
  ret void
}

declare dso_local i32 @INSTRUCTION_B(i32) #1

declare dso_local i32 @INSTRUCTION_CD(i32) #1

declare dso_local i32 @emitMOVLI(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emitBRA(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @emitMOVLL4(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @emit32(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @emit16(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @emitSTS(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emitJSR(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @emitNOP(%struct.TYPE_13__*) #1

declare dso_local i32 @emitLDS(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emitMOVLS4(%struct.TYPE_13__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
