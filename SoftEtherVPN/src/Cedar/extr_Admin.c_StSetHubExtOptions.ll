; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetHubExtOptions.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetHubExtOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32* }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }

@MAX_HUB_ADMIN_OPTIONS = common dso_local global i64 0, align 8
@ERR_TOO_MANT_ITEMS = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"deny_hub_admin_change_ext_option\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"LA_SET_HUB_EXT_OPTION\00", align 1
@ERR_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StSetHubExtOptions(%struct.TYPE_17__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %6, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MAX_HUB_ADMIN_OPTIONS, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @ERR_TOO_MANT_ITEMS, align 4
  store i32 %22, i32* %3, align 4
  br label %93

23:                                               ; preds = %2
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  store i32 %30, i32* %3, align 4
  br label %93

31:                                               ; preds = %23
  %32 = load i32, i32* @CHECK_RIGHT, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* %9, align 4
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @LockHubList(i32* %39)
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.TYPE_16__* @GetHub(i32* %41, i32 %44)
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %8, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @UnlockHubList(i32* %46)
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %49 = icmp eq %struct.TYPE_16__* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* @ERR_HUB_NOT_FOUND, align 4
  store i32 %51, i32* %3, align 4
  br label %93

52:                                               ; preds = %38
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %54 = call i64 @GetHubAdminOption(%struct.TYPE_16__* %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %61 = call i32 @ReleaseHub(%struct.TYPE_16__* %60)
  %62 = load i32, i32* @ERR_NOT_ENOUGH_RIGHT, align 4
  store i32 %62, i32* %3, align 4
  br label %93

63:                                               ; preds = %56, %52
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @Lock(i32 %66)
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = call i32 @DataToHubOptionStruct(i32 %70, %struct.TYPE_15__* %71)
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @Unlock(i32 %75)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ALog(%struct.TYPE_17__* %77, i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %87 = call i32 @SiHubUpdateProc(%struct.TYPE_16__* %86)
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %89 = call i32 @ReleaseHub(%struct.TYPE_16__* %88)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = call i32 @IncrementServerConfigRevision(%struct.TYPE_14__* %90)
  %92 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %63, %59, %50, %29, %21
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @LockHubList(i32*) #1

declare dso_local %struct.TYPE_16__* @GetHub(i32*, i32) #1

declare dso_local i32 @UnlockHubList(i32*) #1

declare dso_local i64 @GetHubAdminOption(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_16__*) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @DataToHubOptionStruct(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @ALog(%struct.TYPE_17__*, i32*, i8*, i32) #1

declare dso_local i32 @SiHubUpdateProc(%struct.TYPE_16__*) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
