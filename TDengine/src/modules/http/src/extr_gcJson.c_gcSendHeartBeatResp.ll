; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_gcJson.c_gcSendHeartBeatResp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_gcJson.c_gcSendHeartBeatResp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i8*, i8* }

@.str = private unnamed_addr constant [41 x i8] c"Grafana server receive a quest from you!\00", align 1
@JsonObjStt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@JsonObjEnd = common dso_local global i32 0, align 4
@httpRespTemplate = common dso_local global i8** null, align 8
@HTTP_RESPONSE_GRAFANA = common dso_local global i64 0, align 8
@httpVersionStr = common dso_local global i32* null, align 8
@httpKeepAliveStr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gcSendHeartBeatResp(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = call %struct.TYPE_11__* @httpMallocJsonBuf(%struct.TYPE_12__* %9)
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = icmp eq %struct.TYPE_11__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %79

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = call i32 @httpInitJsonBuf(%struct.TYPE_11__* %15, %struct.TYPE_12__* %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = load i32, i32* @JsonObjStt, align 4
  %20 = call i32 @httpJsonToken(%struct.TYPE_11__* %18, i32 %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %23 = trunc i64 %22 to i32
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = trunc i64 %26 to i32
  %28 = call i32 @httpJsonPair(%struct.TYPE_11__* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %23, i8* %24, i32 %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = load i32, i32* @JsonObjEnd, align 4
  %31 = call i32 @httpJsonToken(%struct.TYPE_11__* %29, i32 %30)
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %33 = load i8**, i8*** @httpRespTemplate, align 8
  %34 = load i64, i64* @HTTP_RESPONSE_GRAFANA, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load i32*, i32** @httpVersionStr, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** @httpKeepAliveStr, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = ptrtoint i8* %51 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @sprintf(i8* %32, i8* %36, i32 %42, i32 %48, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @httpWriteBuf(%struct.TYPE_12__* %60, i8* %61, i32 %62)
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = ptrtoint i8* %70 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  %78 = call i32 @httpWriteBuf(%struct.TYPE_12__* %64, i8* %67, i32 %77)
  br label %79

79:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.TYPE_11__* @httpMallocJsonBuf(%struct.TYPE_12__*) #1

declare dso_local i32 @httpInitJsonBuf(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @httpJsonToken(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @httpJsonPair(%struct.TYPE_11__*, i8*, i32, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @httpWriteBuf(%struct.TYPE_12__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
