; ModuleID = '/home/carl/AnghaBench/disque/deps/hiredis/examples/extr_example-libevent.c_main.c'
source_filename = "/home/carl/AnghaBench/disque/deps/hiredis/examples/extr_example-libevent.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.TYPE_7__ = type { i8*, i64 }

@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@connectCallback = common dso_local global i32 0, align 4
@disconnectCallback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"SET key %b\00", align 1
@getCallback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"end-1\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"GET key\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.event_base*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @SIGPIPE, align 4
  %9 = load i32, i32* @SIG_IGN, align 4
  %10 = call i32 @signal(i32 %8, i32 %9)
  %11 = call %struct.event_base* (...) @event_base_new()
  store %struct.event_base* %11, %struct.event_base** %6, align 8
  %12 = call %struct.TYPE_7__* @redisAsyncConnect(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 6379)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %7, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  store i32 1, i32* %3, align 4
  br label %52

22:                                               ; preds = %2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = load %struct.event_base*, %struct.event_base** %6, align 8
  %25 = call i32 @redisLibeventAttach(%struct.TYPE_7__* %23, %struct.event_base* %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = load i32, i32* @connectCallback, align 4
  %28 = call i32 @redisAsyncSetConnectCallback(%struct.TYPE_7__* %26, i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = load i32, i32* @disconnectCallback, align 4
  %31 = call i32 @redisAsyncSetDisconnectCallback(%struct.TYPE_7__* %29, i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %33, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = load i8**, i8*** %5, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %39, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = call i32 (%struct.TYPE_7__*, i32, i8*, i8*, ...) @redisAsyncCommand(%struct.TYPE_7__* %32, i32 0, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %38, i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = load i32, i32* @getCallback, align 4
  %49 = call i32 (%struct.TYPE_7__*, i32, i8*, i8*, ...) @redisAsyncCommand(%struct.TYPE_7__* %47, i32 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %50 = load %struct.event_base*, %struct.event_base** %6, align 8
  %51 = call i32 @event_base_dispatch(%struct.event_base* %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %22, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local %struct.event_base* @event_base_new(...) #1

declare dso_local %struct.TYPE_7__* @redisAsyncConnect(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @redisLibeventAttach(%struct.TYPE_7__*, %struct.event_base*) #1

declare dso_local i32 @redisAsyncSetConnectCallback(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @redisAsyncSetDisconnectCallback(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @redisAsyncCommand(%struct.TYPE_7__*, i32, i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @event_base_dispatch(%struct.event_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
