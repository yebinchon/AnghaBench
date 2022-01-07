; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/SeLow/extr_SeLow.c_SlNewDeviceUnicode.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/SeLow/extr_SeLow.c_SlNewDeviceUnicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"D:P(A;;GA;;;SY)(A;;GA;;;BA)\00", align 1
@sl = common dso_local global %struct.TYPE_17__* null, align 8
@FILE_DEVICE_TRANSPORT = common dso_local global i32 0, align 4
@DO_DEVICE_INITIALIZING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @SlNewDeviceUnicode(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  %9 = call %struct.TYPE_14__* @SlNewUnicode(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %8, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** @sl, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* @FILE_DEVICE_TRANSPORT, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %17 = call i32 @SlGetUnicode(%struct.TYPE_14__* %16)
  %18 = call i32 @IoCreateDeviceSecure(i32 %12, i32 8, i32* %14, i32 %15, i32 0, i32 0, i32 %17, i32* null, %struct.TYPE_16__** %6)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %20 = call i32 @SlFreeUnicode(%struct.TYPE_14__* %19)
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @NG(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  br label %64

25:                                               ; preds = %2
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = call i32 @IoCreateSymbolicLink(i32* %27, i32* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @NG(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %25
  %36 = call %struct.TYPE_15__* @SlZeroMalloc(i32 32)
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %5, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = icmp eq %struct.TYPE_15__* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %64

40:                                               ; preds = %35
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 3
  store %struct.TYPE_16__* %41, %struct.TYPE_16__** %43, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %46, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  store %struct.TYPE_14__* %47, %struct.TYPE_14__** %49, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.TYPE_15__**
  store %struct.TYPE_15__* %50, %struct.TYPE_15__** %54, align 8
  %55 = load i32, i32* @DO_DEVICE_INITIALIZING, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = call i32 (...) @SlNewLock()
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %40, %39, %24
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %66 = icmp eq %struct.TYPE_15__* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %69 = icmp ne %struct.TYPE_16__* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = call i32 @IoDeleteDevice(%struct.TYPE_16__* %71)
  br label %73

73:                                               ; preds = %70, %67
  br label %74

74:                                               ; preds = %73, %64
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  ret %struct.TYPE_15__* %75
}

declare dso_local %struct.TYPE_14__* @SlNewUnicode(i8*) #1

declare dso_local i32 @IoCreateDeviceSecure(i32, i32, i32*, i32, i32, i32, i32, i32*, %struct.TYPE_16__**) #1

declare dso_local i32 @SlGetUnicode(%struct.TYPE_14__*) #1

declare dso_local i32 @SlFreeUnicode(%struct.TYPE_14__*) #1

declare dso_local i64 @NG(i32) #1

declare dso_local i32 @IoCreateSymbolicLink(i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @SlZeroMalloc(i32) #1

declare dso_local i32 @SlNewLock(...) #1

declare dso_local i32 @IoDeleteDevice(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
