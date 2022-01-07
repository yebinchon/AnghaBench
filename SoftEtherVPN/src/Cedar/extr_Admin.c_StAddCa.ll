; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StAddCa.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StAddCa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32 }

@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_FARM_CONTROLLER = common dso_local global i32 0, align 4
@ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@ERR_NOT_RSA_1024 = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"no_change_cert_list\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"LA_ADD_CA\00", align 1
@ERR_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StAddCa(%struct.TYPE_17__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %6, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %7, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @ERR_NOT_FARM_CONTROLLER, align 4
  store i32 %21, i32* %3, align 4
  br label %87

22:                                               ; preds = %2
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  store i32 %28, i32* %3, align 4
  br label %87

29:                                               ; preds = %22
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = icmp eq %struct.TYPE_13__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @ERR_INVALID_PARAMETER, align 4
  store i32 %35, i32* %3, align 4
  br label %87

36:                                               ; preds = %29
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @ERR_NOT_RSA_1024, align 4
  store i32 %44, i32* %3, align 4
  br label %87

45:                                               ; preds = %36
  %46 = load i32, i32* @CHECK_RIGHT, align 4
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %48 = call i32 @LockHubList(%struct.TYPE_16__* %47)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32* @GetHub(%struct.TYPE_16__* %49, i32 %52)
  store i32* %53, i32** %8, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %55 = call i32 @UnlockHubList(%struct.TYPE_16__* %54)
  %56 = load i32*, i32** %8, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i32, i32* @ERR_HUB_NOT_FOUND, align 4
  store i32 %59, i32* %3, align 4
  br label %87

60:                                               ; preds = %45
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i32*, i32** %8, align 8
  %67 = call i64 @GetHubAdminOption(i32* %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @ReleaseHub(i32* %70)
  %72 = load i32, i32* @ERR_NOT_ENOUGH_RIGHT, align 4
  store i32 %72, i32* %3, align 4
  br label %87

73:                                               ; preds = %65, %60
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %75 = call i32 @IncrementServerConfigRevision(%struct.TYPE_14__* %74)
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @ALog(%struct.TYPE_17__* %76, i32* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32*, i32** %8, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = call i32 @AddRootCert(i32* %79, %struct.TYPE_13__* %82)
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @ReleaseHub(i32* %84)
  %86 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %73, %69, %58, %43, %34, %27, %20
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @LockHubList(%struct.TYPE_16__*) #1

declare dso_local i32* @GetHub(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @UnlockHubList(%struct.TYPE_16__*) #1

declare dso_local i64 @GetHubAdminOption(i32*, i8*) #1

declare dso_local i32 @ReleaseHub(i32*) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_14__*) #1

declare dso_local i32 @ALog(%struct.TYPE_17__*, i32*, i8*) #1

declare dso_local i32 @AddRootCert(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
