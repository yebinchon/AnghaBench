; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_restHandle.c_restProcessRequest.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_restHandle.c_restProcessRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HttpContext = type { i32, i32 }

@REST_ACTION_URL_POS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"login\00", align 1
@HTTP_PARSE_USR_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"sql\00", align 1
@REST_TIMESTAMP_FMT_LOCAL_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"sqlt\00", align 1
@REST_TIMESTAMP_FMT_TIMESTAMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"sqlutc\00", align 1
@REST_TIMESTAMP_FMT_UTC_STRING = common dso_local global i32 0, align 4
@HTTP_PARSE_URL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @restProcessRequest(%struct.HttpContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.HttpContext*, align 8
  store %struct.HttpContext* %0, %struct.HttpContext** %3, align 8
  %4 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %5 = load i32, i32* @REST_ACTION_URL_POS, align 4
  %6 = call i64 @httpUrlMatch(%struct.HttpContext* %4, i32 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %10 = call i32 @restGetUserFromUrl(%struct.HttpContext* %9)
  %11 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %12 = call i32 @restGetPassFromUrl(%struct.HttpContext* %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %15 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @strlen(i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %21 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @strlen(i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19, %13
  %26 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %27 = load i32, i32* @HTTP_PARSE_USR_ERROR, align 4
  %28 = call i32 @httpSendErrorResp(%struct.HttpContext* %26, i32 %27)
  store i32 0, i32* %2, align 4
  br label %72

29:                                               ; preds = %19
  %30 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %31 = load i32, i32* @REST_ACTION_URL_POS, align 4
  %32 = call i64 @httpUrlMatch(%struct.HttpContext* %30, i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %36 = load i32, i32* @REST_TIMESTAMP_FMT_LOCAL_STRING, align 4
  %37 = call i32 @restProcessSqlRequest(%struct.HttpContext* %35, i32 %36)
  store i32 %37, i32* %2, align 4
  br label %72

38:                                               ; preds = %29
  %39 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %40 = load i32, i32* @REST_ACTION_URL_POS, align 4
  %41 = call i64 @httpUrlMatch(%struct.HttpContext* %39, i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %45 = load i32, i32* @REST_TIMESTAMP_FMT_TIMESTAMP, align 4
  %46 = call i32 @restProcessSqlRequest(%struct.HttpContext* %44, i32 %45)
  store i32 %46, i32* %2, align 4
  br label %72

47:                                               ; preds = %38
  %48 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %49 = load i32, i32* @REST_ACTION_URL_POS, align 4
  %50 = call i64 @httpUrlMatch(%struct.HttpContext* %48, i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %54 = load i32, i32* @REST_TIMESTAMP_FMT_UTC_STRING, align 4
  %55 = call i32 @restProcessSqlRequest(%struct.HttpContext* %53, i32 %54)
  store i32 %55, i32* %2, align 4
  br label %72

56:                                               ; preds = %47
  %57 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %58 = load i32, i32* @REST_ACTION_URL_POS, align 4
  %59 = call i64 @httpUrlMatch(%struct.HttpContext* %57, i32 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %63 = call i32 @restProcessLoginRequest(%struct.HttpContext* %62)
  store i32 %63, i32* %2, align 4
  br label %72

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %70 = load i32, i32* @HTTP_PARSE_URL_ERROR, align 4
  %71 = call i32 @httpSendErrorResp(%struct.HttpContext* %69, i32 %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %68, %61, %52, %43, %34, %25
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @httpUrlMatch(%struct.HttpContext*, i32, i8*) #1

declare dso_local i32 @restGetUserFromUrl(%struct.HttpContext*) #1

declare dso_local i32 @restGetPassFromUrl(%struct.HttpContext*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @httpSendErrorResp(%struct.HttpContext*, i32) #1

declare dso_local i32 @restProcessSqlRequest(%struct.HttpContext*, i32) #1

declare dso_local i32 @restProcessLoginRequest(%struct.HttpContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
