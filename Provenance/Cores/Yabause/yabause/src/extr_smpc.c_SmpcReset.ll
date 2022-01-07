; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_smpc.c_SmpcReset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_smpc.c_SmpcReset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@SmpcRegs = common dso_local global i64 0, align 8
@SmpcInternalVars = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SmpcReset() #0 {
  %1 = load i64, i64* @SmpcRegs, align 8
  %2 = inttoptr i64 %1 to i8*
  %3 = call i32 @memset(i8* %2, i32 0, i32 4)
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SmpcInternalVars, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 14
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = call i32 @memset(i8* %7, i32 0, i32 4)
  %9 = call i32 (...) @SmpcRecheckRegion()
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SmpcInternalVars, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 13
  store i64 0, i64* %11, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SmpcInternalVars, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 12
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SmpcInternalVars, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 11
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SmpcInternalVars, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 10
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SmpcInternalVars, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 9
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SmpcInternalVars, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SmpcInternalVars, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 8
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SmpcInternalVars, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 7
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SmpcInternalVars, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 6
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SmpcInternalVars, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SmpcInternalVars, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SmpcInternalVars, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SmpcInternalVars, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = bitcast i32* %35 to i8*
  %37 = call i32 @memset(i8* %36, i32 0, i32 4)
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SmpcInternalVars, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = bitcast i32* %39 to i8*
  %41 = call i32 @memset(i8* %40, i32 0, i32 4)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @SmpcRecheckRegion(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
