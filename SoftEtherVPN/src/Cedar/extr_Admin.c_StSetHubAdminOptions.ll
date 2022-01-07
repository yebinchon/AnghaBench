; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetHubAdminOptions.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetHubAdminOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i32* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }

@MAX_HUB_ADMIN_OPTIONS = common dso_local global i64 0, align 8
@ERR_TOO_MANT_ITEMS = common dso_local global i64 0, align 8
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@CHECK_RIGHT = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"allow_hub_admin_change_option\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"LA_SET_HUB_ADMIN_OPTION\00", align 1
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StSetHubAdminOptions(%struct.TYPE_22__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %7, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MAX_HUB_ADMIN_OPTIONS, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i64, i64* @ERR_TOO_MANT_ITEMS, align 8
  store i64 %25, i64* %3, align 8
  br label %130

26:                                               ; preds = %2
  %27 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  store i64 %34, i64* %3, align 8
  br label %130

35:                                               ; preds = %26
  %36 = load i32, i32* @CHECK_RIGHT, align 4
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 1, i32* %10, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @LockHubList(i32* %43)
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_20__* @GetHub(i32* %45, i32 %48)
  store %struct.TYPE_20__* %49, %struct.TYPE_20__** %9, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @UnlockHubList(i32* %50)
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %53 = icmp eq %struct.TYPE_20__* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i64, i64* @ERR_HUB_NOT_FOUND, align 8
  store i64 %55, i64* %3, align 8
  br label %130

56:                                               ; preds = %42
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %58 = call i32 @GetHubAdminOption(%struct.TYPE_20__* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %65 = call i32 @ReleaseHub(%struct.TYPE_20__* %64)
  %66 = load i64, i64* @ERR_NOT_ENOUGH_RIGHT, align 8
  store i64 %66, i64* %3, align 8
  br label %130

67:                                               ; preds = %60, %56
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @LockList(i32 %70)
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %73 = call i32 @DeleteAllHubAdminOption(%struct.TYPE_20__* %72, i32 0)
  store i64 0, i64* %6, align 8
  br label %74

74:                                               ; preds = %104, %67
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %75, %78
  br i1 %79, label %80, label %107

80:                                               ; preds = %74
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i64 %84
  store %struct.TYPE_21__* %85, %struct.TYPE_21__** %11, align 8
  %86 = call %struct.TYPE_21__* @ZeroMalloc(i32 8)
  store %struct.TYPE_21__* %86, %struct.TYPE_21__** %12, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @StrCpy(i32 %89, i32 4, i32 %92)
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %103 = call i32 @Insert(i32 %101, %struct.TYPE_21__* %102)
  br label %104

104:                                              ; preds = %80
  %105 = load i64, i64* %6, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %6, align 8
  br label %74

107:                                              ; preds = %74
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %109 = call i32 @AddHubAdminOptionsDefaults(%struct.TYPE_20__* %108, i32 0)
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @UnlockList(i32 %112)
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ALog(%struct.TYPE_22__* %114, i32* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %124 = call i32 @SiHubUpdateProc(%struct.TYPE_20__* %123)
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %126 = call i32 @ReleaseHub(%struct.TYPE_20__* %125)
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %128 = call i32 @IncrementServerConfigRevision(%struct.TYPE_18__* %127)
  %129 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %129, i64* %3, align 8
  br label %130

130:                                              ; preds = %107, %63, %54, %33, %24
  %131 = load i64, i64* %3, align 8
  ret i64 %131
}

declare dso_local i32 @LockHubList(i32*) #1

declare dso_local %struct.TYPE_20__* @GetHub(i32*, i32) #1

declare dso_local i32 @UnlockHubList(i32*) #1

declare dso_local i32 @GetHubAdminOption(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_20__*) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i32 @DeleteAllHubAdminOption(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_21__* @ZeroMalloc(i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @Insert(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @AddHubAdminOptionsDefaults(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @ALog(%struct.TYPE_22__*, i32*, i8*, i32) #1

declare dso_local i32 @SiHubUpdateProc(%struct.TYPE_20__*) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
