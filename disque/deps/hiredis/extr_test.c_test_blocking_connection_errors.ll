; ModuleID = '/home/carl/AnghaBench/disque/deps/hiredis/extr_test.c_test_blocking_connection_errors.c'
source_filename = "/home/carl/AnghaBench/disque/deps/hiredis/extr_test.c_test_blocking_connection_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Returns error when host cannot be resolved: \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"idontexist.local\00", align 1
@REDIS_ERR_OTHER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Name or service not known\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Can't resolve: idontexist.local\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"nodename nor servname provided, or not known\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"No address associated with hostname\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"no address associated with name\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Returns error when the port is not open: \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@REDIS_ERR_IO = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c"Connection refused\00", align 1
@.str.10 = private unnamed_addr constant [69 x i8] c"Returns error when the unix socket path doesn't accept connections: \00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"/tmp/idontexist.sock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_blocking_connection_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_blocking_connection_errors() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = call i32 @test(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %3 = call %struct.TYPE_5__* @redisConnect(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 6379)
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %1, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @REDIS_ERR_OTHER, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %41

9:                                                ; preds = %0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @strcmp(i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %9
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @strcmp(i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %15
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @strcmp(i32 %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @strcmp(i32 %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @strcmp(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br label %39

39:                                               ; preds = %33, %27, %21, %15, %9
  %40 = phi i1 [ true, %27 ], [ true, %21 ], [ true, %15 ], [ true, %9 ], [ %38, %33 ]
  br label %41

41:                                               ; preds = %39, %0
  %42 = phi i1 [ false, %0 ], [ %40, %39 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @test_cond(i32 %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %46 = call i32 @redisFree(%struct.TYPE_5__* %45)
  %47 = call i32 @test(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %48 = call %struct.TYPE_5__* @redisConnect(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 1)
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %1, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @REDIS_ERR_IO, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %41
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @strcmp(i32 %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br label %60

60:                                               ; preds = %54, %41
  %61 = phi i1 [ false, %41 ], [ %59, %54 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @test_cond(i32 %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %65 = call i32 @redisFree(%struct.TYPE_5__* %64)
  %66 = call i32 @test(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.10, i64 0, i64 0))
  %67 = call %struct.TYPE_5__* @redisConnectUnix(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** %1, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @REDIS_ERR_IO, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @test_cond(i32 %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %76 = call i32 @redisFree(%struct.TYPE_5__* %75)
  ret void
}

declare dso_local i32 @test(i8*) #1

declare dso_local %struct.TYPE_5__* @redisConnect(i8*, i32) #1

declare dso_local i32 @test_cond(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @redisFree(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @redisConnectUnix(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
