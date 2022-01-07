; ModuleID = '/home/carl/AnghaBench/disque/deps/hiredis/extr_test.c_test_blocking_io_errors.c'
source_filename = "/home/carl/AnghaBench/disque/deps/hiredis/extr_test.c_test_blocking_io_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.config = type { i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"redis_version:\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Returns I/O error when the connection is lost: \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"QUIT\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@REDIS_ERR = common dso_local global i64 0, align 8
@REDIS_ERR_EOF = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"Server closed the connection\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Returns I/O error on socket timeout: \00", align 1
@__const.test_blocking_io_errors.tv = private unnamed_addr constant %struct.timeval { i32 0, i32 1000 }, align 4
@REDIS_OK = common dso_local global i64 0, align 8
@REDIS_ERR_IO = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_blocking_io_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_blocking_io_errors(i32 %0) #0 {
  %2 = alloca %struct.config, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.timeval, align 4
  %12 = getelementptr inbounds %struct.config, %struct.config* %2, i32 0, i32 0
  store i32 %0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.config, %struct.config* %2, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_11__* @connect(i32 %14)
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %3, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = call %struct.TYPE_10__* @redisCommand(%struct.TYPE_11__* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %4, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = call i8* @strstr(i32 %20, i8* %21)
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = call i32 @strtol(i8* %27, i8** %10, i32 10)
  store i32 %28, i32* %6, align 4
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @strtol(i8* %31, i8** %10, i32 10)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = call i32 @freeReplyObject(%struct.TYPE_10__* %33)
  %35 = call i32 @test(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = call %struct.TYPE_10__* @redisCommand(%struct.TYPE_11__* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = icmp sge i32 %38, 2
  br i1 %39, label %40, label %60

40:                                               ; preds = %1
  %41 = load i32, i32* %7, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @strcasecmp(i32 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = call i64 @redisGetReply(%struct.TYPE_11__* %50, i8** %5)
  %52 = load i64, i64* @REDIS_ERR, align 8
  %53 = icmp eq i64 %51, %52
  br label %54

54:                                               ; preds = %49, %43
  %55 = phi i1 [ false, %43 ], [ %53, %49 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @test_cond(i32 %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = call i32 @freeReplyObject(%struct.TYPE_10__* %58)
  br label %65

60:                                               ; preds = %40, %1
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = icmp eq %struct.TYPE_10__* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i32 @test_cond(i32 %63)
  br label %65

65:                                               ; preds = %60, %54
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @REDIS_ERR_EOF, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @strcmp(i32 %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br label %77

77:                                               ; preds = %71, %65
  %78 = phi i1 [ false, %65 ], [ %76, %71 ]
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %82 = call i32 @redisFree(%struct.TYPE_11__* %81)
  %83 = getelementptr inbounds %struct.config, %struct.config* %2, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.TYPE_11__* @connect(i32 %84)
  store %struct.TYPE_11__* %85, %struct.TYPE_11__** %3, align 8
  %86 = call i32 @test(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %87 = bitcast %struct.timeval* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 4 bitcast (%struct.timeval* @__const.test_blocking_io_errors.tv to i8*), i64 8, i1 false)
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %89 = bitcast %struct.timeval* %11 to i64*
  %90 = load i64, i64* %89, align 4
  %91 = call i64 @redisSetTimeout(%struct.TYPE_11__* %88, i64 %90)
  %92 = load i64, i64* @REDIS_OK, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %97 = call i64 @redisGetReply(%struct.TYPE_11__* %96, i8** %5)
  %98 = load i64, i64* @REDIS_ERR, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %77
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @REDIS_ERR_IO, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i64, i64* @errno, align 8
  %108 = load i64, i64* @EAGAIN, align 8
  %109 = icmp eq i64 %107, %108
  br label %110

110:                                              ; preds = %106, %100, %77
  %111 = phi i1 [ false, %100 ], [ false, %77 ], [ %109, %106 ]
  %112 = zext i1 %111 to i32
  %113 = call i32 @test_cond(i32 %112)
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %115 = call i32 @redisFree(%struct.TYPE_11__* %114)
  ret void
}

declare dso_local %struct.TYPE_11__* @connect(i32) #1

declare dso_local %struct.TYPE_10__* @redisCommand(%struct.TYPE_11__*, i8*) #1

declare dso_local i8* @strstr(i32, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_10__*) #1

declare dso_local i32 @test(i8*) #1

declare dso_local i32 @test_cond(i32) #1

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i64 @redisGetReply(%struct.TYPE_11__*, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @redisFree(%struct.TYPE_11__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @redisSetTimeout(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
