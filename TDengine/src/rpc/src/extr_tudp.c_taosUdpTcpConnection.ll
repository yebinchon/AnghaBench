; ModuleID = '/home/carl/AnghaBench/TDengine/src/rpc/src/extr_tudp.c_taosUdpTcpConnection.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/rpc/src/extr_tudp.c_taosUdpTcpConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"%s failed to create TCP socket %s:%d for UDP server, reason:%s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%s UDP server is created, ip:%s:%d\00", align 1
@PTHREAD_CREATE_DETACHED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"%s UDP server TCP accept failure, reason:%s\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"%s UDP server TCP connection from ip:%s:%u\00", align 1
@taosTransferDataViaTcp = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"%s failed to create thread for UDP server, reason:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @taosUdpTcpConnection(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [20 x i8], align 16
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 -1, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %10, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @taosOpenTcpServerSocket(i32 %17, i32 %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @strerror(i32 %38)
  %40 = call i32 @tPrint(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i32 %37, i32 %39)
  %41 = call i32 (...) @taosKillSystem()
  store i8* null, i8** %2, align 8
  br label %129

42:                                               ; preds = %1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, i32, i8*, ...) @tTrace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %45, i8* %50, i32 %53)
  %55 = call i32 @pthread_attr_init(i32* %6)
  %56 = load i32, i32* @PTHREAD_CREATE_DETACHED, align 4
  %57 = call i32 @pthread_attr_setdetachstate(i32* %6, i32 %56)
  br label %58

58:                                               ; preds = %42, %72, %126
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %127

64:                                               ; preds = %58
  store i32 8, i32* %11, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %69 = call i32 @accept(i64 %67, %struct.sockaddr* %68, i32* %11)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @errno, align 4
  %77 = call i32 @strerror(i32 %76)
  %78 = call i32 @tError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %77)
  br label %58

79:                                               ; preds = %64
  %80 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %8, align 4
  %83 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @tinet_ntoa(i8* %83, i32 %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %90 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @htons(i32 %91)
  %93 = call i32 (i8*, i32, i8*, ...) @tTrace(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %88, i8* %89, i32 %92)
  %94 = call %struct.TYPE_8__* @malloc(i32 24)
  store %struct.TYPE_8__* %94, %struct.TYPE_8__** %12, align 8
  %95 = load i32, i32* %4, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  store %struct.TYPE_7__* %105, %struct.TYPE_7__** %107, align 8
  %108 = load i32, i32* @taosTransferDataViaTcp, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %110 = bitcast %struct.TYPE_8__* %109 to i8*
  %111 = call i64 @pthread_create(i32* %7, i32* %6, i32 %108, i8* %110)
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %79
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @errno, align 4
  %118 = call i32 @strerror(i32 %117)
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to i8*
  %121 = call i32 (i8*, i32, i8*, ...) @tTrace(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %116, i8* %120)
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %123 = call i32 @free(%struct.TYPE_8__* %122)
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @taosCloseSocket(i32 %124)
  br label %126

126:                                              ; preds = %113, %79
  br label %58

127:                                              ; preds = %63
  %128 = call i32 @pthread_attr_destroy(i32* %6)
  store i8* null, i8** %2, align 8
  br label %129

129:                                              ; preds = %127, %28
  %130 = load i8*, i8** %2, align 8
  ret i8* %130
}

declare dso_local i64 @taosOpenTcpServerSocket(i32, i32) #1

declare dso_local i32 @tPrint(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @taosKillSystem(...) #1

declare dso_local i32 @tTrace(i8*, i32, i8*, ...) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare dso_local i32 @accept(i64, %struct.sockaddr*, i32*) #1

declare dso_local i32 @tError(i8*, i32, i32) #1

declare dso_local i32 @tinet_ntoa(i8*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i8*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @taosCloseSocket(i32) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
