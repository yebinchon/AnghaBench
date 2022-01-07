; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_gcHandle.c_gcProcessRequest.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_gcHandle.c_gcProcessRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HttpContext = type { i32, i32 }

@GC_ACTION_URL_POS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"login\00", align 1
@HTTP_PARSE_USR_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"query\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"heartbeat\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gcProcessRequest(%struct.HttpContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.HttpContext*, align 8
  store %struct.HttpContext* %0, %struct.HttpContext** %3, align 8
  %4 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %5 = load i32, i32* @GC_ACTION_URL_POS, align 4
  %6 = call i64 @httpUrlMatch(%struct.HttpContext* %4, i32 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %10 = call i32 @gcGetUserFromUrl(%struct.HttpContext* %9)
  %11 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %12 = call i32 @gcGetPassFromUrl(%struct.HttpContext* %11)
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
  br label %56

29:                                               ; preds = %19
  %30 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %31 = load i32, i32* @GC_ACTION_URL_POS, align 4
  %32 = call i64 @httpUrlMatch(%struct.HttpContext* %30, i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %36 = call i32 @gcProcessQueryRequest(%struct.HttpContext* %35)
  store i32 %36, i32* %2, align 4
  br label %56

37:                                               ; preds = %29
  %38 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %39 = load i32, i32* @GC_ACTION_URL_POS, align 4
  %40 = call i64 @httpUrlMatch(%struct.HttpContext* %38, i32 %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %44 = call i32 @gcProcessHeartbeatRequest(%struct.HttpContext* %43)
  store i32 %44, i32* %2, align 4
  br label %56

45:                                               ; preds = %37
  %46 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %47 = load i32, i32* @GC_ACTION_URL_POS, align 4
  %48 = call i64 @httpUrlMatch(%struct.HttpContext* %46, i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %52 = call i32 @gcProcessLoginRequest(%struct.HttpContext* %51)
  store i32 %52, i32* %2, align 4
  br label %56

53:                                               ; preds = %45
  %54 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %55 = call i32 @gcProcessHeartbeatRequest(%struct.HttpContext* %54)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %50, %42, %34, %25
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @httpUrlMatch(%struct.HttpContext*, i32, i8*) #1

declare dso_local i32 @gcGetUserFromUrl(%struct.HttpContext*) #1

declare dso_local i32 @gcGetPassFromUrl(%struct.HttpContext*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @httpSendErrorResp(%struct.HttpContext*, i32) #1

declare dso_local i32 @gcProcessQueryRequest(%struct.HttpContext*) #1

declare dso_local i32 @gcProcessHeartbeatRequest(%struct.HttpContext*) #1

declare dso_local i32 @gcProcessLoginRequest(%struct.HttpContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
