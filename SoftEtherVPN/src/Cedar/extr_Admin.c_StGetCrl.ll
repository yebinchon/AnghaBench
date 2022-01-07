; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetCrl.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetCrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32* }
%struct.TYPE_14__ = type { i8*, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i32 0, align 4
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i32 0, align 4
@ERR_OBJECT_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StGetCrl(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
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
  store i8* %25, i8** %11, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %27 = load i32, i32* @CHECK_RIGHT, align 4
  %28 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %106

36:                                               ; preds = %2
  %37 = trunc i64 %24 to i32
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @StrCpy(i8* %26, i32 %37, i8* %40)
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = call i32 @FreeRpcCrl(%struct.TYPE_14__* %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = call i32 @Zero(%struct.TYPE_14__* %47, i32 16)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @StrCpy(i8* %51, i32 8, i8* %26)
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = call %struct.TYPE_15__* @GetHub(i32* %56, i8* %26)
  store %struct.TYPE_15__* %57, %struct.TYPE_15__** %8, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %59 = icmp eq %struct.TYPE_15__* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %36
  %61 = load i32, i32* @ERR_HUB_NOT_FOUND, align 4
  store i32 %61, i32* %9, align 4
  br label %104

62:                                               ; preds = %36
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = icmp eq %struct.TYPE_12__* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  store i32 %68, i32* %9, align 4
  br label %101

69:                                               ; preds = %62
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
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32* @ListKeyToPointer(i32 %80, i32 %83)
  store i32* %84, i32** %14, align 8
  %85 = load i32*, i32** %14, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %69
  %88 = load i32, i32* @ERR_OBJECT_NOT_FOUND, align 4
  store i32 %88, i32* %9, align 4
  br label %94

89:                                               ; preds = %69
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @CopyCrl(i32* %90)
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %89, %87
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @UnlockList(i32 %99)
  br label %101

101:                                              ; preds = %94, %67
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %103 = call i32 @ReleaseHub(%struct.TYPE_15__* %102)
  br label %104

104:                                              ; preds = %101, %60
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %106

106:                                              ; preds = %104, %34
  %107 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @FreeRpcCrl(%struct.TYPE_14__*) #2

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #2

declare dso_local %struct.TYPE_15__* @GetHub(i32*, i8*) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i32* @ListKeyToPointer(i32, i32) #2

declare dso_local i32 @CopyCrl(i32*) #2

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
