; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiNewClient.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiNewClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, i32, i32, i32*, i32, i32, i32, i8*, i8*, i32, i8*, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__* }

@ci_active_sessions_lock = common dso_local global i32* null, align 8
@ci_num_active_sessions = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CiPulseRecvThread = common dso_local global i32 0, align 4
@CLIENT_LOG_DIR_NAME = common dso_local global i32 0, align 4
@CLIENT_LOG_PREFIX = common dso_local global i32 0, align 4
@LOG_SWITCH_DAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"L_LINE\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"LC_START_2\00", align 1
@CEDAR_CLIENT_STR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"LC_START_3\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"LC_START_1\00", align 1
@CLIENT_GLOBAL_PULSE_NAME = common dso_local global i32 0, align 4
@MAX_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @CiNewClient() #0 {
  %1 = alloca %struct.TYPE_11__*, align 8
  %2 = call i8* @ZeroMalloc(i32 88)
  %3 = bitcast i8* %2 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %1, align 8
  %4 = load i32*, i32** @ci_active_sessions_lock, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = call i8* (...) @NewLock()
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** @ci_active_sessions_lock, align 8
  store i64 0, i64* @ci_num_active_sessions, align 8
  br label %9

9:                                                ; preds = %6, %0
  %10 = call i8* @ZeroMalloc(i32 4)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 11
  store i8* %10, i8** %12, align 8
  %13 = call i32 (...) @NewSockList()
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 10
  store i32 %13, i32* %15, align 8
  %16 = call i8* (...) @NewLock()
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 9
  store i8* %16, i8** %18, align 8
  %19 = call i8* (...) @NewLock()
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 8
  store i8* %19, i8** %21, align 8
  %22 = call i32 (...) @NewRef()
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 8
  %25 = call %struct.TYPE_12__* @NewCedar(i32* null, i32* null)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %27, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %32, align 8
  %33 = call i32 @NewList(i32* null)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @Sha0(i32 %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %9
  %45 = load i32, i32* @CiPulseRecvThread, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %47 = call i32 @NewThread(i32 %45, %struct.TYPE_11__* %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %9
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %52 = call i32 @CiLoadIniSettings(%struct.TYPE_11__* %51)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load i32, i32* @CLIENT_LOG_DIR_NAME, align 4
  %59 = call i32 @MakeDir(i32 %58)
  %60 = load i32, i32* @CLIENT_LOG_DIR_NAME, align 4
  %61 = load i32, i32* @CLIENT_LOG_PREFIX, align 4
  %62 = load i32, i32* @LOG_SWITCH_DAY, align 4
  %63 = call i32 @NewLog(i32 %60, i32 %61, i32 %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %57, %50
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %68 = call i32 (%struct.TYPE_11__*, i8*, ...) @CLog(%struct.TYPE_11__* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %70 = load i32, i32* @CEDAR_CLIENT_STR, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (%struct.TYPE_11__*, i8*, ...) @CLog(%struct.TYPE_11__* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %75)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (%struct.TYPE_11__*, i8*, ...) @CLog(%struct.TYPE_11__* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %85 = call i32 (%struct.TYPE_11__*, i8*, ...) @CLog(%struct.TYPE_11__* %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %87 = call i32 @CiInitConfiguration(%struct.TYPE_11__* %86)
  %88 = call i32 (...) @OSSetHighPriority()
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %90 = call i32 @CiChangeAllVLanMacAddressIfMachineChanged(%struct.TYPE_11__* %89)
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %92 = call i32 @CiChangeAllVLanMacAddressIfCleared(%struct.TYPE_11__* %91)
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %94 = call i32 @CiApplyInnerVPNServerConfig(%struct.TYPE_11__* %93)
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  ret %struct.TYPE_11__* %95
}

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i8* @NewLock(...) #1

declare dso_local i32 @NewSockList(...) #1

declare dso_local i32 @NewRef(...) #1

declare dso_local %struct.TYPE_12__* @NewCedar(i32*, i32*) #1

declare dso_local i32 @NewList(i32*) #1

declare dso_local i32 @Sha0(i32, i8*, i32) #1

declare dso_local i32 @NewThread(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @CiLoadIniSettings(%struct.TYPE_11__*) #1

declare dso_local i32 @MakeDir(i32) #1

declare dso_local i32 @NewLog(i32, i32, i32) #1

declare dso_local i32 @CLog(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @CiInitConfiguration(%struct.TYPE_11__*) #1

declare dso_local i32 @OSSetHighPriority(...) #1

declare dso_local i32 @CiChangeAllVLanMacAddressIfMachineChanged(%struct.TYPE_11__*) #1

declare dso_local i32 @CiChangeAllVLanMacAddressIfCleared(%struct.TYPE_11__*) #1

declare dso_local i32 @CiApplyInnerVPNServerConfig(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
