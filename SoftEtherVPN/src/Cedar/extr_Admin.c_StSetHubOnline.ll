; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetHubOnline.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetHubOnline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }

@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_FARM_CONTROLLER = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"no_online\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"no_offline\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"LA_SET_HUB_ONLINE\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"LA_SET_HUB_OFFLINE\00", align 1
@ERR_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StSetHubOnline(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %6, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @ERR_NOT_FARM_CONTROLLER, align 4
  store i32 %21, i32* %3, align 4
  br label %103

22:                                               ; preds = %2
  %23 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %24 = load i32, i32* @CHECK_RIGHT, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @LockHubList(i32* %25)
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_18__* @GetHub(i32* %27, i32 %30)
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %8, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @UnlockHubList(i32* %32)
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %35 = icmp eq %struct.TYPE_18__* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i32, i32* @ERR_HUB_NOT_FOUND, align 4
  store i32 %37, i32* %3, align 4
  br label %103

38:                                               ; preds = %22
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %50 = call i64 @GetHubAdminOption(%struct.TYPE_18__* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %54 = call i32 @ReleaseHub(%struct.TYPE_18__* %53)
  %55 = load i32, i32* @ERR_NOT_ENOUGH_RIGHT, align 4
  store i32 %55, i32* %3, align 4
  br label %103

56:                                               ; preds = %48, %43, %38
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %68 = call i64 @GetHubAdminOption(%struct.TYPE_18__* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %72 = call i32 @ReleaseHub(%struct.TYPE_18__* %71)
  %73 = load i32, i32* @ERR_NOT_ENOUGH_RIGHT, align 4
  store i32 %73, i32* %3, align 4
  br label %103

74:                                               ; preds = %66, %61, %56
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %82 = call i32 @ALog(%struct.TYPE_19__* %80, %struct.TYPE_18__* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %84 = call i32 @SetHubOnline(%struct.TYPE_18__* %83)
  br label %91

85:                                               ; preds = %74
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %88 = call i32 @ALog(%struct.TYPE_19__* %86, %struct.TYPE_18__* %87, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %90 = call i32 @SetHubOffline(%struct.TYPE_18__* %89)
  br label %91

91:                                               ; preds = %85, %79
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %97 = call i32 @SiHubUpdateProc(%struct.TYPE_18__* %96)
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %99 = call i32 @IncrementServerConfigRevision(%struct.TYPE_16__* %98)
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %101 = call i32 @ReleaseHub(%struct.TYPE_18__* %100)
  %102 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %91, %70, %52, %36, %20
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @LockHubList(i32*) #1

declare dso_local %struct.TYPE_18__* @GetHub(i32*, i32) #1

declare dso_local i32 @UnlockHubList(i32*) #1

declare dso_local i64 @GetHubAdminOption(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_18__*) #1

declare dso_local i32 @ALog(%struct.TYPE_19__*, %struct.TYPE_18__*, i8*) #1

declare dso_local i32 @SetHubOnline(%struct.TYPE_18__*) #1

declare dso_local i32 @SetHubOffline(%struct.TYPE_18__*) #1

declare dso_local i32 @SiHubUpdateProc(%struct.TYPE_18__*) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
