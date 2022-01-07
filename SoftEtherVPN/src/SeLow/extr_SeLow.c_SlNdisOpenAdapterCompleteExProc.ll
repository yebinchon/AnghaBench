; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/SeLow/extr_SeLow.c_SlNdisOpenAdapterCompleteExProc.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/SeLow/extr_SeLow.c_SlNdisOpenAdapterCompleteExProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32*, %struct.TYPE_16__*, i32, i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }

@SL_ADAPTER_DEVICE_NAME = common dso_local global i32 0, align 4
@SL_ADAPTER_DEVICE_NAME_SYMBOLIC = common dso_local global i32 0, align 4
@OID_GEN_VENDOR_DESCRIPTION = common dso_local global i32 0, align 4
@sl = common dso_local global %struct.TYPE_18__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SlNdisOpenAdapterCompleteExProc(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i64, i64* %3, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %5, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @OK(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %89

22:                                               ; preds = %2
  %23 = load i32, i32* @SL_ADAPTER_DEVICE_NAME, align 4
  %24 = call %struct.TYPE_15__* @SlNewUnicode(i32 %23)
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %8, align 8
  %25 = load i32, i32* @SL_ADAPTER_DEVICE_NAME_SYMBOLIC, align 4
  %26 = call %struct.TYPE_15__* @SlNewUnicode(i32 %25)
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %9, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @SlCopy(i64 %31, i32 %34, i32 184)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 19
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @SlCopy(i64 %40, i32 %43, i32 184)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %47 = call %struct.TYPE_16__* @SlNewDeviceUnicode(%struct.TYPE_15__* %45, %struct.TYPE_15__* %46)
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** %10, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %49 = icmp eq %struct.TYPE_16__* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %22
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %52 = call i32 @SlFreeUnicode(%struct.TYPE_15__* %51)
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %54 = call i32 @SlFreeUnicode(%struct.TYPE_15__* %53)
  br label %59

55:                                               ; preds = %22
  %56 = call i32 (...) @SlNewList()
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %55, %50
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %61 = icmp ne %struct.TYPE_16__* %60, null
  br i1 %61, label %62, label %88

62:                                               ; preds = %59
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %64 = load i32, i32* @OID_GEN_VENDOR_DESCRIPTION, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @SlSendOidRequest(%struct.TYPE_17__* %63, i32 0, i32 %64, i32 %67, i32 3)
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  store %struct.TYPE_17__* %69, %struct.TYPE_17__** %71, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 3
  store %struct.TYPE_16__* %72, %struct.TYPE_16__** %74, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** @sl, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @SlLockList(i32 %77)
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** @sl, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %83 = call i32 @SlAdd(i32 %81, %struct.TYPE_17__* %82)
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** @sl, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @SlUnlockList(i32 %86)
  br label %88

88:                                               ; preds = %62, %59
  br label %94

89:                                               ; preds = %2
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 2
  store i32* null, i32** %91, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %93 = call i32 @SlFreeAdapter(%struct.TYPE_17__* %92)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  br label %94

94:                                               ; preds = %89, %88
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i64, i64* %7, align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @NdisCompleteBindAdapterEx(i64 %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %94
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %103 = icmp ne %struct.TYPE_17__* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  store i32 1, i32* %106, align 4
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load i32, i32* %4, align 4
  %112 = call i64 @NG(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** @sl, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = call i32 @InterlockedDecrement(i32* %116)
  br label %118

118:                                              ; preds = %114, %110
  br label %119

119:                                              ; preds = %118, %107
  ret void
}

declare dso_local i64 @OK(i32) #1

declare dso_local %struct.TYPE_15__* @SlNewUnicode(i32) #1

declare dso_local i32 @SlCopy(i64, i32, i32) #1

declare dso_local %struct.TYPE_16__* @SlNewDeviceUnicode(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @SlFreeUnicode(%struct.TYPE_15__*) #1

declare dso_local i32 @SlNewList(...) #1

declare dso_local i32 @SlSendOidRequest(%struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local i32 @SlLockList(i32) #1

declare dso_local i32 @SlAdd(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @SlUnlockList(i32) #1

declare dso_local i32 @SlFreeAdapter(%struct.TYPE_17__*) #1

declare dso_local i32 @NdisCompleteBindAdapterEx(i64, i32) #1

declare dso_local i64 @NG(i32) #1

declare dso_local i32 @InterlockedDecrement(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
