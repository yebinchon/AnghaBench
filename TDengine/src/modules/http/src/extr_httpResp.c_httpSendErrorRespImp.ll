; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpResp.c_httpSendErrorRespImp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpResp.c_httpSendErrorRespImp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"context:%p, fd:%d, ip:%s, code:%d, error:%d:%s\00", align 1
@httpRespTemplate = common dso_local global i8** null, align 8
@HTTP_RESPONSE_JSON_ERROR = common dso_local global i64 0, align 8
@HTTP_RESPONSE_ERROR = common dso_local global i64 0, align 8
@httpVersionStr = common dso_local global i32* null, align 8
@httpKeepAliveStr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @httpSendErrorRespImp(%struct.TYPE_6__* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [512 x i8], align 16
  %12 = alloca [512 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @httpError(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %15, i32 %18, i32 %21, i32 %22, i32 %23, i8* %24)
  %26 = bitcast [512 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 512, i1 false)
  %27 = bitcast [512 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 512, i1 false)
  %28 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %29 = load i8**, i8*** @httpRespTemplate, align 8
  %30 = load i64, i64* @HTTP_RESPONSE_JSON_ERROR, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %28, i8* %32, i32 %33, i8* %34)
  store i32 %35, i32* %13, align 4
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %37 = load i8**, i8*** @httpRespTemplate, align 8
  %38 = load i64, i64* @HTTP_RESPONSE_ERROR, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = load i32*, i32** @httpVersionStr, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = load i32*, i32** @httpKeepAliveStr, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %36, i8* %40, i32 %46, i32 %47, i8* %48, i32 %54, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @httpWriteBuf(%struct.TYPE_6__* %57, i8* %58, i32 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @httpWriteBuf(%struct.TYPE_6__* %61, i8* %62, i32 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = call i32 @httpCloseContextByApp(%struct.TYPE_6__* %65)
  ret void
}

declare dso_local i32 @httpError(i8*, %struct.TYPE_6__*, i32, i32, i32, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @httpWriteBuf(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @httpCloseContextByApp(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
