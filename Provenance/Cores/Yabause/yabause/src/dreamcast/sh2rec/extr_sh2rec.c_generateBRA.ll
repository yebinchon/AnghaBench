; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateBRA.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateBRA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i64 }

@R2 = common dso_local global i32 0, align 4
@R15 = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_11__*)* @generateBRA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateBRA(i32 %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @INSTRUCTION_BCD(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 2048
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, -4096
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 4
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  store i64 %23, i64* %6, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = load i32, i32* @R2, align 4
  %26 = call i32 @emitMOVLI(%struct.TYPE_11__* %24, i32 1, i32 %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = and i32 %30, 3
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %15
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = call i32 @emitBRA(%struct.TYPE_11__* %34, i32 3)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = load i32, i32* @R2, align 4
  %38 = load i32, i32* @R15, align 4
  %39 = call i32 @emitMOVLM(%struct.TYPE_11__* %36, i32 %37, i32 %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = call i32 @emit16(%struct.TYPE_11__* %40, i32 0)
  br label %49

42:                                               ; preds = %15
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = call i32 @emitBRA(%struct.TYPE_11__* %43, i32 2)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = load i32, i32* @R2, align 4
  %47 = load i32, i32* @R15, align 4
  %48 = call i32 @emitMOVLM(%struct.TYPE_11__* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %33
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = load i64, i64* %6, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @emit32(%struct.TYPE_11__* %50, i32 %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 2
  store i64 %57, i64* %55, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = call i32 @sh2rec_rec_inst(%struct.TYPE_11__* %58, i32 1)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = call i32 @emitRTS(%struct.TYPE_11__* %60)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = load i32, i32* @R15, align 4
  %64 = load i32, i32* @R0, align 4
  %65 = call i32 @emitMOVLP(%struct.TYPE_11__* %62, i32 %63, i32 %64)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 2
  store i32 %69, i32* %67, align 8
  ret void
}

declare dso_local i32 @INSTRUCTION_BCD(i32) #1

declare dso_local i32 @emitMOVLI(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @emitBRA(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @emitMOVLM(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @emit16(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @emit32(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @sh2rec_rec_inst(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @emitRTS(%struct.TYPE_11__*) #1

declare dso_local i32 @emitMOVLP(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
