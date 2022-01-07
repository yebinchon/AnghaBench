; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateTRAPA.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateTRAPA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i64 }

@R_PR = common dso_local global i32 0, align 4
@R10 = common dso_local global i32 0, align 4
@R8 = common dso_local global i32 0, align 4
@R4 = common dso_local global i32 0, align 4
@R9 = common dso_local global i32 0, align 4
@R1 = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@R5 = common dso_local global i32 0, align 4
@OP_EXTUB = common dso_local global i32 0, align 4
@OP_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_19__*)* @generateTRAPA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateTRAPA(i32 %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @INSTRUCTION_CD(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 3
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 5, i32 6
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 2
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = load i32, i32* @R_PR, align 4
  %24 = load i32, i32* @R10, align 4
  %25 = call i32 @emitSTS(%struct.TYPE_19__* %22, i32 %23, i32 %24)
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %27 = load i32, i32* @R8, align 4
  %28 = load i32, i32* @R4, align 4
  %29 = call i32 @emitMOVLL4(%struct.TYPE_19__* %26, i32 %27, i32 15, i32 %28)
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %31 = load i32, i32* @R9, align 4
  %32 = load i32, i32* @R1, align 4
  %33 = call i32 @emitMOVLL4(%struct.TYPE_19__* %30, i32 %31, i32 5, i32 %32)
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = call i32 @emitMOVLLG(%struct.TYPE_19__* %34, i32 16)
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %37 = load i32, i32* @R4, align 4
  %38 = call i32 @emitADDI(%struct.TYPE_19__* %36, i32 -4, i32 %37)
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %40 = load i32, i32* @R1, align 4
  %41 = call i32 @emitJSR(%struct.TYPE_19__* %39, i32 %40)
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %43 = load i32, i32* @R0, align 4
  %44 = load i32, i32* @R5, align 4
  %45 = call i32 @emitMOV(%struct.TYPE_19__* %42, i32 %43, i32 %44)
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %47 = load i32, i32* @R8, align 4
  %48 = load i32, i32* @R4, align 4
  %49 = call i32 @emitMOVLL4(%struct.TYPE_19__* %46, i32 %47, i32 15, i32 %48)
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %51 = load i32, i32* @R9, align 4
  %52 = load i32, i32* @R1, align 4
  %53 = call i32 @emitMOVLL4(%struct.TYPE_19__* %50, i32 %51, i32 5, i32 %52)
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %55 = load i32, i32* @R4, align 4
  %56 = call i32 @emitADDI(%struct.TYPE_19__* %54, i32 -8, i32 %55)
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @R5, align 4
  %60 = call i32 @emitMOVLI(%struct.TYPE_19__* %57, i32 %58, i32 %59)
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %62 = load i32, i32* @R1, align 4
  %63 = call i32 @emitJSR(%struct.TYPE_19__* %61, i32 %62)
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %65 = load i32, i32* @R4, align 4
  %66 = load i32, i32* @R8, align 4
  %67 = call i32 @emitMOVLS4(%struct.TYPE_19__* %64, i32 %65, i32 15, i32 %66)
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @R4, align 4
  %71 = call i32 @emitMOVI(%struct.TYPE_19__* %68, i32 %69, i32 %70)
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %73 = load i32, i32* @R4, align 4
  %74 = load i32, i32* @R4, align 4
  %75 = load i32, i32* @OP_EXTUB, align 4
  %76 = call i32 @emitALU(%struct.TYPE_19__* %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %78 = load i32, i32* @R9, align 4
  %79 = load i32, i32* @R1, align 4
  %80 = call i32 @emitMOVLL4(%struct.TYPE_19__* %77, i32 %78, i32 2, i32 %79)
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %82 = call i32 @emitMOVLLG(%struct.TYPE_19__* %81, i32 18)
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %84 = load i32, i32* @R4, align 4
  %85 = call i32 @emitSHLL2(%struct.TYPE_19__* %83, i32 %84)
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %87 = load i32, i32* @R1, align 4
  %88 = call i32 @emitJSR(%struct.TYPE_19__* %86, i32 %87)
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %90 = load i32, i32* @R0, align 4
  %91 = load i32, i32* @R4, align 4
  %92 = load i32, i32* @OP_ADD, align 4
  %93 = call i32 @emitALU(%struct.TYPE_19__* %89, i32 %90, i32 %91, i32 %92)
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %95 = load i32, i32* @R10, align 4
  %96 = load i32, i32* @R_PR, align 4
  %97 = call i32 @emitLDS(%struct.TYPE_19__* %94, i32 %95, i32 %96)
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %99 = call i32 @emitRTS(%struct.TYPE_19__* %98)
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %101 = call i32 @emitNOP(%struct.TYPE_19__* %100)
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = and i32 %105, 3
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %2
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %110 = call i32 @emit16(%struct.TYPE_19__* %109, i32 0)
  br label %111

111:                                              ; preds = %108, %2
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @emit32(%struct.TYPE_19__* %112, i32 %113)
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 8
  store i32 %118, i32* %116, align 4
  ret void
}

declare dso_local i32 @INSTRUCTION_CD(i32) #1

declare dso_local i32 @emitSTS(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @emitMOVLL4(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @emitMOVLLG(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @emitADDI(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @emitJSR(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @emitMOV(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @emitMOVLI(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @emitMOVLS4(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @emitMOVI(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @emitALU(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @emitSHLL2(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @emitLDS(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @emitRTS(%struct.TYPE_19__*) #1

declare dso_local i32 @emitNOP(%struct.TYPE_19__*) #1

declare dso_local i32 @emit16(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @emit32(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
