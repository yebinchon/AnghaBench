; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_EtherLog.c_NewEl.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_EtherLog.c_NewEl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @NewEl() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = call %struct.TYPE_6__* @ZeroMalloc(i32 28)
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %1, align 8
  %3 = call i32 (...) @NewLock()
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 6
  store i32 %3, i32* %5, align 4
  %6 = call i32 (...) @NewRef()
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 5
  store i32 %6, i32* %8, align 4
  %9 = call i32 @NewCedar(i32* null, i32* null)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = call i32 (...) @InitEth()
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %14 = call i32 @ElInitConfig(%struct.TYPE_6__* %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %16 = call i32 @ElStartListener(%struct.TYPE_6__* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ElParseCurrentLicenseStatus(i32 %19, i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @NewEraser(i32* null, i32 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  ret %struct.TYPE_6__* %30
}

declare dso_local %struct.TYPE_6__* @ZeroMalloc(i32) #1

declare dso_local i32 @NewLock(...) #1

declare dso_local i32 @NewRef(...) #1

declare dso_local i32 @NewCedar(i32*, i32*) #1

declare dso_local i32 @InitEth(...) #1

declare dso_local i32 @ElInitConfig(%struct.TYPE_6__*) #1

declare dso_local i32 @ElStartListener(%struct.TYPE_6__*) #1

declare dso_local i32 @ElParseCurrentLicenseStatus(i32, i32) #1

declare dso_local i32 @NewEraser(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
