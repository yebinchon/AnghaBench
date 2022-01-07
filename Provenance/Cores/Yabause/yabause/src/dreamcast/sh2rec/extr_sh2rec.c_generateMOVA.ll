; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateMOVA.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateMOVA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64 }

@R2 = common dso_local global i32 0, align 4
@R8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_8__*)* @generateMOVA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateMOVA(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @INSTRUCTION_CD(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 4
  %13 = and i32 %12, -4
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 %14, 2
  %16 = add i32 %13, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 3
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = load i32, i32* @R2, align 4
  %26 = call i32 @emitMOVLI(%struct.TYPE_8__* %24, i32 1, i32 %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = call i32 @emitBRA(%struct.TYPE_8__* %27, i32 2)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = load i32, i32* @R2, align 4
  %31 = load i32, i32* @R8, align 4
  %32 = call i32 @emitMOVLS4(%struct.TYPE_8__* %29, i32 %30, i32 0, i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @emit32(%struct.TYPE_8__* %33, i32 %34)
  br label %51

36:                                               ; preds = %2
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = load i32, i32* @R2, align 4
  %39 = call i32 @emitMOVLI(%struct.TYPE_8__* %37, i32 1, i32 %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = call i32 @emitBRA(%struct.TYPE_8__* %40, i32 3)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = load i32, i32* @R2, align 4
  %44 = load i32, i32* @R8, align 4
  %45 = call i32 @emitMOVLS4(%struct.TYPE_8__* %42, i32 %43, i32 0, i32 %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = call i32 @emit16(%struct.TYPE_8__* %46, i32 0)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @emit32(%struct.TYPE_8__* %48, i32 %49)
  br label %51

51:                                               ; preds = %36, %23
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 2
  store i32 %59, i32* %57, align 8
  ret void
}

declare dso_local i32 @INSTRUCTION_CD(i32) #1

declare dso_local i32 @emitMOVLI(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @emitBRA(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @emitMOVLS4(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @emit32(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @emit16(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
