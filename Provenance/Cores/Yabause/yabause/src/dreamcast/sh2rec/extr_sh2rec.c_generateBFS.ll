; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateBFS.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateBFS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i64 }

@R2 = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@OP_ROTCR = common dso_local global i32 0, align 4
@OP_SHLL = common dso_local global i32 0, align 4
@OP_ADD = common dso_local global i32 0, align 4
@R15 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_16__*)* @generateBFS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateBFS(i32 %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @INSTRUCTION_CD(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 3
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 3, i32 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = call i32 @emitMOVLLG(%struct.TYPE_16__* %22, i32 16)
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @R2, align 4
  %27 = call i32 @emitMOVLI(%struct.TYPE_16__* %24, i32 %25, i32 %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = load i32, i32* @R0, align 4
  %30 = load i32, i32* @OP_ROTCR, align 4
  %31 = call i32 @emitSHIFT(%struct.TYPE_16__* %28, i32 %29, i32 %30)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = load i32, i32* @R0, align 4
  %34 = call i32 @emitMOVI(%struct.TYPE_16__* %32, i32 0, i32 %33)
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %36 = call i32 @emitBT(%struct.TYPE_16__* %35, i32 1)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @R0, align 4
  %40 = call i32 @emitMOVI(%struct.TYPE_16__* %37, i32 %38, i32 %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = load i32, i32* @R0, align 4
  %43 = load i32, i32* @OP_SHLL, align 4
  %44 = call i32 @emitSHIFT(%struct.TYPE_16__* %41, i32 %42, i32 %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = and i32 %48, 3
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %2
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = call i32 @emitBRA(%struct.TYPE_16__* %52, i32 3)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %55 = load i32, i32* @R2, align 4
  %56 = load i32, i32* @R0, align 4
  %57 = load i32, i32* @OP_ADD, align 4
  %58 = call i32 @emitALU(%struct.TYPE_16__* %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = call i32 @emit16(%struct.TYPE_16__* %59, i32 0)
  br label %69

61:                                               ; preds = %2
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %63 = call i32 @emitBRA(%struct.TYPE_16__* %62, i32 2)
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %65 = load i32, i32* @R2, align 4
  %66 = load i32, i32* @R0, align 4
  %67 = load i32, i32* @OP_ADD, align 4
  %68 = call i32 @emitALU(%struct.TYPE_16__* %64, i32 %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %61, %51
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @emit32(%struct.TYPE_16__* %70, i32 %71)
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %74 = load i32, i32* @R0, align 4
  %75 = load i32, i32* @R15, align 4
  %76 = call i32 @emitMOVLM(%struct.TYPE_16__* %73, i32 %74, i32 %75)
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 2
  store i32 %80, i32* %78, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %82 = call i32 @sh2rec_rec_inst(%struct.TYPE_16__* %81, i32 1)
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %84 = call i32 @emitRTS(%struct.TYPE_16__* %83)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %86 = load i32, i32* @R15, align 4
  %87 = load i32, i32* @R0, align 4
  %88 = call i32 @emitMOVLP(%struct.TYPE_16__* %85, i32 %86, i32 %87)
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  ret void
}

declare dso_local i32 @INSTRUCTION_CD(i32) #1

declare dso_local i32 @emitMOVLLG(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @emitMOVLI(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @emitSHIFT(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @emitMOVI(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @emitBT(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @emitBRA(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @emitALU(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @emit16(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @emit32(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @emitMOVLM(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @sh2rec_rec_inst(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @emitRTS(%struct.TYPE_16__*) #1

declare dso_local i32 @emitMOVLP(%struct.TYPE_16__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
