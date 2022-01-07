; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/SeLow/extr_SeLow.c_SlDeviceCloseProc.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/SeLow/extr_SeLow.c_SlDeviceCloseProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_24__*, i32, i32, i64 }
%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32, i32, %struct.TYPE_19__*, %struct.TYPE_19__*, i32 }

@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@OID_GEN_CURRENT_PACKET_FILTER = common dso_local global i32 0, align 4
@IO_NO_INCREMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SlDeviceCloseProc(%struct.TYPE_23__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_20__**
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %5, align 8
  %18 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %20 = call %struct.TYPE_22__* @IoGetCurrentIrpStackLocation(%struct.TYPE_21__* %19)
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %7, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %26, i32* %6, align 4
  br label %134

27:                                               ; preds = %2
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %8, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %34 = icmp ne %struct.TYPE_19__* %33, null
  br i1 %34, label %35, label %133

35:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %35, %42
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %44

42:                                               ; preds = %36
  %43 = call i32 @SlSleep(i32 50)
  br label %36

44:                                               ; preds = %41
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @SlLock(i32 %47)
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @SlLockList(i32 %51)
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %57 = call i32 @SlDelete(i32 %55, %struct.TYPE_19__* %56)
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @SL_LIST_NUM(i32 %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %44
  store i32 1, i32* %9, align 4
  br label %64

64:                                               ; preds = %63, %44
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @SlUnlockList(i32 %67)
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %75, %64
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 0
  %84 = call i32 @InterlockedIncrement(i32* %83)
  br label %85

85:                                               ; preds = %79, %76
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @SlUnlock(i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %85
  store i32 0, i32* %10, align 4
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %94, align 8
  %96 = load i32, i32* @OID_GEN_CURRENT_PACKET_FILTER, align 4
  %97 = call i32 @SlSendOidRequest(%struct.TYPE_24__* %95, i32 1, i32 %96, i32* %10, i32 4)
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 0
  %102 = call i32 @InterlockedDecrement(i32* %101)
  br label %103

103:                                              ; preds = %92, %85
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @SlFreeEvent(i32 %106)
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 4
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %109, align 8
  store %struct.TYPE_19__* %110, %struct.TYPE_19__** %11, align 8
  br label %111

111:                                              ; preds = %114, %103
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %113 = icmp ne %struct.TYPE_19__* %112, null
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %116, align 8
  store %struct.TYPE_19__* %117, %struct.TYPE_19__** %12, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %119 = call i32 @SlFree(%struct.TYPE_19__* %118)
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %120, %struct.TYPE_19__** %11, align 8
  br label %111

121:                                              ; preds = %111
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @NdisFreeNetBufferListPool(i32 %124)
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @SlFreeLock(i32 %128)
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %131 = call i32 @SlFree(%struct.TYPE_19__* %130)
  %132 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %121, %27
  br label %134

134:                                              ; preds = %133, %25
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 4
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %140 = load i32, i32* @IO_NO_INCREMENT, align 4
  %141 = call i32 @IoCompleteRequest(%struct.TYPE_21__* %139, i32 %140)
  %142 = load i32, i32* %6, align 4
  ret i32 %142
}

declare dso_local %struct.TYPE_22__* @IoGetCurrentIrpStackLocation(%struct.TYPE_21__*) #1

declare dso_local i32 @SlSleep(i32) #1

declare dso_local i32 @SlLock(i32) #1

declare dso_local i32 @SlLockList(i32) #1

declare dso_local i32 @SlDelete(i32, %struct.TYPE_19__*) #1

declare dso_local i64 @SL_LIST_NUM(i32) #1

declare dso_local i32 @SlUnlockList(i32) #1

declare dso_local i32 @InterlockedIncrement(i32*) #1

declare dso_local i32 @SlUnlock(i32) #1

declare dso_local i32 @SlSendOidRequest(%struct.TYPE_24__*, i32, i32, i32*, i32) #1

declare dso_local i32 @InterlockedDecrement(i32*) #1

declare dso_local i32 @SlFreeEvent(i32) #1

declare dso_local i32 @SlFree(%struct.TYPE_19__*) #1

declare dso_local i32 @NdisFreeNetBufferListPool(i32) #1

declare dso_local i32 @SlFreeLock(i32) #1

declare dso_local i32 @IoCompleteRequest(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
