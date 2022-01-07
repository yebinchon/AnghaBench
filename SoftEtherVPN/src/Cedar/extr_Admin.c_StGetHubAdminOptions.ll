; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetHubAdminOptions.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetHubAdminOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@CHECK_RIGHT = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@ERR_HUB_NOT_FOUND = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StGetHubAdminOptions(%struct.TYPE_18__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %7, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load i32, i32* @CHECK_RIGHT, align 4
  %19 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  store i64 %26, i64* %3, align 8
  br label %121

27:                                               ; preds = %2
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @LockHubList(i32* %28)
  %30 = load i32*, i32** %8, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.TYPE_16__* @GetHub(i32* %30, i32 %33)
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %9, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @UnlockHubList(i32* %35)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %38 = icmp eq %struct.TYPE_16__* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i64, i64* @ERR_HUB_NOT_FOUND, align 8
  store i64 %40, i64* %3, align 8
  br label %121

41:                                               ; preds = %27
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = call i32 @FreeRpcAdminOption(%struct.TYPE_15__* %42)
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %45 = call i32 @Zero(%struct.TYPE_15__* %44, i32 24)
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @StrCpy(i32 %48, i32 4, i32 %51)
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @LockList(i32 %55)
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @LIST_NUM(i32 %59)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = mul i64 12, %66
  %68 = trunc i64 %67 to i32
  %69 = call %struct.TYPE_17__* @ZeroMalloc(i32 %68)
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  store %struct.TYPE_17__* %69, %struct.TYPE_17__** %71, align 8
  store i64 0, i64* %6, align 8
  br label %72

72:                                               ; preds = %110, %41
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = icmp ult i64 %73, %77
  br i1 %78, label %79, label %113

79:                                               ; preds = %72
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %6, align 8
  %84 = call %struct.TYPE_17__* @LIST_DATA(i32 %82, i64 %83)
  store %struct.TYPE_17__* %84, %struct.TYPE_17__** %10, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i64 %88
  store %struct.TYPE_17__* %89, %struct.TYPE_17__** %11, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @StrCpy(i32 %92, i32 4, i32 %95)
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @GetHubAdminOptionHelpString(i32 %107)
  %109 = call i32 @UniStrCpy(i32 %104, i32 4, i32 %108)
  br label %110

110:                                              ; preds = %79
  %111 = load i64, i64* %6, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %6, align 8
  br label %72

113:                                              ; preds = %72
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @UnlockList(i32 %116)
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %119 = call i32 @ReleaseHub(%struct.TYPE_16__* %118)
  %120 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %120, i64* %3, align 8
  br label %121

121:                                              ; preds = %113, %39, %25
  %122 = load i64, i64* %3, align 8
  ret i64 %122
}

declare dso_local i32 @LockHubList(i32*) #1

declare dso_local %struct.TYPE_16__* @GetHub(i32*, i32) #1

declare dso_local i32 @UnlockHubList(i32*) #1

declare dso_local i32 @FreeRpcAdminOption(%struct.TYPE_15__*) #1

declare dso_local i32 @Zero(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i32 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_17__* @ZeroMalloc(i32) #1

declare dso_local %struct.TYPE_17__* @LIST_DATA(i32, i64) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @GetHubAdminOptionHelpString(i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
