; ModuleID = '/home/carl/AnghaBench/disque/src/extr_disque-cli.c_cliConnect.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_disque-cli.c_cliConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i64 }
%struct.TYPE_7__ = type { i8*, i8*, i32 }

@context = common dso_local global %struct.TYPE_6__* null, align 8
@config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Could not connect to Disque at \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s:%d: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@REDIS_ERR = common dso_local global i32 0, align 4
@DISQUE_CLI_KEEPALIVE_INTERVAL = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cliConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cliConnect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @context, align 8
  %5 = icmp eq %struct.TYPE_6__* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %72

9:                                                ; preds = %6, %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @context, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @context, align 8
  %14 = call i32 @redisFree(%struct.TYPE_6__* %13)
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 1), align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 2), align 8
  %21 = call %struct.TYPE_6__* @redisConnect(i8* %19, i32 %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** @context, align 8
  br label %25

22:                                               ; preds = %15
  %23 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 8
  %24 = call %struct.TYPE_6__* @redisConnectUnix(i8* %23)
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** @context, align 8
  br label %25

25:                                               ; preds = %22, %18
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @context, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %25
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %33 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i32, i32* @stderr, align 4
  %37 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 1), align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 2), align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @context, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %38, i8* %41)
  br label %50

43:                                               ; preds = %30
  %44 = load i32, i32* @stderr, align 4
  %45 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @context, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %45, i8* %48)
  br label %50

50:                                               ; preds = %43, %35
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @context, align 8
  %52 = call i32 @redisFree(%struct.TYPE_6__* %51)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @context, align 8
  %53 = load i32, i32* @REDIS_ERR, align 4
  store i32 %53, i32* %2, align 4
  br label %75

54:                                               ; preds = %25
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @context, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @DISQUE_CLI_KEEPALIVE_INTERVAL, align 4
  %59 = call i32 @anetKeepAlive(i32* null, i32 %57, i32 %58)
  %60 = call i64 (...) @cliAuth()
  %61 = load i64, i64* @REDIS_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* @REDIS_ERR, align 4
  store i32 %64, i32* %2, align 4
  br label %75

65:                                               ; preds = %54
  %66 = call i64 (...) @cliSelect()
  %67 = load i64, i64* @REDIS_OK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @REDIS_ERR, align 4
  store i32 %70, i32* %2, align 4
  br label %75

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %6
  %73 = load i64, i64* @REDIS_OK, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %72, %69, %63, %50
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @redisFree(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @redisConnect(i8*, i32) #1

declare dso_local %struct.TYPE_6__* @redisConnectUnix(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @anetKeepAlive(i32*, i32, i32) #1

declare dso_local i64 @cliAuth(...) #1

declare dso_local i64 @cliSelect(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
