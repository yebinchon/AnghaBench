; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetHubRadius.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetHubRadius.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@GSF_DISABLE_RADIUS_AUTH = common dso_local global i32 0, align 4
@ERR_NOT_SUPPORTED_FUNCTION_ON_OPENSOURCE = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"LA_SET_HUB_RADIUS\00", align 1
@ERR_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StSetHubRadius(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %6, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %15 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  store i32 %22, i32* %3, align 4
  br label %73

23:                                               ; preds = %2
  %24 = load i32, i32* @GSF_DISABLE_RADIUS_AUTH, align 4
  %25 = call i64 @GetGlobalServerFlag(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @IsEmptyStr(i32 %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @ERR_NOT_SUPPORTED_FUNCTION_ON_OPENSOURCE, align 4
  store i32 %34, i32* %3, align 4
  br label %73

35:                                               ; preds = %27, %23
  %36 = load i32, i32* @CHECK_RIGHT, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @LockHubList(i32* %37)
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32* @GetHub(i32* %39, i32 %42)
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @UnlockHubList(i32* %44)
  %46 = load i32*, i32** %8, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load i32, i32* @ERR_HUB_NOT_FOUND, align 4
  store i32 %49, i32* %3, align 4
  br label %73

50:                                               ; preds = %35
  %51 = load i32*, i32** %8, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @SetRadiusServerEx(i32* %51, i32 %54, i32 %57, i32 %60, i32 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @ALog(%struct.TYPE_10__* %65, i32* %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @ReleaseHub(i32* %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %71 = call i32 @IncrementServerConfigRevision(%struct.TYPE_8__* %70)
  %72 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %50, %48, %33, %21
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @GetGlobalServerFlag(i32) #1

declare dso_local i32 @IsEmptyStr(i32) #1

declare dso_local i32 @LockHubList(i32*) #1

declare dso_local i32* @GetHub(i32*, i32) #1

declare dso_local i32 @UnlockHubList(i32*) #1

declare dso_local i32 @SetRadiusServerEx(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ALog(%struct.TYPE_10__*, i32*, i8*) #1

declare dso_local i32 @ReleaseHub(i32*) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
