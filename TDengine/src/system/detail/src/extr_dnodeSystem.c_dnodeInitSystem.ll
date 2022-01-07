; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeSystem.c_dnodeInitSystem.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeSystem.c_dnodeInitSystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 (...)* }
%struct.stat = type { i32 }

@tsRebootTime = common dso_local global i32 0, align 4
@tscEmbedded = common dso_local global i32 0, align 4
@logDir = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"%s/taosdlog\00", align 1
@tsNumOfLogLines = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to init log file\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"TDengine read global config failed\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"TDengine init tier directory failed\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Server IP address is:%s\00", align 1
@tsInternalIp = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@dmutex = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"starting to initialize TDengine ...\00", align 1
@TSDB_MOD_MAX = common dso_local global i32 0, align 4
@tsModule = common dso_local global %struct.TYPE_2__* null, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"TDengine initialization failed\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"TDengine vnodes initialization failed\00", align 1
@dnodeCountRequest = common dso_local global i32 0, align 4
@monitorCountReqFp = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"TDengine is initialized successfully\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dnodeInitSystem() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [128 x i8], align 16
  %3 = alloca %struct.stat, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @taosResolveCRC()
  %6 = call i32 (...) @taosGetTimestampSec()
  store i32 %6, i32* @tsRebootTime, align 4
  store i32 1, i32* @tscEmbedded, align 4
  %7 = call i32 (...) @tsReadGlobalLogConfig()
  %8 = load i8*, i8** @logDir, align 8
  %9 = call i64 @stat(i8* %8, %struct.stat* %3)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i8*, i8** @logDir, align 8
  %13 = call i32 @mkdir(i8* %12, i32 493)
  br label %14

14:                                               ; preds = %11, %0
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %16 = load i8*, i8** @logDir, align 8
  %17 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %19 = load i32, i32* @tsNumOfLogLines, align 4
  %20 = call i64 @taosInitLog(i8* %18, i32 %19, i32 1)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %14
  %25 = call i32 (...) @tsReadGlobalConfig()
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = call i32 (...) @tsPrintGlobalConfig()
  %29 = call i32 @dError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %95

30:                                               ; preds = %24
  %31 = call i64 (...) @taosCreateTierDirectory()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 @dError(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %95

35:                                               ; preds = %30
  %36 = call i32 (...) @tsPrintGlobalConfig()
  %37 = load i32, i32* @tsInternalIp, align 4
  %38 = call i32 (i8*, ...) @dPrint(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @SIGPIPE, align 4
  %40 = load i32, i32* @SIG_IGN, align 4
  %41 = call i32 @signal(i32 %39, i32 %40)
  %42 = call i32 (...) @dnodeInitModules()
  %43 = call i32 @pthread_mutex_init(i32* @dmutex, i32* null)
  %44 = call i32 (i8*, ...) @dPrint(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %45 = call i32 (...) @vnodeInitQHandle()
  %46 = call i64 (...) @dnodeInitSystemSpec()
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  store i32 -1, i32* %1, align 4
  br label %95

49:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %83, %49
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @TSDB_MOD_MAX, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %86

54:                                               ; preds = %50
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %54
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64 (...)*, i64 (...)** %67, align 8
  %69 = icmp ne i64 (...)* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %62
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64 (...)*, i64 (...)** %75, align 8
  %77 = call i64 (...) %76()
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = call i32 @dError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %95

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %62, %54
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %50

86:                                               ; preds = %50
  %87 = call i64 (...) @vnodeInitSystem()
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 @dError(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %95

91:                                               ; preds = %86
  %92 = load i32, i32* @dnodeCountRequest, align 4
  store i32 %92, i32* @monitorCountReqFp, align 4
  %93 = call i32 (...) @dnodeStartModuleSpec()
  %94 = call i32 (i8*, ...) @dPrint(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %95

95:                                               ; preds = %91, %89, %79, %48, %33, %27
  %96 = load i32, i32* %1, align 4
  ret i32 %96
}

declare dso_local i32 @taosResolveCRC(...) #1

declare dso_local i32 @taosGetTimestampSec(...) #1

declare dso_local i32 @tsReadGlobalLogConfig(...) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i64 @taosInitLog(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @tsReadGlobalConfig(...) #1

declare dso_local i32 @tsPrintGlobalConfig(...) #1

declare dso_local i32 @dError(i8*) #1

declare dso_local i64 @taosCreateTierDirectory(...) #1

declare dso_local i32 @dPrint(i8*, ...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @dnodeInitModules(...) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @vnodeInitQHandle(...) #1

declare dso_local i64 @dnodeInitSystemSpec(...) #1

declare dso_local i64 @vnodeInitSystem(...) #1

declare dso_local i32 @dnodeStartModuleSpec(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
