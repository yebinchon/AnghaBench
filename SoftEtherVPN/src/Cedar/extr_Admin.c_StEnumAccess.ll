; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumAccess.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumAccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32* }
%struct.TYPE_15__ = type { i8*, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@ERR_HUB_NOT_FOUND = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StEnumAccess(%struct.TYPE_17__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %6, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  %20 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load i32, i32* @CHECK_RIGHT, align 4
  %26 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  store i64 %33, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %119

34:                                               ; preds = %2
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @LockHubList(i32* %35)
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call %struct.TYPE_16__* @GetHub(i32* %37, i8* %40)
  store %struct.TYPE_16__* %41, %struct.TYPE_16__** %8, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @UnlockHubList(i32* %42)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = icmp eq %struct.TYPE_16__* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i64, i64* @ERR_HUB_NOT_FOUND, align 8
  store i64 %47, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %119

48:                                               ; preds = %34
  %49 = trunc i64 %22 to i32
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @StrCpy(i8* %24, i32 %49, i8* %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = call i32 @FreeRpcEnumAccessList(%struct.TYPE_15__* %54)
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = call i32 @Zero(%struct.TYPE_15__* %56, i32 24)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @StrCpy(i8* %60, i32 8, i8* %24)
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @LockList(i32 %64)
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @LIST_NUM(i32 %68)
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = mul i64 4, %74
  %76 = trunc i64 %75 to i32
  %77 = call %struct.TYPE_18__* @ZeroMalloc(i32 %76)
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 2
  store %struct.TYPE_18__* %77, %struct.TYPE_18__** %79, align 8
  store i64 0, i64* %9, align 8
  br label %80

80:                                               ; preds = %108, %48
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @LIST_NUM(i32 %84)
  %86 = icmp ult i64 %81, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %80
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i64 %91
  store %struct.TYPE_18__* %92, %struct.TYPE_18__** %13, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @LIST_DATA(i32 %96, i64 %97)
  %99 = call i32 @Copy(%struct.TYPE_18__* %93, i32 %98, i32 4)
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @LIST_DATA(i32 %102, i64 %103)
  %105 = call i32 @HashPtrToUINT(i32 %104)
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %87
  %109 = load i64, i64* %9, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %9, align 8
  br label %80

111:                                              ; preds = %80
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @UnlockList(i32 %114)
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %117 = call i32 @ReleaseHub(%struct.TYPE_16__* %116)
  %118 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %118, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %119

119:                                              ; preds = %111, %46, %32
  %120 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i64, i64* %3, align 8
  ret i64 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LockHubList(i32*) #2

declare dso_local %struct.TYPE_16__* @GetHub(i32*, i8*) #2

declare dso_local i32 @UnlockHubList(i32*) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @FreeRpcEnumAccessList(%struct.TYPE_15__*) #2

declare dso_local i32 @Zero(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_18__* @ZeroMalloc(i32) #2

declare dso_local i32 @Copy(%struct.TYPE_18__*, i32, i32) #2

declare dso_local i32 @LIST_DATA(i32, i64) #2

declare dso_local i32 @HashPtrToUINT(i32) #2

declare dso_local i32 @UnlockList(i32) #2

declare dso_local i32 @ReleaseHub(%struct.TYPE_16__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
