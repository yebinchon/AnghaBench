; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/SeeDll/extr_AdInfo.c_PacketUpdateAdInfo.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/SeeDll/extr_AdInfo.c_PacketUpdateAdInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__*, i32 }

@AdaptersInfoMutex = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@AdaptersInfoList = common dso_local global %struct.TYPE_4__* null, align 8
@FAKE_NDISWAN_ADAPTER_NAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@p_dagc_open = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PacketUpdateAdInfo(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @AdaptersInfoMutex, align 4
  %7 = load i32, i32* @INFINITE, align 4
  %8 = call i32 @WaitForSingleObject(i32 %6, i32 %7)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AdaptersInfoList, align 8
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %5, align 8
  br label %10

10:                                               ; preds = %56, %1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %61

13:                                               ; preds = %10
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @strcmp(i32 %16, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @FAKE_NDISWAN_ADAPTER_NAME, align 4
  %23 = call i64 @strcmp(i32 %21, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @AdaptersInfoMutex, align 4
  %27 = call i32 @ReleaseMutex(i32 %26)
  %28 = load i64, i64* @TRUE, align 8
  store i64 %28, i64* %2, align 8
  br label %74

29:                                               ; preds = %20
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AdaptersInfoList, align 8
  %32 = icmp eq %struct.TYPE_4__* %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** @AdaptersInfoList, align 8
  br label %43

37:                                               ; preds = %29
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %42, align 8
  br label %43

43:                                               ; preds = %37, %33
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = icmp ne %struct.TYPE_4__* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = call i32 @GlobalFreePtr(%struct.TYPE_4__* %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = call i32 @GlobalFreePtr(%struct.TYPE_4__* %54)
  br label %61

56:                                               ; preds = %13
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %5, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  store %struct.TYPE_4__* %60, %struct.TYPE_4__** %4, align 8
  br label %10

61:                                               ; preds = %53, %10
  %62 = load i32, i32* @AdaptersInfoMutex, align 4
  %63 = call i32 @ReleaseMutex(i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = call i64 @AddAdapter(i32 %64, i32 0)
  %66 = load i64, i64* @TRUE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i64, i64* @TRUE, align 8
  store i64 %69, i64* %2, align 8
  br label %74

70:                                               ; preds = %61
  %71 = call i32 (...) @PacketGetAdaptersIPH()
  %72 = call i32 (...) @PacketAddFakeNdisWanAdapter()
  %73 = load i64, i64* @TRUE, align 8
  store i64 %73, i64* %2, align 8
  br label %74

74:                                               ; preds = %70, %68, %25
  %75 = load i64, i64* %2, align 8
  ret i64 %75
}

declare dso_local i32 @WaitForSingleObject(i32, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @ReleaseMutex(i32) #1

declare dso_local i32 @GlobalFreePtr(%struct.TYPE_4__*) #1

declare dso_local i64 @AddAdapter(i32, i32) #1

declare dso_local i32 @PacketGetAdaptersIPH(...) #1

declare dso_local i32 @PacketAddFakeNdisWanAdapter(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
