; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateBT.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateBT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i64 }

@R2 = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@OP_ROTCR = common dso_local global i32 0, align 4
@OP_SHLL = common dso_local global i32 0, align 4
@OP_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_13__*)* @generateBT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateBT(i32 %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @INSTRUCTION_CD(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 2
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = call i32 @emitMOVLLG(%struct.TYPE_13__* %13, i32 16)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = load i32, i32* @R2, align 4
  %17 = call i32 @emitMOVLI(%struct.TYPE_13__* %15, i32 4, i32 %16)
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = load i32, i32* @R0, align 4
  %20 = load i32, i32* @OP_ROTCR, align 4
  %21 = call i32 @emitSHIFT(%struct.TYPE_13__* %18, i32 %19, i32 %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = load i32, i32* @R0, align 4
  %24 = call i32 @emitMOVI(%struct.TYPE_13__* %22, i32 0, i32 %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = call i32 @emitBF(%struct.TYPE_13__* %25, i32 2)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @R0, align 4
  %30 = call i32 @emitMOVI(%struct.TYPE_13__* %27, i32 %28, i32 %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = load i32, i32* @R0, align 4
  %33 = load i32, i32* @OP_SHLL, align 4
  %34 = call i32 @emitSHIFT(%struct.TYPE_13__* %31, i32 %32, i32 %33)
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = load i32, i32* @R0, align 4
  %37 = call i32 @emitADDI(%struct.TYPE_13__* %35, i32 2, i32 %36)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = call i32 @emitRTS(%struct.TYPE_13__* %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = load i32, i32* @R2, align 4
  %42 = load i32, i32* @R0, align 4
  %43 = load i32, i32* @OP_ADD, align 4
  %44 = call i32 @emitALU(%struct.TYPE_13__* %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = and i32 %48, 3
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %2
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = call i32 @emit16(%struct.TYPE_13__* %52, i32 0)
  br label %54

54:                                               ; preds = %51, %2
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @emit32(%struct.TYPE_13__* %55, i32 %56)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 2
  store i32 %61, i32* %59, align 4
  ret void
}

declare dso_local i32 @INSTRUCTION_CD(i32) #1

declare dso_local i32 @emitMOVLLG(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @emitMOVLI(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emitSHIFT(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emitMOVI(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emitBF(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @emitADDI(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @emitRTS(%struct.TYPE_13__*) #1

declare dso_local i32 @emitALU(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @emit16(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @emit32(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
