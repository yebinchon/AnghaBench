; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CtDisableVLan.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CtDisableVLan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }

@ERR_OBJECT_NOT_FOUND = common dso_local global i32 0, align 4
@ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ERR_VLAN_INSTALL_ERROR = common dso_local global i32 0, align 4
@ERR_VLAN_IS_USED = common dso_local global i32 0, align 4
@MAX_SIZE = common dso_local global i32 0, align 4
@OSTYPE_MACOS_X = common dso_local global i64 0, align 8
@VLAN_ADAPTER_NAME_TAG = common dso_local global i32 0, align 4
@VLAN_ADAPTER_NAME_TAG_OLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CtDisableVLan(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %12 = icmp eq %struct.TYPE_21__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %15 = icmp eq %struct.TYPE_20__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %107

17:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @LockList(i32 %20)
  store i64 0, i64* %6, align 8
  br label %22

22:                                               ; preds = %61, %17
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @LIST_NUM(i32 %26)
  %28 = icmp slt i64 %23, %27
  br i1 %28, label %29, label %64

29:                                               ; preds = %22
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call %struct.TYPE_22__* @LIST_DATA(i32 %32, i64 %33)
  store %struct.TYPE_22__* %34, %struct.TYPE_22__** %8, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @StrCmpi(i32 %39, i32 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %29
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @Lock(i32 %48)
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 1, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %45
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @Unlock(i32 %58)
  br label %60

60:                                               ; preds = %55, %29
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %6, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %6, align 8
  br label %22

64:                                               ; preds = %22
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @UnlockList(i32 %67)
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @LockList(i32 %71)
  %73 = call i32 @Zero(%struct.TYPE_19__* %10, i32 8)
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @StrCpy(i32 %75, i32 4, i32 %78)
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.TYPE_19__* @Search(i32 %82, %struct.TYPE_19__* %10)
  store %struct.TYPE_19__* %83, %struct.TYPE_19__** %9, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %85 = icmp eq %struct.TYPE_19__* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %64
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @UnlockList(i32 %89)
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %92 = load i32, i32* @ERR_OBJECT_NOT_FOUND, align 4
  %93 = call i32 @CiSetError(%struct.TYPE_21__* %91, i32 %92)
  store i32 0, i32* %3, align 4
  br label %107

94:                                               ; preds = %64
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  store i32 0, i32* %96, align 4
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @UnlockList(i32 %99)
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %102 = call i32 @CiSaveConfigurationFile(%struct.TYPE_21__* %101)
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %104 = call i32 @CiNotify(%struct.TYPE_21__* %103)
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %106 = call i32 @CiSendGlobalPulse(%struct.TYPE_21__* %105)
  store i32 1, i32* %3, align 4
  br label %107

107:                                              ; preds = %94, %86, %16
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_22__* @LIST_DATA(i32, i64) #1

declare dso_local i64 @StrCmpi(i32, i32) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @Zero(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_19__* @Search(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @CiSetError(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @CiSaveConfigurationFile(%struct.TYPE_21__*) #1

declare dso_local i32 @CiNotify(%struct.TYPE_21__*) #1

declare dso_local i32 @CiSendGlobalPulse(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
