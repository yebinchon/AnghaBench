; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_EtherLog.c_ElLoadConfigFromFolder.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_EtherLog.c_ElLoadConfigFromFolder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i8** }

@.str = private unnamed_addr constant [10 x i8] c"AdminPort\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"AutoDeleteCheckDiskFreeSpaceMin\00", align 1
@DISK_FREE_SPACE_DEFAULT = common dso_local global i64 0, align 8
@DISK_FREE_SPACE_MIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"AdminPassword\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ELOG_IS_BETA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"LicenseManager\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Devices\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"NoPromiscuousMode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ElLoadConfigFromFolder(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = icmp eq %struct.TYPE_9__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  br label %134

17:                                               ; preds = %13
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @CfgGetInt(i32* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 1
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = icmp sle i32 %23, 65535
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %25, %22, %17
  %30 = load i32*, i32** %4, align 8
  %31 = call i64 @CfgGetInt64(i32* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @CfgIsItem(i32* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i64, i64* @DISK_FREE_SPACE_DEFAULT, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %37, %29
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DISK_FREE_SPACE_MIN, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i64, i64* @DISK_FREE_SPACE_MIN, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %57, %51
  br label %62

62:                                               ; preds = %61, %46
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @CfgGetByte(i32* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 4)
  %68 = sext i32 %67 to i64
  %69 = icmp ne i64 %68, 4
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @Sha0(i32 %73, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 0)
  br label %75

75:                                               ; preds = %70, %62
  %76 = load i32, i32* @ELOG_IS_BETA, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = call i32* @CfgGetFolder(i32* %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %82 = call i32 @EiLoadLicenseManager(%struct.TYPE_9__* %79, i32* %81)
  br label %83

83:                                               ; preds = %78, %75
  %84 = load i32*, i32** %4, align 8
  %85 = call i32* @CfgGetFolder(i32* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i32* %85, i32** %7, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %134

88:                                               ; preds = %83
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @LockList(i32 %91)
  %93 = load i32*, i32** %7, align 8
  %94 = call %struct.TYPE_8__* @CfgEnumFolderToTokenList(i32* %93)
  store %struct.TYPE_8__* %94, %struct.TYPE_8__** %6, align 8
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %124, %88
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %127

101:                                              ; preds = %95
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i8**, i8*** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %8, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = call i32* @CfgGetFolder(i32* %109, i8* %110)
  store i32* %111, i32** %9, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %101
  %115 = call i32 @Zero(i32* %10, i32 4)
  %116 = load i32*, i32** %9, align 8
  %117 = call i32 @SiLoadHubLogCfg(i32* %10, i32* %116)
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = call i32 @CfgGetBool(i32* %120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %122 = call i32 @ElAddCaptureDevice(%struct.TYPE_9__* %118, i8* %119, i32* %10, i32 %121)
  br label %123

123:                                              ; preds = %114, %101
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %5, align 4
  br label %95

127:                                              ; preds = %95
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %129 = call i32 @FreeToken(%struct.TYPE_8__* %128)
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @UnlockList(i32 %132)
  br label %134

134:                                              ; preds = %16, %127, %83
  ret void
}

declare dso_local i32 @CfgGetInt(i32*, i8*) #1

declare dso_local i64 @CfgGetInt64(i32*, i8*) #1

declare dso_local i32 @CfgIsItem(i32*, i8*) #1

declare dso_local i32 @CfgGetByte(i32*, i8*, i32, i32) #1

declare dso_local i32 @Sha0(i32, i8*, i32) #1

declare dso_local i32 @EiLoadLicenseManager(%struct.TYPE_9__*, i32*) #1

declare dso_local i32* @CfgGetFolder(i32*, i8*) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local %struct.TYPE_8__* @CfgEnumFolderToTokenList(i32*) #1

declare dso_local i32 @Zero(i32*, i32) #1

declare dso_local i32 @SiLoadHubLogCfg(i32*, i32*) #1

declare dso_local i32 @ElAddCaptureDevice(%struct.TYPE_9__*, i8*, i32*, i32) #1

declare dso_local i32 @CfgGetBool(i32*, i8*) #1

declare dso_local i32 @FreeToken(%struct.TYPE_8__*) #1

declare dso_local i32 @UnlockList(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
