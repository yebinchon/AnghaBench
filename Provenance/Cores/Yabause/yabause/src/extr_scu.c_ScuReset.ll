; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scu.c_ScuReset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scu.c_ScuReset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@ScuRegs = common dso_local global %struct.TYPE_5__* null, align 8
@ScuDsp = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ScuReset() #0 {
  %1 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %2 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  store i32 257, i32* %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 257, i32* %4, align 4
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 257, i32* %6, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 5
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  store i32 0, i32* %10, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 8
  store i32 7, i32* %14, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 7
  store i32 7, i32* %16, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 6
  store i32 7, i32* %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 9
  store i32 0, i32* %20, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 10
  store i32 0, i32* %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ScuDsp, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 11
  store i32 0, i32* %27, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 12
  store i32 0, i32* %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 13
  store i32 49151, i32* %31, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 14
  store i32 0, i32* %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 15
  store i32 0, i32* %35, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 17
  store i32 0, i32* %37, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 16
  store i32 0, i32* %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 18
  store i32 0, i32* %41, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 19
  store i32 0, i32* %43, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 20
  store i32 4, i32* %45, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 24
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 23
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 22
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @memset(i8* %53, i32 0, i32 120)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ScuRegs, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 21
  store i64 0, i64* %56, align 8
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
