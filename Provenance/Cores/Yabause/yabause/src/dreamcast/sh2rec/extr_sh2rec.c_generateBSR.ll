; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateBSR.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateBSR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64 }

@R2 = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@R15 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_12__*)* @generateBSR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateBSR(i32 %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @INSTRUCTION_BCD(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 4
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 2048
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, -4096
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 4
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  store i64 %28, i64* %6, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = and i32 %32, 3
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %20
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = load i32, i32* @R2, align 4
  %38 = call i32 @emitMOVLI(%struct.TYPE_12__* %36, i32 2, i32 %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = load i32, i32* @R0, align 4
  %41 = call i32 @emitMOVLI(%struct.TYPE_12__* %39, i32 2, i32 %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = call i32 @emitBRA(%struct.TYPE_12__* %42, i32 5)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = load i32, i32* @R2, align 4
  %46 = load i32, i32* @R15, align 4
  %47 = call i32 @emitMOVLM(%struct.TYPE_12__* %44, i32 %45, i32 %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = call i32 @emit16(%struct.TYPE_12__* %48, i32 0)
  br label %63

50:                                               ; preds = %20
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = load i32, i32* @R2, align 4
  %53 = call i32 @emitMOVLI(%struct.TYPE_12__* %51, i32 1, i32 %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = load i32, i32* @R0, align 4
  %56 = call i32 @emitMOVLI(%struct.TYPE_12__* %54, i32 2, i32 %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = call i32 @emitBRA(%struct.TYPE_12__* %57, i32 4)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = load i32, i32* @R2, align 4
  %61 = load i32, i32* @R15, align 4
  %62 = call i32 @emitMOVLM(%struct.TYPE_12__* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %50, %35
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = load i64, i64* %6, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @emit32(%struct.TYPE_12__* %64, i32 %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = load i64, i64* %7, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @emit32(%struct.TYPE_12__* %68, i32 %70)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = call i32 @emitMOVLSG(%struct.TYPE_12__* %72, i32 21)
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 2
  store i64 %77, i64* %75, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %79 = call i32 @sh2rec_rec_inst(%struct.TYPE_12__* %78, i32 1)
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %81 = call i32 @emitRTS(%struct.TYPE_12__* %80)
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %83 = load i32, i32* @R15, align 4
  %84 = load i32, i32* @R0, align 4
  %85 = call i32 @emitMOVLP(%struct.TYPE_12__* %82, i32 %83, i32 %84)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 2
  store i32 %89, i32* %87, align 8
  ret void
}

declare dso_local i32 @INSTRUCTION_BCD(i32) #1

declare dso_local i32 @emitMOVLI(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @emitBRA(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @emitMOVLM(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @emit16(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @emit32(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @emitMOVLSG(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @sh2rec_rec_inst(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @emitRTS(%struct.TYPE_12__*) #1

declare dso_local i32 @emitMOVLP(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
