; ModuleID = '/home/carl/AnghaBench/disque/src/extr_disque-cli.c_reconnectingInfo.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_disque-cli.c_reconnectingInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_8__ = type { i32, i32 }

@context = common dso_local global %struct.TYPE_7__* null, align 8
@REDIS_ERR_IO = common dso_local global i32 0, align 4
@REDIS_ERR_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Reconnecting (%d)...\0D\00", align 1
@stdout = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @reconnectingInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @reconnectingInfo() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** @context, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %1, align 8
  store i32* null, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  br label %12

12:                                               ; preds = %66, %0
  %13 = load i32*, i32** %2, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %67

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %25, %15
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @REDIS_ERR_IO, align 4
  %21 = load i32, i32* @REDIS_ERR_EOF, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @stdout, align 4
  %30 = call i32 @fflush(i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %32 = call i32 @redisFree(%struct.TYPE_7__* %31)
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 1), align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 0), align 4
  %35 = call %struct.TYPE_7__* @redisConnect(i32 %33, i32 %34)
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %1, align 8
  %36 = call i32 @usleep(i32 1000000)
  br label %16

37:                                               ; preds = %16
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %39 = call i32* @redisCommand(%struct.TYPE_7__* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32* %39, i32** %2, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %37
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @REDIS_ERR_IO, align 4
  %49 = load i32, i32* @REDIS_ERR_EOF, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* @stderr, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  %59 = call i32 @exit(i32 1) #3
  unreachable

60:                                               ; preds = %44, %37
  %61 = load i32, i32* %3, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %60
  br label %66

66:                                               ; preds = %65
  br label %12

67:                                               ; preds = %12
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  store %struct.TYPE_7__* %68, %struct.TYPE_7__** @context, align 8
  %69 = load i32*, i32** %2, align 8
  ret i32* %69
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @redisFree(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @redisConnect(i32, i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32* @redisCommand(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
