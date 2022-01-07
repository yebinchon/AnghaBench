; ModuleID = '/home/carl/AnghaBench/TDengine/tests/comparisonTest/tdengine/extr_tdengineTest.c_writeData.c'
source_filename = "/home/carl/AnghaBench/TDengine/tests/comparisonTest/tdengine/extr_tdengineTest.c_writeData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"write data\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"---- writeClients: %d\0A\00", align 1
@arguments = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"---- dataDir: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"---- numOfFiles: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"---- rowsPerRequest: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"taosdata\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"create database if not exists db\00", align 1
@.str.9 = private unnamed_addr constant [135 x i8] c"create table if not exists db.devices(ts timestamp, temperature int, humidity float) tags(devid int, devname binary(16), devgroup int)\00", align 1
@PTHREAD_CREATE_JOINABLE = common dso_local global i32 0, align 4
@writeDataImp = common dso_local global i64 0, align 8
@statis = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [68 x i8] c"---- Spent %f seconds to insert %ld records, speed: %f Rows/Second\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @writeData() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @arguments, i32 0, i32 0), align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @arguments, i32 0, i32 1), align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @arguments, i32 0, i32 2), align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @arguments, i32 0, i32 3), align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %22)
  %24 = call i32 (...) @taos_init()
  %25 = call i8* @taos_connect(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* null, i32 0)
  store i8* %25, i8** %1, align 8
  %26 = load i8*, i8** %1, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %0
  %29 = load i8*, i8** %1, align 8
  %30 = call i32 @taos_error(i8* %29)
  br label %31

31:                                               ; preds = %28, %0
  %32 = load i8*, i8** %1, align 8
  %33 = call i32 @taos_query(i8* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** %1, align 8
  %38 = call i32 @taos_error(i8* %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i8*, i8** %1, align 8
  %41 = call i32 @taos_query(i8* %40, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.9, i64 0, i64 0))
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* %2, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i8*, i8** %1, align 8
  %46 = call i32 @taos_error(i8* %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = call i64 (...) @getTimeStampMs()
  store i64 %48, i64* %3, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @arguments, i32 0, i32 2), align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @arguments, i32 0, i32 0), align 8
  %51 = sdiv i32 %49, %50
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @arguments, i32 0, i32 2), align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @arguments, i32 0, i32 0), align 8
  %54 = srem i32 %52, %53
  store i32 %54, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @arguments, i32 0, i32 0), align 8
  %56 = sext i32 %55 to i64
  %57 = call %struct.TYPE_6__* @calloc(i64 %56, i32 16)
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %104, %47
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @arguments, i32 0, i32 0), align 8
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %107

62:                                               ; preds = %58
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %9, align 8
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %62
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %78, %79
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  br label %90

83:                                               ; preds = %62
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %84, %85
  %87 = sub nsw i32 %86, 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %83, %77
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  %95 = call i32 @pthread_attr_init(i32* %10)
  %96 = load i32, i32* @PTHREAD_CREATE_JOINABLE, align 4
  %97 = call i32 @pthread_attr_setdetachstate(i32* %10, i32 %96)
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  %100 = load i64, i64* @writeDataImp, align 8
  %101 = inttoptr i64 %100 to i8* (i8*)*
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %103 = call i32 @pthread_create(i32* %99, i32* %10, i8* (i8*)* %101, %struct.TYPE_6__* %102)
  br label %104

104:                                              ; preds = %90
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %58

107:                                              ; preds = %58
  store i32 0, i32* %11, align 4
  br label %108

108:                                              ; preds = %120, %107
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @arguments, i32 0, i32 0), align 8
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %108
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @pthread_join(i32 %118, i32* null)
  br label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %108

123:                                              ; preds = %108
  %124 = call i64 (...) @getTimeStampMs()
  %125 = load i64, i64* %3, align 8
  %126 = sub nsw i64 %124, %125
  store i64 %126, i64* %12, align 8
  %127 = load i64, i64* %12, align 8
  %128 = sitofp i64 %127 to float
  %129 = fdiv float %128, 1.000000e+03
  store float %129, float* %13, align 4
  %130 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @statis, i32 0, i32 0), align 8
  %131 = sitofp i64 %130 to float
  %132 = load float, float* %13, align 4
  %133 = fdiv float %131, %132
  store float %133, float* %14, align 4
  %134 = load float, float* %13, align 4
  %135 = fpext float %134 to double
  %136 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @statis, i32 0, i32 0), align 8
  %137 = load float, float* %14, align 4
  %138 = fpext float %137 to double
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.10, i64 0, i64 0), double %135, i64 %136, double %138)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @taos_init(...) #1

declare dso_local i8* @taos_connect(i8*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @taos_error(i8*) #1

declare dso_local i32 @taos_query(i8*, i8*) #1

declare dso_local i64 @getTimeStampMs(...) #1

declare dso_local %struct.TYPE_6__* @calloc(i64, i32) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i8* (i8*)*, %struct.TYPE_6__*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
