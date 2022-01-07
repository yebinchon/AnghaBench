; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetSecureNATOption.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetSecureNATOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32* }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_14__ = type { i64, i8*, i32 }

@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i32 0, align 4
@HUB_TYPE_FARM_STATIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"b_support_securenat\00", align 1
@ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_FARM_CONTROLLER = common dso_local global i32 0, align 4
@ERR_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StGetSecureNATOption(%struct.TYPE_15__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %6, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  %18 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = trunc i64 %20 to i32
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @StrCpy(i8* %22, i32 %23, i8* %26)
  %28 = load i32, i32* @CHECK_RIGHT, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @LockHubList(i32* %29)
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call %struct.TYPE_14__* @GetHub(i32* %31, i8* %34)
  store %struct.TYPE_14__* %35, %struct.TYPE_14__** %8, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @UnlockHubList(i32* %36)
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = icmp eq %struct.TYPE_14__* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  %41 = load i32, i32* @ERR_HUB_NOT_FOUND, align 4
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %86

42:                                               ; preds = %2
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @HUB_TYPE_FARM_STATIC, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = call i32 @GetServerCapsBool(%struct.TYPE_13__* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48, %42
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %54 = call i32 @ReleaseHub(%struct.TYPE_14__* %53)
  %55 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %86

56:                                               ; preds = %48
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %64 = call i32 @ReleaseHub(%struct.TYPE_14__* %63)
  %65 = load i32, i32* @ERR_NOT_FARM_CONTROLLER, align 4
  store i32 %65, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %86

66:                                               ; preds = %56
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = call i32 @Zero(%struct.TYPE_12__* %67, i32 16)
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @Copy(%struct.TYPE_12__* %69, i32 %72, i32 16)
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @StrCpy(i8* %76, i32 8, i8* %79)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  store i32 1, i32* %82, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %84 = call i32 @ReleaseHub(%struct.TYPE_14__* %83)
  %85 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %85, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %86

86:                                               ; preds = %66, %62, %52, %40
  %87 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @LockHubList(i32*) #2

declare dso_local %struct.TYPE_14__* @GetHub(i32*, i8*) #2

declare dso_local i32 @UnlockHubList(i32*) #2

declare dso_local i32 @GetServerCapsBool(%struct.TYPE_13__*, i8*) #2

declare dso_local i32 @ReleaseHub(%struct.TYPE_14__*) #2

declare dso_local i32 @Zero(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @Copy(%struct.TYPE_12__*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
