; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnableSecureNAT.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnableSecureNAT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32 }

@CHECK_RIGHT = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i32 0, align 4
@HUB_TYPE_FARM_STATIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"b_support_securenat\00", align 1
@ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_FARM_CONTROLLER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"no_securenat\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"LA_ENABLE_SNAT\00", align 1
@ERR_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StEnableSecureNAT(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1) #0 {
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
  %15 = load i32, i32* @CHECK_RIGHT, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @LockHubList(i32* %16)
  %18 = load i32*, i32** %7, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_18__* @GetHub(i32* %18, i32 %21)
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %8, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @UnlockHubList(i32* %23)
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %26 = icmp eq %struct.TYPE_18__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @ERR_HUB_NOT_FOUND, align 4
  store i32 %28, i32* %3, align 4
  br label %83

29:                                               ; preds = %2
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @HUB_TYPE_FARM_STATIC, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = call i32 @GetServerCapsBool(%struct.TYPE_16__* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35, %29
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %41 = call i32 @ReleaseHub(%struct.TYPE_18__* %40)
  %42 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  store i32 %42, i32* %3, align 4
  br label %83

43:                                               ; preds = %35
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %51 = call i32 @ReleaseHub(%struct.TYPE_18__* %50)
  %52 = load i32, i32* @ERR_NOT_FARM_CONTROLLER, align 4
  store i32 %52, i32* %3, align 4
  br label %83

53:                                               ; preds = %43
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %60 = call i64 @GetHubAdminOption(%struct.TYPE_18__* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %64 = call i32 @ReleaseHub(%struct.TYPE_18__* %63)
  %65 = load i32, i32* @ERR_NOT_ENOUGH_RIGHT, align 4
  store i32 %65, i32* %3, align 4
  br label %83

66:                                               ; preds = %58, %53
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %69 = call i32 @ALog(%struct.TYPE_19__* %67, %struct.TYPE_18__* %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %71 = call i32 @EnableSecureNAT(%struct.TYPE_18__* %70, i32 1)
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %77 = call i32 @SiHubUpdateProc(%struct.TYPE_18__* %76)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = call i32 @IncrementServerConfigRevision(%struct.TYPE_16__* %78)
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %81 = call i32 @ReleaseHub(%struct.TYPE_18__* %80)
  %82 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %66, %62, %49, %39, %27
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @LockHubList(i32*) #1

declare dso_local %struct.TYPE_18__* @GetHub(i32*, i32) #1

declare dso_local i32 @UnlockHubList(i32*) #1

declare dso_local i32 @GetServerCapsBool(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_18__*) #1

declare dso_local i64 @GetHubAdminOption(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @ALog(%struct.TYPE_19__*, %struct.TYPE_18__*, i8*) #1

declare dso_local i32 @EnableSecureNAT(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @SiHubUpdateProc(%struct.TYPE_18__*) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
