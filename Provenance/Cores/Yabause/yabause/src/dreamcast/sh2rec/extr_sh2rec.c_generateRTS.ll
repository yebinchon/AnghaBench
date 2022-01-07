; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateRTS.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateRTS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@R0 = common dso_local global i32 0, align 4
@R15 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_8__*)* @generateRTS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateRTS(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %6 = call i32 @emitMOVLLG(%struct.TYPE_8__* %5, i32 21)
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = load i32, i32* @R0, align 4
  %9 = load i32, i32* @R15, align 4
  %10 = call i32 @emitMOVLM(%struct.TYPE_8__* %7, i32 %8, i32 %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 2
  store i32 %14, i32* %12, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = call i32 @sh2rec_rec_inst(%struct.TYPE_8__* %15, i32 1)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = call i32 @emitRTS(%struct.TYPE_8__* %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = load i32, i32* @R15, align 4
  %21 = load i32, i32* @R0, align 4
  %22 = call i32 @emitMOVLP(%struct.TYPE_8__* %19, i32 %20, i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 2
  store i32 %26, i32* %24, align 4
  ret void
}

declare dso_local i32 @emitMOVLLG(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @emitMOVLM(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @sh2rec_rec_inst(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @emitRTS(%struct.TYPE_8__*) #1

declare dso_local i32 @emitMOVLP(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
