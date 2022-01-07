; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetCrl.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetCrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32* }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i32 0, align 4
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"no_change_crl_list\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i32 0, align 4
@ERR_OBJECT_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"LA_ADD_CRL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StSetCrl(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %6, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  %22 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %11, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  %28 = load i32, i32* @CHECK_RIGHT, align 4
  %29 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %126

37:                                               ; preds = %2
  %38 = trunc i64 %25 to i32
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @StrCpy(i8* %27, i32 %38, i32 %41)
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = call %struct.TYPE_17__* @GetHub(i32* %46, i8* %27)
  store %struct.TYPE_17__* %47, %struct.TYPE_17__** %8, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %49 = icmp eq %struct.TYPE_17__* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* @ERR_HUB_NOT_FOUND, align 4
  store i32 %51, i32* %9, align 4
  br label %124

52:                                               ; preds = %37
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %59 = call i64 @GetHubAdminOption(%struct.TYPE_17__* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @ERR_NOT_ENOUGH_RIGHT, align 4
  store i32 %62, i32* %9, align 4
  br label %121

63:                                               ; preds = %57, %52
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = icmp eq %struct.TYPE_14__* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  store i32 %69, i32* %9, align 4
  br label %120

70:                                               ; preds = %63
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @LockList(i32 %75)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32* @ListKeyToPointer(i32 %81, i32 %84)
  store i32* %85, i32** %14, align 8
  %86 = load i32*, i32** %14, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %70
  %89 = load i32, i32* @ERR_OBJECT_NOT_FOUND, align 4
  store i32 %89, i32* %9, align 4
  br label %113

90:                                               ; preds = %70
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32* @CopyCrl(i32 %93)
  store i32* %94, i32** %15, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %14, align 8
  %101 = load i32*, i32** %15, align 8
  %102 = call i64 @ReplaceListPointer(i32 %99, i32* %100, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %90
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %107 = call i32 @ALog(%struct.TYPE_18__* %105, %struct.TYPE_17__* %106, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i32*, i32** %14, align 8
  %109 = call i32 @FreeCrl(i32* %108)
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %111 = call i32 @IncrementServerConfigRevision(%struct.TYPE_15__* %110)
  br label %112

112:                                              ; preds = %104, %90
  br label %113

113:                                              ; preds = %112, %88
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @UnlockList(i32 %118)
  br label %120

120:                                              ; preds = %113, %68
  br label %121

121:                                              ; preds = %120, %61
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %123 = call i32 @ReleaseHub(%struct.TYPE_17__* %122)
  br label %124

124:                                              ; preds = %121, %50
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %126

126:                                              ; preds = %124, %35
  %127 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i32) #2

declare dso_local %struct.TYPE_17__* @GetHub(i32*, i8*) #2

declare dso_local i64 @GetHubAdminOption(%struct.TYPE_17__*, i8*) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i32* @ListKeyToPointer(i32, i32) #2

declare dso_local i32* @CopyCrl(i32) #2

declare dso_local i64 @ReplaceListPointer(i32, i32*, i32*) #2

declare dso_local i32 @ALog(%struct.TYPE_18__*, %struct.TYPE_17__*, i8*) #2

declare dso_local i32 @FreeCrl(i32*) #2

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_15__*) #2

declare dso_local i32 @UnlockList(i32) #2

declare dso_local i32 @ReleaseHub(%struct.TYPE_17__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
