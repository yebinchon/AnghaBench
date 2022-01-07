; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetHubLog.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetHubLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }

@CHECK_RIGHT = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"no_change_log_config\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"LA_SET_HUB_LOG\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"no_change_log_switch_type\00", align 1
@ERR_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StSetHubLog(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %6, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load i32, i32* @CHECK_RIGHT, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @LockHubList(i32* %16)
  %18 = load i32*, i32** %7, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_17__* @GetHub(i32* %18, i32 %21)
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %8, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @UnlockHubList(i32* %23)
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %26 = icmp eq %struct.TYPE_17__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @ERR_HUB_NOT_FOUND, align 4
  store i32 %28, i32* %3, align 4
  br label %72

29:                                               ; preds = %2
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %36 = call i64 @GetHubAdminOption(%struct.TYPE_17__* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %40 = call i32 @ReleaseHub(%struct.TYPE_17__* %39)
  %41 = load i32, i32* @ERR_NOT_ENOUGH_RIGHT, align 4
  store i32 %41, i32* %3, align 4
  br label %72

42:                                               ; preds = %34, %29
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %45 = call i32 @ALog(%struct.TYPE_18__* %43, %struct.TYPE_17__* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %55 = call i64 @GetHubAdminOption(%struct.TYPE_17__* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %53, %42
  %58 = phi i1 [ false, %42 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @SetHubLogSettingEx(%struct.TYPE_17__* %46, i32* %48, i32 %59)
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %66 = call i32 @SiHubUpdateProc(%struct.TYPE_17__* %65)
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %68 = call i32 @ReleaseHub(%struct.TYPE_17__* %67)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %70 = call i32 @IncrementServerConfigRevision(%struct.TYPE_15__* %69)
  %71 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %57, %38, %27
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @LockHubList(i32*) #1

declare dso_local %struct.TYPE_17__* @GetHub(i32*, i32) #1

declare dso_local i32 @UnlockHubList(i32*) #1

declare dso_local i64 @GetHubAdminOption(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_17__*) #1

declare dso_local i32 @ALog(%struct.TYPE_18__*, %struct.TYPE_17__*, i8*) #1

declare dso_local i32 @SetHubLogSettingEx(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @SiHubUpdateProc(%struct.TYPE_17__*) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
