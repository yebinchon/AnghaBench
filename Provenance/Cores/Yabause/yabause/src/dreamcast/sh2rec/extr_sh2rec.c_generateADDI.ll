; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateADDI.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateADDI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@R8 = common dso_local global i32 0, align 4
@R2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_6__*)* @generateADDI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateADDI(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @INSTRUCTION_B(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @INSTRUCTION_CD(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = load i32, i32* @R8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @R2, align 4
  %15 = call i32 @emitMOVLL4(%struct.TYPE_6__* %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @R2, align 4
  %19 = call i32 @emitADDI(%struct.TYPE_6__* %16, i32 %17, i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = load i32, i32* @R2, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @R8, align 4
  %24 = call i32 @emitMOVLS4(%struct.TYPE_6__* %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 2
  store i32 %32, i32* %30, align 4
  ret void
}

declare dso_local i32 @INSTRUCTION_B(i32) #1

declare dso_local i32 @INSTRUCTION_CD(i32) #1

declare dso_local i32 @emitMOVLL4(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @emitADDI(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @emitMOVLS4(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
