; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_AdminWebSendBody.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_AdminWebSendBody.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i8* }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"text/html; charset=utf-8\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"HTTP/1.1\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"OPTIONS\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Allow\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"OPTIONS, GET, POST\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Cache-Control\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"no-cache\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Date\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Keep-Alive\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Access-Control-Allow-Methods\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"OPTIONS,GET,POST\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Access-Control-Allow-Headers\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"X-VPNADMIN-HUBNAME,X-VPNADMIN-PASSWORD\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Access-Control-Allow-Credentials\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Origin\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Access-Control-Allow-Origin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AdminWebSendBody(i32* %0, i32 %1, i8* %2, i32* %3, i32 %4, i8* %5, i8* %6, i8* %7, %struct.TYPE_11__* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca %struct.TYPE_11__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca [16 x i8], align 16
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_10__*, align 8
  %26 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i8* %2, i8** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %19, align 8
  %27 = load i32, i32* @MAX_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %21, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %22, align 8
  store i32 0, i32* %24, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %9
  %34 = load i8*, i8** %13, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32*, i32** %14, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %44 = icmp eq %struct.TYPE_11__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %39, %33, %9
  store i32 0, i32* %10, align 4
  store i32 1, i32* %26, align 4
  br label %124

46:                                               ; preds = %42
  %47 = load i8*, i8** %16, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  br label %50

50:                                               ; preds = %49, %46
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @ToStr(i8* %51, i32 %52)
  %54 = trunc i64 %28 to i32
  %55 = call i32 (...) @SystemTime64()
  %56 = call i32 @GetHttpDateStr(i8* %30, i32 %54, i32 %55)
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0
  %58 = load i8*, i8** %13, align 8
  %59 = call %struct.TYPE_11__* @NewHttpHeader(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %57, i8* %58)
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %20, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @StrCmpi(i32 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %50
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %67 = call i32 @NewHttpValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %68 = call i32 @AddHttpValue(%struct.TYPE_11__* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %50
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %71 = call i32 @NewHttpValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %72 = call i32 @AddHttpValue(%struct.TYPE_11__* %70, i32 %71)
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = call i32 @NewHttpValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %74)
  %76 = call i32 @AddHttpValue(%struct.TYPE_11__* %73, i32 %75)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %78 = call i32 @NewHttpValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %30)
  %79 = call i32 @AddHttpValue(%struct.TYPE_11__* %77, i32 %78)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %81 = call i32 @NewHttpValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %82 = call i32 @AddHttpValue(%struct.TYPE_11__* %80, i32 %81)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %84 = call i32 @NewHttpValue(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %85 = call i32 @AddHttpValue(%struct.TYPE_11__* %83, i32 %84)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %87 = call i32 @NewHttpValue(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  %88 = call i32 @AddHttpValue(%struct.TYPE_11__* %86, i32 %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %90 = call i32 @NewHttpValue(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %91 = call i32 @AddHttpValue(%struct.TYPE_11__* %89, i32 %90)
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %93 = call %struct.TYPE_10__* @GetHttpValue(%struct.TYPE_11__* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  store %struct.TYPE_10__* %93, %struct.TYPE_10__** %25, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %95 = icmp ne %struct.TYPE_10__* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %69
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @NewHttpValue(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i8* %100)
  %102 = call i32 @AddHttpValue(%struct.TYPE_11__* %97, i32 %101)
  br label %103

103:                                              ; preds = %96, %69
  %104 = load i8*, i8** %17, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load i8*, i8** %18, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %111 = load i8*, i8** %17, align 8
  %112 = load i8*, i8** %18, align 8
  %113 = call i32 @NewHttpValue(i8* %111, i8* %112)
  %114 = call i32 @AddHttpValue(%struct.TYPE_11__* %110, i32 %113)
  br label %115

115:                                              ; preds = %109, %106, %103
  %116 = load i32*, i32** %11, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %118 = load i32*, i32** %14, align 8
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @PostHttp(i32* %116, %struct.TYPE_11__* %117, i32* %118, i32 %119)
  store i32 %120, i32* %24, align 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %122 = call i32 @FreeHttpHeader(%struct.TYPE_11__* %121)
  %123 = load i32, i32* %24, align 4
  store i32 %123, i32* %10, align 4
  store i32 1, i32* %26, align 4
  br label %124

124:                                              ; preds = %115, %45
  %125 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %10, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ToStr(i8*, i32) #2

declare dso_local i32 @GetHttpDateStr(i8*, i32, i32) #2

declare dso_local i32 @SystemTime64(...) #2

declare dso_local %struct.TYPE_11__* @NewHttpHeader(i8*, i8*, i8*) #2

declare dso_local i64 @StrCmpi(i32, i8*) #2

declare dso_local i32 @AddHttpValue(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @NewHttpValue(i8*, i8*) #2

declare dso_local %struct.TYPE_10__* @GetHttpValue(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @PostHttp(i32*, %struct.TYPE_11__*, i32*, i32) #2

declare dso_local i32 @FreeHttpHeader(%struct.TYPE_11__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
