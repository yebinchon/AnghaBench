; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_EtherLog.c_ElSaveConfigToFolder.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_EtherLog.c_ElSaveConfigToFolder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"AutoDeleteCheckDiskFreeSpaceMin\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"AdminPort\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"AdminPassword\00", align 1
@ELOG_IS_BETA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"LicenseManager\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Devices\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"NoPromiscuousMode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ElSaveConfigToFolder(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = icmp eq %struct.TYPE_7__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  br label %80

15:                                               ; preds = %11
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CfgAddInt64(i32* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CfgAddInt(i32* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @CfgAddByte(i32* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32 4)
  %31 = load i32, i32* @ELOG_IS_BETA, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %15
  %34 = load i32*, i32** %4, align 8
  %35 = call i32* @CfgCreateFolder(i32* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = call i32 @EiWriteLicenseManager(i32* %35, %struct.TYPE_7__* %36)
  br label %38

38:                                               ; preds = %33, %15
  %39 = load i32*, i32** %4, align 8
  %40 = call i32* @CfgCreateFolder(i32* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32* %40, i32** %6, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @LockList(i32 %43)
  store i64 0, i64* %5, align 8
  br label %45

45:                                               ; preds = %72, %38
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @LIST_NUM(i32 %49)
  %51 = icmp slt i64 %46, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %45
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %5, align 8
  %57 = call %struct.TYPE_6__* @LIST_DATA(i32 %55, i64 %56)
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %8, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32* @CfgCreateFolder(i32* %58, i8* %61)
  store i32* %62, i32** %7, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = call i32 @SiWriteHubLogCfgEx(i32* %63, i32* %65, i32 1)
  %67 = load i32*, i32** %7, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @CfgAddBool(i32* %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %52
  %73 = load i64, i64* %5, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %5, align 8
  br label %45

75:                                               ; preds = %45
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @UnlockList(i32 %78)
  br label %80

80:                                               ; preds = %75, %14
  ret void
}

declare dso_local i32 @CfgAddInt64(i32*, i8*, i32) #1

declare dso_local i32 @CfgAddInt(i32*, i8*, i32) #1

declare dso_local i32 @CfgAddByte(i32*, i8*, i32, i32) #1

declare dso_local i32 @EiWriteLicenseManager(i32*, %struct.TYPE_7__*) #1

declare dso_local i32* @CfgCreateFolder(i32*, i8*) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_6__* @LIST_DATA(i32, i64) #1

declare dso_local i32 @SiWriteHubLogCfgEx(i32*, i32*, i32) #1

declare dso_local i32 @CfgAddBool(i32*, i8*, i32) #1

declare dso_local i32 @UnlockList(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
