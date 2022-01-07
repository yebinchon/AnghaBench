; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Logging.c_WriteHubLog.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Logging.c_WriteHubLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32* }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i32] [i32 91, i32 72, i32 85, i32 66, i32 32, i32 34, i32 37, i32 83, i32 34, i32 93, i32 32, i32 37, i32 115, i32 0], align 4
@SYSLOG_NONE = common dso_local global i64 0, align 8
@SYSLOG_SERVER_AND_HUB_SECURITY_LOG = common dso_local global i64 0, align 8
@SYSLOG_SERVER_AND_HUB_ALL_LOG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"SECURITY_LOG\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WriteHubLog(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* @MAX_SIZE, align 4
  %11 = mul nsw i32 %10, 2
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = icmp eq %struct.TYPE_6__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %2
  store i32 1, i32* %9, align 4
  br label %73

21:                                               ; preds = %17
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i64 @SiGetSysLogSaveStatus(i32* %27)
  store i64 %28, i64* %7, align 8
  %29 = mul nuw i64 4, %12
  %30 = trunc i64 %29 to i32
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @UniFormat(i32* %14, i32 %30, i8* bitcast ([14 x i32]* @.str to i8*), i32 %33, i32* %34)
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @SYSLOG_NONE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %21
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = call i32 @WriteServerLog(%struct.TYPE_7__* %42, i32* %14)
  br label %44

44:                                               ; preds = %39, %21
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 1, i32* %9, align 4
  br label %73

51:                                               ; preds = %44
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @SYSLOG_SERVER_AND_HUB_SECURITY_LOG, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @SYSLOG_SERVER_AND_HUB_ALL_LOG, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55, %51
  %60 = load i32*, i32** %8, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @SiWriteSysLog(i32* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32* %64)
  br label %72

66:                                               ; preds = %55
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @InsertUnicodeRecord(i32 %69, i32* %70)
  br label %72

72:                                               ; preds = %66, %59
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %72, %50, %20
  %74 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %9, align 4
  switch i32 %75, label %77 [
    i32 0, label %76
    i32 1, label %76
  ]

76:                                               ; preds = %73, %73
  ret void

77:                                               ; preds = %73
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @SiGetSysLogSaveStatus(i32*) #2

declare dso_local i32 @UniFormat(i32*, i32, i8*, i32, i32*) #2

declare dso_local i32 @WriteServerLog(%struct.TYPE_7__*, i32*) #2

declare dso_local i32 @SiWriteSysLog(i32*, i8*, i32, i32*) #2

declare dso_local i32 @InsertUnicodeRecord(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
