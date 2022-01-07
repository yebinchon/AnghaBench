; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetCa.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetCa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32* }
%struct.TYPE_14__ = type { i8*, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i32 0, align 4
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_FARM_CONTROLLER = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i32 0, align 4
@ERR_OBJECT_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StGetCa(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %6, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  %21 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %10, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @ERR_NOT_FARM_CONTROLLER, align 4
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %108

34:                                               ; preds = %2
  %35 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %36 = trunc i64 %24 to i32
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @StrCpy(i8* %26, i32 %36, i8* %39)
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %12, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = call i32 @FreeRpcHubGetCa(%struct.TYPE_14__* %44)
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = call i32 @Zero(%struct.TYPE_14__* %46, i32 16)
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @StrCpy(i8* %53, i32 8, i8* %26)
  %55 = load i32, i32* @CHECK_RIGHT, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @LockHubList(i32* %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call %struct.TYPE_15__* @GetHub(i32* %58, i8* %61)
  store %struct.TYPE_15__* %62, %struct.TYPE_15__** %8, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @UnlockHubList(i32* %63)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %66 = icmp eq %struct.TYPE_15__* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %34
  %68 = load i32, i32* @ERR_HUB_NOT_FOUND, align 4
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %108

69:                                               ; preds = %34
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @LockList(i32 %74)
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i64 @IsInListKey(i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %69
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32* @ListKeyToPointer(i32 %89, i32 %90)
  store i32* %91, i32** %14, align 8
  %92 = load i32*, i32** %14, align 8
  %93 = call i32 @CloneX(i32* %92)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  br label %98

96:                                               ; preds = %69
  %97 = load i32, i32* @ERR_OBJECT_NOT_FOUND, align 4
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %96, %84
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @UnlockList(i32 %103)
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %106 = call i32 @ReleaseHub(%struct.TYPE_15__* %105)
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %108

108:                                              ; preds = %98, %67, %32
  %109 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @FreeRpcHubGetCa(%struct.TYPE_14__*) #2

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @LockHubList(i32*) #2

declare dso_local %struct.TYPE_15__* @GetHub(i32*, i8*) #2

declare dso_local i32 @UnlockHubList(i32*) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i64 @IsInListKey(i32, i32) #2

declare dso_local i32* @ListKeyToPointer(i32, i32) #2

declare dso_local i32 @CloneX(i32*) #2

declare dso_local i32 @UnlockList(i32) #2

declare dso_local i32 @ReleaseHub(%struct.TYPE_15__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
