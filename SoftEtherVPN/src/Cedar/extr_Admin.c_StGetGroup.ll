; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetGroup.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32* }
%struct.TYPE_14__ = type { i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i8*, i32, i32, i32, i32 }

@ERR_NO_ERROR = common dso_local global i32 0, align 4
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i32 0, align 4
@ERR_OBJECT_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StGetGroup(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %6, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %20 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %10, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @IsEmptyStr(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %2
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @IsSafeStr(i8* %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31, %2
  %38 = load i32, i32* @ERR_INVALID_PARAMETER, align 4
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %136

39:                                               ; preds = %31
  %40 = load i32, i32* @CHECK_RIGHT, align 4
  %41 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %136

49:                                               ; preds = %39
  %50 = trunc i64 %23 to i32
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @StrCpy(i8* %25, i32 %50, i8* %53)
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @LockHubList(i32* %55)
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32* @GetHub(i32* %57, i8* %60)
  store i32* %61, i32** %8, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @UnlockHubList(i32* %62)
  %64 = load i32*, i32** %8, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %49
  %67 = load i32, i32* @ERR_HUB_NOT_FOUND, align 4
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %136

68:                                               ; preds = %49
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @AcLock(i32* %69)
  %71 = load i32*, i32** %8, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call %struct.TYPE_12__* @AcGetGroup(i32* %71, i8* %74)
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** %13, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %77 = icmp eq %struct.TYPE_12__* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* @ERR_OBJECT_NOT_FOUND, align 4
  store i32 %79, i32* %9, align 4
  br label %130

80:                                               ; preds = %68
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %82 = call i32 @FreeRpcSetGroup(%struct.TYPE_14__* %81)
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %84 = call i32 @Zero(%struct.TYPE_14__* %83, i32 32)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @StrCpy(i8* %87, i32 8, i8* %25)
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @Lock(i32 %91)
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @StrCpy(i8* %95, i32 8, i8* %98)
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @UniStrCpy(i32 %102, i32 4, i32 %105)
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @UniStrCpy(i32 %109, i32 4, i32 %112)
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @Copy(i32* %115, i32 %118, i32 4)
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @Unlock(i32 %122)
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %125 = call i32 @GetGroupPolicy(%struct.TYPE_12__* %124)
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %129 = call i32 @ReleaseGroup(%struct.TYPE_12__* %128)
  br label %130

130:                                              ; preds = %80, %78
  %131 = load i32*, i32** %8, align 8
  %132 = call i32 @AcUnlock(i32* %131)
  %133 = load i32*, i32** %8, align 8
  %134 = call i32 @ReleaseHub(i32* %133)
  %135 = load i32, i32* %9, align 4
  store i32 %135, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %136

136:                                              ; preds = %130, %66, %47, %37
  %137 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IsEmptyStr(i8*) #2

declare dso_local i32 @IsSafeStr(i8*) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @LockHubList(i32*) #2

declare dso_local i32* @GetHub(i32*, i8*) #2

declare dso_local i32 @UnlockHubList(i32*) #2

declare dso_local i32 @AcLock(i32*) #2

declare dso_local %struct.TYPE_12__* @AcGetGroup(i32*, i8*) #2

declare dso_local i32 @FreeRpcSetGroup(%struct.TYPE_14__*) #2

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @Lock(i32) #2

declare dso_local i32 @UniStrCpy(i32, i32, i32) #2

declare dso_local i32 @Copy(i32*, i32, i32) #2

declare dso_local i32 @Unlock(i32) #2

declare dso_local i32 @GetGroupPolicy(%struct.TYPE_12__*) #2

declare dso_local i32 @ReleaseGroup(%struct.TYPE_12__*) #2

declare dso_local i32 @AcUnlock(i32*) #2

declare dso_local i32 @ReleaseHub(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
