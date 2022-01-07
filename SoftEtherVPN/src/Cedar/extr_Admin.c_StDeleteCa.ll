; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StDeleteCa.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StDeleteCa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_FARM_CONTROLLER = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"no_change_cert_list\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"LA_DELETE_CA\00", align 1
@ERR_OBJECT_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StDeleteCa(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %6, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @ERR_NOT_FARM_CONTROLLER, align 4
  store i32 %24, i32* %3, align 4
  br label %107

25:                                               ; preds = %2
  %26 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %27 = load i32, i32* @CHECK_RIGHT, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @LockHubList(i32* %28)
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_17__* @GetHub(i32* %30, i32 %33)
  store %struct.TYPE_17__* %34, %struct.TYPE_17__** %8, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @UnlockHubList(i32* %35)
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %38 = icmp eq %struct.TYPE_17__* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* @ERR_HUB_NOT_FOUND, align 4
  store i32 %40, i32* %3, align 4
  br label %107

41:                                               ; preds = %25
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %48 = call i64 @GetHubAdminOption(%struct.TYPE_17__* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %52 = call i32 @ReleaseHub(%struct.TYPE_17__* %51)
  %53 = load i32, i32* @ERR_NOT_ENOUGH_RIGHT, align 4
  store i32 %53, i32* %3, align 4
  br label %107

54:                                               ; preds = %46, %41
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @LockList(i32 %59)
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @IsInListKey(i32 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %54
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32* @ListKeyToPointer(i32 %76, i32 %79)
  store i32* %80, i32** %10, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @Delete(i32 %85, i32* %86)
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @FreeX(i32* %88)
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %92 = call i32 @ALog(%struct.TYPE_18__* %90, %struct.TYPE_17__* %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %94 = call i32 @IncrementServerConfigRevision(%struct.TYPE_15__* %93)
  br label %97

95:                                               ; preds = %54
  %96 = load i32, i32* @ERR_OBJECT_NOT_FOUND, align 4
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %95, %71
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @UnlockList(i32 %102)
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %105 = call i32 @ReleaseHub(%struct.TYPE_17__* %104)
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %97, %50, %39, %23
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @LockHubList(i32*) #1

declare dso_local %struct.TYPE_17__* @GetHub(i32*, i32) #1

declare dso_local i32 @UnlockHubList(i32*) #1

declare dso_local i64 @GetHubAdminOption(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_17__*) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @IsInListKey(i32, i32) #1

declare dso_local i32* @ListKeyToPointer(i32, i32) #1

declare dso_local i32 @Delete(i32, i32*) #1

declare dso_local i32 @FreeX(i32*) #1

declare dso_local i32 @ALog(%struct.TYPE_18__*, %struct.TYPE_17__*, i8*) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_15__*) #1

declare dso_local i32 @UnlockList(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
