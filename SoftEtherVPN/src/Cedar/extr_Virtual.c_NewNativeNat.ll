; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NewNativeNat.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NewNativeNat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i8*, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i32, %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }

@INFINITE = common dso_local global i32 0, align 4
@GetHashNativeNatTableForSend = common dso_local global i32 0, align 4
@CmpNativeNatTableForSend = common dso_local global i32 0, align 4
@GetHashNativeNatTableForRecv = common dso_local global i32 0, align 4
@CmpNativeNatTableForRecv = common dso_local global i32 0, align 4
@NativeNatThread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @NewNativeNat(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = icmp eq %struct.TYPE_10__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %65

8:                                                ; preds = %1
  %9 = call %struct.TYPE_11__* @ZeroMalloc(i32 96)
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 12
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %12, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 11
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %17, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 11
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @AddRef(i32 %22)
  %24 = load i32, i32* @INFINITE, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 10
  store i32 %24, i32* %26, align 8
  %27 = call i8* (...) @NewQueue()
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 9
  store i8* %27, i8** %29, align 8
  %30 = call i8* (...) @NewQueue()
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 8
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = call i32 @NnInitIpCombineList(%struct.TYPE_11__* %33)
  %35 = call i8* (...) @NewLock()
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 7
  store i8* %35, i8** %37, align 8
  %38 = call i8* (...) @NewLock()
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  %41 = call i32 (...) @NewEvent()
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 3
  %48 = call i32 @NewTubePair(i32* %45, i32* %47, i32 0)
  %49 = load i32, i32* @GetHashNativeNatTableForSend, align 4
  %50 = load i32, i32* @CmpNativeNatTableForSend, align 4
  %51 = call i8* @NewHashList(i32 %49, i32 %50, i32 11, i32 1)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @GetHashNativeNatTableForRecv, align 4
  %55 = load i32, i32* @CmpNativeNatTableForRecv, align 4
  %56 = call i8* @NewHashList(i32 %54, i32 %55, i32 11, i32 1)
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @NativeNatThread, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = call i32 @NewThread(i32 %59, %struct.TYPE_11__* %60)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %2, align 8
  br label %65

65:                                               ; preds = %8, %7
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  ret %struct.TYPE_11__* %66
}

declare dso_local %struct.TYPE_11__* @ZeroMalloc(i32) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i8* @NewQueue(...) #1

declare dso_local i32 @NnInitIpCombineList(%struct.TYPE_11__*) #1

declare dso_local i8* @NewLock(...) #1

declare dso_local i32 @NewEvent(...) #1

declare dso_local i32 @NewTubePair(i32*, i32*, i32) #1

declare dso_local i8* @NewHashList(i32, i32, i32, i32) #1

declare dso_local i32 @NewThread(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
