; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetUser.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetUser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32* }
%struct.TYPE_13__ = type { i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i8*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ERR_NO_ERROR = common dso_local global i32 0, align 4
@MAX_USERNAME_LEN = common dso_local global i32 0, align 4
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i32 0, align 4
@ERR_OBJECT_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StGetUser(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %6, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %22 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %22, i32* %9, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  store i32* null, i32** %11, align 8
  %23 = load i32, i32* @MAX_USERNAME_LEN, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %12, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %28 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %14, align 8
  %32 = trunc i64 %25 to i32
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @StrCpy(i8* %27, i32 %32, i8* %35)
  %37 = trunc i64 %30 to i32
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @StrCpy(i8* %31, i32 %37, i8* %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @IsEmptyStr(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %2
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @IsUserName(i8* %50)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47, %2
  %54 = load i32, i32* @ERR_INVALID_PARAMETER, align 4
  store i32 %54, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %187

55:                                               ; preds = %47
  %56 = load i32, i32* @CHECK_RIGHT, align 4
  %57 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %187

65:                                               ; preds = %55
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %67 = call i32 @FreeRpcSetUser(%struct.TYPE_13__* %66)
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = call i32 @Zero(%struct.TYPE_13__* %68, i32 64)
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @StrCpy(i8* %72, i32 8, i8* %31)
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @StrCpy(i8* %76, i32 8, i8* %27)
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @LockHubList(i32* %78)
  %80 = load i32*, i32** %7, align 8
  %81 = call i32* @GetHub(i32* %80, i8* %31)
  store i32* %81, i32** %8, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @UnlockHubList(i32* %82)
  %84 = load i32*, i32** %8, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %65
  %87 = load i32, i32* @ERR_HUB_NOT_FOUND, align 4
  store i32 %87, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %187

88:                                               ; preds = %65
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @AcLock(i32* %89)
  %91 = load i32*, i32** %8, align 8
  %92 = call %struct.TYPE_11__* @AcGetUser(i32* %91, i8* %27)
  store %struct.TYPE_11__* %92, %struct.TYPE_11__** %10, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %94 = icmp eq %struct.TYPE_11__* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* @ERR_OBJECT_NOT_FOUND, align 4
  store i32 %96, i32* %9, align 4
  br label %181

97:                                               ; preds = %88
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @Lock(i32 %100)
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @StrCpy(i8* %104, i32 8, i8* %107)
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 12
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 11
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @UniStrCpy(i32 %111, i32 4, i32 %114)
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 11
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 10
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @UniStrCpy(i32 %118, i32 4, i32 %121)
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 9
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 10
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 9
  store i32 %130, i32* %132, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 8
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 6
  store i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @CopyAuthData(i32 %145, i32 %148)
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 7
  store i32 %149, i32* %151, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 5
  store i32 %154, i32* %156, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 4
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @Copy(i32* %158, i32 %161, i32 4)
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %174

167:                                              ; preds = %97
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @ClonePolicy(i32* %170)
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 8
  br label %174

174:                                              ; preds = %167, %97
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @Unlock(i32 %177)
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %180 = call i32 @ReleaseUser(%struct.TYPE_11__* %179)
  br label %181

181:                                              ; preds = %174, %95
  %182 = load i32*, i32** %8, align 8
  %183 = call i32 @AcUnlock(i32* %182)
  %184 = load i32*, i32** %8, align 8
  %185 = call i32 @ReleaseHub(i32* %184)
  %186 = load i32, i32* %9, align 4
  store i32 %186, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %187

187:                                              ; preds = %181, %86, %63, %53
  %188 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %188)
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i64 @IsEmptyStr(i8*) #2

declare dso_local i32 @IsUserName(i8*) #2

declare dso_local i32 @FreeRpcSetUser(%struct.TYPE_13__*) #2

declare dso_local i32 @Zero(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @LockHubList(i32*) #2

declare dso_local i32* @GetHub(i32*, i8*) #2

declare dso_local i32 @UnlockHubList(i32*) #2

declare dso_local i32 @AcLock(i32*) #2

declare dso_local %struct.TYPE_11__* @AcGetUser(i32*, i8*) #2

declare dso_local i32 @Lock(i32) #2

declare dso_local i32 @UniStrCpy(i32, i32, i32) #2

declare dso_local i32 @CopyAuthData(i32, i32) #2

declare dso_local i32 @Copy(i32*, i32, i32) #2

declare dso_local i32 @ClonePolicy(i32*) #2

declare dso_local i32 @Unlock(i32) #2

declare dso_local i32 @ReleaseUser(%struct.TYPE_11__*) #2

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
