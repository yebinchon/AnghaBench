; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiDebug.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiDebug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i8*, i8*, i64, i64 (i32*, i8*, i32, i32)*, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"Hello World\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"<test string>\00", align 1
@SiDebugProcHelloWorld = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Terminate process now\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SiDebugProcExit = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Write memory dumpfile\00", align 1
@SiDebugProcDump = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Restore process priority\00", align 1
@SiDebugProcRestorePriority = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Set the process priority high\00", align 1
@SiDebugProcSetHighPriority = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"Get the .exe filename of the process\00", align 1
@SiDebugProcGetExeFileName = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"Crash the process\00", align 1
@SiDebugProcCrash = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"Get IPsecMessageDisplayed Flag\00", align 1
@SiDebugProcGetIPsecMessageDisplayedValue = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"Set IPsecMessageDisplayed Flag\00", align 1
@SiDebugProcSetIPsecMessageDisplayedValue = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"Get VgsMessageDisplayed Flag\00", align 1
@SiDebugProcGetVgsMessageDisplayedValue = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"Set VgsMessageDisplayed Flag\00", align 1
@SiDebugProcSetVgsMessageDisplayedValue = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [38 x i8] c"Get the current TCP send queue length\00", align 1
@SiDebugProcGetCurrentTcpSendQueueLength = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [35 x i8] c"Get the current GetIP thread count\00", align 1
@SiDebugProcGetCurrentGetIPThreadCount = common dso_local global i32 0, align 4
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [30 x i8] c"\0A--- Debug Functions List --\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c" %u: %s - Usage: %u /ARG:\22%s\22\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c" %u: %s - Usage: %u\0A\00", align 1
@ERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [4 x i8] c"Ok.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SiDebug(i32* %0, %struct.TYPE_6__* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [13 x %struct.TYPE_5__], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = getelementptr inbounds [13 x %struct.TYPE_5__], [13 x %struct.TYPE_5__]* %10, i64 0, i64 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %23 = load i32, i32* @SiDebugProcHelloWorld, align 4
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %22, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 4
  store i64 (i32*, i8*, i32, i32)* null, i64 (i32*, i8*, i32, i32)** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 5
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 6
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 7
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 2, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %34 = load i32, i32* @SiDebugProcExit, align 4
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %33, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 4
  store i64 (i32*, i8*, i32, i32)* null, i64 (i32*, i8*, i32, i32)** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 5
  store i32 0, i32* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 6
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 7
  store i32 0, i32* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 3, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %45 = load i32, i32* @SiDebugProcDump, align 4
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %44, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  store i64 (i32*, i8*, i32, i32)* null, i64 (i32*, i8*, i32, i32)** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 5
  store i32 0, i32* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 6
  store i32 0, i32* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 7
  store i32 0, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 4, i32* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %56 = load i32, i32* @SiDebugProcRestorePriority, align 4
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %55, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  store i64 (i32*, i8*, i32, i32)* null, i64 (i32*, i8*, i32, i32)** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 5
  store i32 0, i32* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 6
  store i32 0, i32* %60, align 4
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 7
  store i32 0, i32* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 5, i32* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  %67 = load i32, i32* @SiDebugProcSetHighPriority, align 4
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %66, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 4
  store i64 (i32*, i8*, i32, i32)* null, i64 (i32*, i8*, i32, i32)** %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 5
  store i32 0, i32* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 6
  store i32 0, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 7
  store i32 0, i32* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32 6, i32* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8** %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  %78 = load i32, i32* @SiDebugProcGetExeFileName, align 4
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %77, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 4
  store i64 (i32*, i8*, i32, i32)* null, i64 (i32*, i8*, i32, i32)** %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 5
  store i32 0, i32* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 6
  store i32 0, i32* %82, align 4
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 7
  store i32 0, i32* %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i32 7, i32* %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8** %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  %89 = load i32, i32* @SiDebugProcCrash, align 4
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %88, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 4
  store i64 (i32*, i8*, i32, i32)* null, i64 (i32*, i8*, i32, i32)** %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 5
  store i32 0, i32* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 6
  store i32 0, i32* %93, align 4
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 7
  store i32 0, i32* %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32 8, i32* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8** %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 3
  %100 = load i32, i32* @SiDebugProcGetIPsecMessageDisplayedValue, align 4
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %99, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 4
  store i64 (i32*, i8*, i32, i32)* null, i64 (i32*, i8*, i32, i32)** %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 5
  store i32 0, i32* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 6
  store i32 0, i32* %104, align 4
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 7
  store i32 0, i32* %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i32 9, i32* %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8** %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 3
  %111 = load i32, i32* @SiDebugProcSetIPsecMessageDisplayedValue, align 4
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %110, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 4
  store i64 (i32*, i8*, i32, i32)* null, i64 (i32*, i8*, i32, i32)** %113, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 5
  store i32 0, i32* %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 6
  store i32 0, i32* %115, align 4
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 7
  store i32 0, i32* %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  store i32 10, i32* %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8** %119, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %120, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  %122 = load i32, i32* @SiDebugProcGetVgsMessageDisplayedValue, align 4
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %121, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 4
  store i64 (i32*, i8*, i32, i32)* null, i64 (i32*, i8*, i32, i32)** %124, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 5
  store i32 0, i32* %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 6
  store i32 0, i32* %126, align 4
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 7
  store i32 0, i32* %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 1
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  store i32 11, i32* %129, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8** %130, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %131, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 3
  %133 = load i32, i32* @SiDebugProcSetVgsMessageDisplayedValue, align 4
  %134 = sext i32 %133 to i64
  store i64 %134, i64* %132, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 4
  store i64 (i32*, i8*, i32, i32)* null, i64 (i32*, i8*, i32, i32)** %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 5
  store i32 0, i32* %136, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 6
  store i32 0, i32* %137, align 4
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 7
  store i32 0, i32* %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i64 1
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  store i32 12, i32* %140, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i8** %141, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %142, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 3
  %144 = load i32, i32* @SiDebugProcGetCurrentTcpSendQueueLength, align 4
  %145 = sext i32 %144 to i64
  store i64 %145, i64* %143, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 4
  store i64 (i32*, i8*, i32, i32)* null, i64 (i32*, i8*, i32, i32)** %146, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 5
  store i32 0, i32* %147, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 6
  store i32 0, i32* %148, align 4
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 7
  store i32 0, i32* %149, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 1
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  store i32 13, i32* %151, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i8** %152, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %153, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 3
  %155 = load i32, i32* @SiDebugProcGetCurrentGetIPThreadCount, align 4
  %156 = sext i32 %155 to i64
  store i64 %156, i64* %154, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 4
  store i64 (i32*, i8*, i32, i32)* null, i64 (i32*, i8*, i32, i32)** %157, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 5
  store i32 0, i32* %158, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 6
  store i32 0, i32* %159, align 4
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 7
  store i32 0, i32* %160, align 8
  store i64 13, i64* %11, align 8
  %161 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %161, i64* %13, align 8
  %162 = load i32*, i32** %6, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %4
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %166 = icmp eq %struct.TYPE_6__* %165, null
  br i1 %166, label %167, label %169

167:                                              ; preds = %164, %4
  %168 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %168, i64* %5, align 8
  br label %278

169:                                              ; preds = %164
  %170 = load i64, i64* %8, align 8
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %232

172:                                              ; preds = %169
  %173 = load i32, i32* @MAX_SIZE, align 4
  %174 = zext i32 %173 to i64
  %175 = call i8* @llvm.stacksave()
  store i8* %175, i8** %14, align 8
  %176 = alloca i8, i64 %174, align 16
  store i64 %174, i64* %15, align 8
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %178 = call i32 @Zero(%struct.TYPE_6__* %177, i32 4)
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @StrCat(i32 %181, i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0))
  store i64 0, i64* %12, align 8
  br label %183

183:                                              ; preds = %227, %172
  %184 = load i64, i64* %12, align 8
  %185 = load i64, i64* %11, align 8
  %186 = icmp slt i64 %184, %185
  br i1 %186, label %187, label %230

187:                                              ; preds = %183
  %188 = load i64, i64* %12, align 8
  %189 = getelementptr inbounds [13 x %struct.TYPE_5__], [13 x %struct.TYPE_5__]* %10, i64 0, i64 %188
  store %struct.TYPE_5__* %189, %struct.TYPE_5__** %16, align 8
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @IsEmptyStr(i32 %192)
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %210

195:                                              ; preds = %187
  %196 = trunc i64 %174 to i32
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 4
  %209 = call i32 (i8*, i32, i8*, i64, i32, i64, ...) @Format(i8* %176, i32 %196, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i64 %199, i32 %202, i64 %205, i32 %208)
  br label %222

210:                                              ; preds = %187
  %211 = trunc i64 %174 to i32
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = call i32 (i8*, i32, i8*, i64, i32, i64, ...) @Format(i8* %176, i32 %211, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i64 %214, i32 %217, i64 %220)
  br label %222

222:                                              ; preds = %210, %195
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @StrCat(i32 %225, i32 4, i8* %176)
  br label %227

227:                                              ; preds = %222
  %228 = load i64, i64* %12, align 8
  %229 = add nsw i64 %228, 1
  store i64 %229, i64* %12, align 8
  br label %183

230:                                              ; preds = %183
  %231 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %231)
  br label %276

232:                                              ; preds = %169
  %233 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  store i64 %233, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %234

234:                                              ; preds = %272, %232
  %235 = load i64, i64* %12, align 8
  %236 = load i64, i64* %11, align 8
  %237 = icmp slt i64 %235, %236
  br i1 %237, label %238, label %275

238:                                              ; preds = %234
  %239 = load i64, i64* %12, align 8
  %240 = getelementptr inbounds [13 x %struct.TYPE_5__], [13 x %struct.TYPE_5__]* %10, i64 0, i64 %239
  store %struct.TYPE_5__* %240, %struct.TYPE_5__** %17, align 8
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* %8, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %271

246:                                              ; preds = %238
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 4
  %249 = load i64 (i32*, i8*, i32, i32)*, i64 (i32*, i8*, i32, i32)** %248, align 8
  %250 = load i32*, i32** %6, align 8
  %251 = load i8*, i8** %9, align 8
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i64 %249(i32* %250, i8* %251, i32 %254, i32 4)
  store i64 %255, i64* %13, align 8
  %256 = load i64, i64* %13, align 8
  %257 = load i64, i64* @ERR_NO_ERROR, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %270

259:                                              ; preds = %246
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @IsEmptyStr(i32 %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %259
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @StrCpy(i32 %268, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  br label %270

270:                                              ; preds = %265, %259, %246
  br label %275

271:                                              ; preds = %238
  br label %272

272:                                              ; preds = %271
  %273 = load i64, i64* %12, align 8
  %274 = add nsw i64 %273, 1
  store i64 %274, i64* %12, align 8
  br label %234

275:                                              ; preds = %270, %234
  br label %276

276:                                              ; preds = %275, %230
  %277 = load i64, i64* %13, align 8
  store i64 %277, i64* %5, align 8
  br label %278

278:                                              ; preds = %276, %167
  %279 = load i64, i64* %5, align 8
  ret i64 %279
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Zero(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @StrCat(i32, i32, i8*) #2

declare dso_local i32 @IsEmptyStr(i32) #2

declare dso_local i32 @Format(i8*, i32, i8*, i64, i32, i64, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
