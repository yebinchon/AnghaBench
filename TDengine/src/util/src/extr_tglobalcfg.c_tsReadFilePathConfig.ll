; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tglobalcfg.c_tsReadFilePathConfig.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tglobalcfg.c_tsReadFilePathConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i64 }
%struct.TYPE_6__ = type { i32** }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [83 x i8] c"config option:%s, input value:%s, length out of range[0, %d], use default value:%s\00", align 1
@TSDB_CFG_CSTATUS_FILE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [82 x i8] c"config option:%s, input value:%s, directory not exist, create with return code:%d\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"config option:%s, input value:%s, is configured by %s, use %s\00", align 1
@tsCfgStatusStr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tsReadFilePathConfig(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %19, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %18, %2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @pError(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %28, i32 %31, i8* %32)
  br label %91

34:                                               ; preds = %18
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TSDB_CFG_CSTATUS_FILE, align 8
  %39 = icmp ule i64 %37, %38
  br i1 %39, label %40, label %77

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @wordexp(i8* %41, %struct.TYPE_6__* %7, i32 0)
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = icmp ne i32** %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %48 = load i32**, i32*** %47, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @strcpy(i8* %53, i32* %57)
  br label %59

59:                                               ; preds = %52, %46, %40
  %60 = call i32 @wordfree(%struct.TYPE_6__* %7)
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @stat(i8* %61, %struct.stat* %8)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @mkdir(i8* %65, i32 493)
  store i32 %66, i32* %9, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @pPrint(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %69, i8* %70, i32 %71)
  br label %73

73:                                               ; preds = %64, %59
  %74 = load i64, i64* @TSDB_CFG_CSTATUS_FILE, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  br label %90

77:                                               ; preds = %34
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = load i32*, i32** @tsCfgStatusStr, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @pWarn(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %80, i8* %81, i32 %87, i8* %88)
  br label %90

90:                                               ; preds = %77, %73
  br label %91

91:                                               ; preds = %90, %24
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pError(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @wordexp(i8*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @strcpy(i8*, i32*) #1

declare dso_local i32 @wordfree(%struct.TYPE_6__*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @pPrint(i8*, i32, i8*, i32) #1

declare dso_local i32 @pWarn(i8*, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
