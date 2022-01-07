; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StAddCrl.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StAddCrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i32 0, align 4
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_HUB_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"no_change_crl_list\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i32 0, align 4
@MAX_HUB_CRLS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"LA_SET_CRL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StAddCrl(%struct.TYPE_21__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %6, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
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
  br label %117

32:                                               ; preds = %2
  %33 = load i32, i32* @CHECK_RIGHT, align 4
  %34 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %117

42:                                               ; preds = %32
  %43 = trunc i64 %23 to i32
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @StrCpy(i8* %25, i32 %43, i32 %46)
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %49 = call %struct.TYPE_19__* @GetHub(%struct.TYPE_20__* %48, i8* %25)
  store %struct.TYPE_19__* %49, %struct.TYPE_19__** %8, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %51 = icmp eq %struct.TYPE_19__* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* @ERR_HUB_NOT_FOUND, align 4
  store i32 %53, i32* %9, align 4
  br label %115

54:                                               ; preds = %42
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %61 = call i64 @GetHubAdminOption(%struct.TYPE_19__* %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @ERR_NOT_ENOUGH_RIGHT, align 4
  store i32 %64, i32* %9, align 4
  br label %112

65:                                               ; preds = %59, %54
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = icmp eq %struct.TYPE_16__* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  store i32 %71, i32* %9, align 4
  br label %111

72:                                               ; preds = %65
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @LockList(i32 %77)
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @LIST_NUM(i32 %83)
  %85 = load i64, i64* @MAX_HUB_CRLS, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %72
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32* @CopyCrl(i32 %90)
  store i32* %91, i32** %13, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %13, align 8
  %98 = call i32 @Insert(i32 %96, i32* %97)
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %101 = call i32 @ALog(%struct.TYPE_21__* %99, %struct.TYPE_19__* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %103 = call i32 @IncrementServerConfigRevision(%struct.TYPE_17__* %102)
  br label %104

104:                                              ; preds = %87, %72
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @UnlockList(i32 %109)
  br label %111

111:                                              ; preds = %104, %70
  br label %112

112:                                              ; preds = %111, %63
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %114 = call i32 @ReleaseHub(%struct.TYPE_19__* %113)
  br label %115

115:                                              ; preds = %112, %52
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %117

117:                                              ; preds = %115, %40, %30
  %118 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i32) #2

declare dso_local %struct.TYPE_19__* @GetHub(%struct.TYPE_20__*, i8*) #2

declare dso_local i64 @GetHubAdminOption(%struct.TYPE_19__*, i8*) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local i32* @CopyCrl(i32) #2

declare dso_local i32 @Insert(i32, i32*) #2

declare dso_local i32 @ALog(%struct.TYPE_21__*, %struct.TYPE_19__*, i8*) #2

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_17__*) #2

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
