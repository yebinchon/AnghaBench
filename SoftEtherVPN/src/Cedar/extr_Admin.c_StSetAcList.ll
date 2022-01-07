; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetAcList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetAcList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i32 0, align 4
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@GSF_DISABLE_AC = common dso_local global i32 0, align 4
@ERR_NOT_SUPPORTED_FUNCTION_ON_OPENSOURCE = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_HUB_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"no_change_access_control_list\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"LA_SET_AC_LIST\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StSetAcList(%struct.TYPE_21__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %6, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %7, align 8
  %20 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %10, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %118

32:                                               ; preds = %2
  %33 = load i32, i32* @GSF_DISABLE_AC, align 4
  %34 = call i64 @GetGlobalServerFlag(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @LIST_NUM(i32 %39)
  %41 = icmp sge i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @ERR_NOT_SUPPORTED_FUNCTION_ON_OPENSOURCE, align 4
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %118

44:                                               ; preds = %36, %32
  %45 = load i32, i32* @CHECK_RIGHT, align 4
  %46 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %118

54:                                               ; preds = %44
  %55 = trunc i64 %23 to i32
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @StrCpy(i8* %25, i32 %55, i32 %58)
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %61 = call %struct.TYPE_19__* @GetHub(%struct.TYPE_20__* %60, i8* %25)
  store %struct.TYPE_19__* %61, %struct.TYPE_19__** %8, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %63 = icmp eq %struct.TYPE_19__* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* @ERR_HUB_NOT_FOUND, align 4
  store i32 %65, i32* %9, align 4
  br label %116

66:                                               ; preds = %54
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %73 = call i64 @GetHubAdminOption(%struct.TYPE_19__* %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @ERR_NOT_ENOUGH_RIGHT, align 4
  store i32 %76, i32* %9, align 4
  br label %113

77:                                               ; preds = %71, %66
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = icmp eq %struct.TYPE_18__* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  store i32 %83, i32* %9, align 4
  br label %112

84:                                               ; preds = %77
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %86, align 8
  store %struct.TYPE_18__* %87, %struct.TYPE_18__** %13, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @LockList(i32 %90)
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @SetAcList(i32 %94, i32 %97)
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @LIST_NUM(i32 %103)
  %105 = call i32 @ALog(%struct.TYPE_21__* %99, %struct.TYPE_19__* %100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %107 = call i32 @IncrementServerConfigRevision(%struct.TYPE_16__* %106)
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @UnlockList(i32 %110)
  br label %112

112:                                              ; preds = %84, %82
  br label %113

113:                                              ; preds = %112, %75
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %115 = call i32 @ReleaseHub(%struct.TYPE_19__* %114)
  br label %116

116:                                              ; preds = %113, %64
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %118

118:                                              ; preds = %116, %52, %42, %30
  %119 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetGlobalServerFlag(i32) #2

declare dso_local i32 @LIST_NUM(i32) #2

declare dso_local i32 @StrCpy(i8*, i32, i32) #2

declare dso_local %struct.TYPE_19__* @GetHub(%struct.TYPE_20__*, i8*) #2

declare dso_local i64 @GetHubAdminOption(%struct.TYPE_19__*, i8*) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i32 @SetAcList(i32, i32) #2

declare dso_local i32 @ALog(%struct.TYPE_21__*, %struct.TYPE_19__*, i8*, i32) #2

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_16__*) #2

declare dso_local i32 @UnlockList(i32) #2

declare dso_local i32 @ReleaseHub(%struct.TYPE_19__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
