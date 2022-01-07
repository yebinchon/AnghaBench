; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpResp.c_httpSendOptionResp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpResp.c_httpSendOptionResp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@httpRespTemplate = common dso_local global i8** null, align 8
@HTTP_RESPONSE_JSON_OK = common dso_local global i64 0, align 8
@HTTP_SUCCESS = common dso_local global i32 0, align 4
@HTTP_RESPONSE_OPTIONS = common dso_local global i64 0, align 8
@httpVersionStr = common dso_local global i32* null, align 8
@httpKeepAliveStr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @httpSendOptionResp(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = bitcast [1024 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 1024, i1 false)
  %10 = bitcast [1024 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 1024, i1 false)
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %12 = load i8**, i8*** @httpRespTemplate, align 8
  %13 = load i64, i64* @HTTP_RESPONSE_JSON_OK, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* @HTTP_SUCCESS, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 (i8*, i8*, i32, i8*, ...) @sprintf(i8* %11, i8* %15, i32 %16, i8* %17)
  store i32 %18, i32* %7, align 4
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %20 = load i8**, i8*** @httpRespTemplate, align 8
  %21 = load i64, i64* @HTTP_RESPONSE_OPTIONS, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = load i32*, i32** @httpVersionStr, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** @httpKeepAliveStr, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (i8*, i8*, i32, i8*, ...) @sprintf(i8* %19, i8* %23, i32 %29, i8* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @httpWriteBuf(%struct.TYPE_5__* %40, i8* %41, i32 %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @httpWriteBuf(%struct.TYPE_5__* %44, i8* %45, i32 %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = call i32 @httpCloseContextByApp(%struct.TYPE_5__* %48)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*, ...) #2

declare dso_local i32 @httpWriteBuf(%struct.TYPE_5__*, i8*, i32) #2

declare dso_local i32 @httpCloseContextByApp(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
