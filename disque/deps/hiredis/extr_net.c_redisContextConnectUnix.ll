; ModuleID = '/home/carl/AnghaBench/disque/deps/hiredis/extr_net.c_redisContextConnectUnix.c'
source_filename = "/home/carl/AnghaBench/disque/deps/hiredis/extr_net.c_redisContextConnectUnix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.timeval = type { i32 }
%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@REDIS_BLOCK = common dso_local global i32 0, align 4
@AF_LOCAL = common dso_local global i32 0, align 4
@REDIS_ERR = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@REDIS_CONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redisContextConnectUnix(%struct.TYPE_6__* %0, i8* %1, %struct.timeval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.timeval*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_un, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.timeval* %2, %struct.timeval** %7, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @REDIS_BLOCK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = load i32, i32* @AF_LOCAL, align 4
  %17 = call i64 @redisCreateSocket(%struct.TYPE_6__* %15, i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @REDIS_ERR, align 4
  store i32 %20, i32* %4, align 4
  br label %77

21:                                               ; preds = %3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = call i64 @redisSetBlocking(%struct.TYPE_6__* %22, i32 0)
  %24 = load i64, i64* @REDIS_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @REDIS_ERR, align 4
  store i32 %27, i32* %4, align 4
  br label %77

28:                                               ; preds = %21
  %29 = load i32, i32* @AF_LOCAL, align 4
  %30 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %9, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %9, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strncpy(i32 %32, i8* %33, i32 3)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = bitcast %struct.sockaddr_un* %9 to %struct.sockaddr*
  %39 = call i32 @connect(i32 %37, %struct.sockaddr* %38, i32 8)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %59

41:                                               ; preds = %28
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EINPROGRESS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  br label %58

49:                                               ; preds = %45, %41
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = load %struct.timeval*, %struct.timeval** %7, align 8
  %52 = call i64 @redisContextWaitReady(%struct.TYPE_6__* %50, %struct.timeval* %51)
  %53 = load i64, i64* @REDIS_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @REDIS_ERR, align 4
  store i32 %56, i32* %4, align 4
  br label %77

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %48
  br label %59

59:                                               ; preds = %58, %28
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = call i64 @redisSetBlocking(%struct.TYPE_6__* %63, i32 1)
  %65 = load i64, i64* @REDIS_OK, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @REDIS_ERR, align 4
  store i32 %68, i32* %4, align 4
  br label %77

69:                                               ; preds = %62, %59
  %70 = load i32, i32* @REDIS_CONNECTED, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i64, i64* @REDIS_OK, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %69, %67, %55, %26, %19
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @redisCreateSocket(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @redisSetBlocking(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @redisContextWaitReady(%struct.TYPE_6__*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
