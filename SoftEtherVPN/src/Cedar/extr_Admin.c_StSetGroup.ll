; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetGroup.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i8*, i8* }

@ERR_NO_ERROR = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"no_change_groups\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i32 0, align 4
@ERR_OBJECT_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"LA_SET_GROUP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StSetGroup(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %6, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %17 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @IsEmptyStr(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @IsSafeStr(i32 %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %2
  %30 = load i32, i32* @ERR_INVALID_PARAMETER, align 4
  store i32 %30, i32* %3, align 4
  br label %130

31:                                               ; preds = %23
  %32 = load i32, i32* @CHECK_RIGHT, align 4
  %33 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  store i32 %40, i32* %3, align 4
  br label %130

41:                                               ; preds = %31
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @LockHubList(i32* %42)
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @GetHub(i32* %44, i32 %47)
  store i32* %48, i32** %8, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @UnlockHubList(i32* %49)
  %51 = load i32*, i32** %8, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* @ERR_HUB_NOT_FOUND, align 4
  store i32 %54, i32* %3, align 4
  br label %130

55:                                               ; preds = %41
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load i32*, i32** %8, align 8
  %62 = call i64 @GetHubAdminOption(i32* %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @ReleaseHub(i32* %65)
  %67 = load i32, i32* @ERR_NOT_ENOUGH_RIGHT, align 4
  store i32 %67, i32* %3, align 4
  br label %130

68:                                               ; preds = %60, %55
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @AcLock(i32* %69)
  %71 = load i32*, i32** %8, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.TYPE_12__* @AcGetGroup(i32* %71, i32 %74)
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** %10, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %77 = icmp eq %struct.TYPE_12__* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* @ERR_OBJECT_NOT_FOUND, align 4
  store i32 %79, i32* %9, align 4
  br label %122

80:                                               ; preds = %68
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @Lock(i32 %83)
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @Free(i8* %87)
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @Free(i8* %91)
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @UniCopyStr(i32 %95)
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @UniCopyStr(i32 %101)
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @Unlock(i32 %107)
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @SetGroupPolicy(%struct.TYPE_12__* %109, i32 %112)
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %115 = call i32 @ReleaseGroup(%struct.TYPE_12__* %114)
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ALog(%struct.TYPE_15__* %116, i32* %117, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %80, %78
  %123 = load i32*, i32** %8, align 8
  %124 = call i32 @AcUnlock(i32* %123)
  %125 = load i32*, i32** %8, align 8
  %126 = call i32 @ReleaseHub(i32* %125)
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %128 = call i32 @IncrementServerConfigRevision(%struct.TYPE_13__* %127)
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %122, %64, %53, %39, %29
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i64 @IsEmptyStr(i32) #1

declare dso_local i32 @IsSafeStr(i32) #1

declare dso_local i32 @LockHubList(i32*) #1

declare dso_local i32* @GetHub(i32*, i32) #1

declare dso_local i32 @UnlockHubList(i32*) #1

declare dso_local i64 @GetHubAdminOption(i32*, i8*) #1

declare dso_local i32 @ReleaseHub(i32*) #1

declare dso_local i32 @AcLock(i32*) #1

declare dso_local %struct.TYPE_12__* @AcGetGroup(i32*, i32) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i8* @UniCopyStr(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @SetGroupPolicy(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ReleaseGroup(%struct.TYPE_12__*) #1

declare dso_local i32 @ALog(%struct.TYPE_15__*, i32*, i8*, i32) #1

declare dso_local i32 @AcUnlock(i32*) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
