; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiLoadClientConfig.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiLoadClientConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32, i8*, i8*, i8*, i32, i8* }

@.str = private unnamed_addr constant [15 x i8] c"UseKeepConnect\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"KeepConnectHost\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"KeepConnectPort\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"KeepConnectProtocol\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"AllowRemoteConfig\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"KeepConnectInterval\00", align 1
@KEEP_INTERVAL_MIN = common dso_local global i32 0, align 4
@KEEP_INTERVAL_MAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"NoChangeWcmNetworkSettingOnWindows8\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"NicDownOnDisconnect\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CiLoadClientConfig(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = icmp eq %struct.TYPE_3__* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %48

11:                                               ; preds = %7
  %12 = load i32*, i32** %4, align 8
  %13 = call i8* @CfgGetBool(i32* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 7
  store i8* %13, i8** %15, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @CfgGetStr(i32* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 4)
  %21 = load i32*, i32** %4, align 8
  %22 = call i8* @CfgGetInt(i32* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i8* @CfgGetInt(i32* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i8* @CfgGetBool(i32* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i8* @CfgGetInt(i32* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %35 = load i32, i32* @KEEP_INTERVAL_MIN, align 4
  %36 = load i32, i32* @KEEP_INTERVAL_MAX, align 4
  %37 = call i32 @MAKESURE(i8* %34, i32 %35, i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i8* @CfgGetBool(i32* %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i8* @CfgGetBool(i32* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %11, %10
  ret void
}

declare dso_local i8* @CfgGetBool(i32*, i8*) #1

declare dso_local i32 @CfgGetStr(i32*, i8*, i32, i32) #1

declare dso_local i8* @CfgGetInt(i32*, i8*) #1

declare dso_local i32 @MAKESURE(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
