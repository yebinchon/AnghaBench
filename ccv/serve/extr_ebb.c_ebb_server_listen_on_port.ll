; ModuleID = '/home/carl/AnghaBench/ccv/serve/extr_ebb.c_ebb_server_listen_on_port.c'
source_filename = "/home/carl/AnghaBench/ccv/serve/extr_ebb.c_ebb_server_listen_on_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.linger = type { i32, i32 }
%struct.sockaddr_in = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"socket()\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@SO_LINGER = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"bind()\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ebb_server_listen_on_port(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.linger, align 4
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %11 = bitcast %struct.linger* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  store i32 1, i32* %9, align 4
  %12 = load i32, i32* @AF_INET, align 4
  %13 = load i32, i32* @SOCK_STREAM, align 4
  %14 = call i32 @socket(i32 %12, i32 %13, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %69

18:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SOL_SOCKET, align 4
  %21 = load i32, i32* @SO_REUSEADDR, align 4
  %22 = bitcast i32* %9 to i8*
  %23 = call i32 @setsockopt(i32 %19, i32 %20, i32 %21, i8* %22, i32 4)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SOL_SOCKET, align 4
  %26 = load i32, i32* @SO_KEEPALIVE, align 4
  %27 = bitcast i32* %9 to i8*
  %28 = call i32 @setsockopt(i32 %24, i32 %25, i32 %26, i8* %27, i32 4)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SOL_SOCKET, align 4
  %31 = load i32, i32* @SO_LINGER, align 4
  %32 = bitcast %struct.linger* %7 to i8*
  %33 = call i32 @setsockopt(i32 %29, i32 %30, i32 %31, i8* %32, i32 8)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @IPPROTO_TCP, align 4
  %36 = load i32, i32* @TCP_NODELAY, align 4
  %37 = bitcast i32* %9 to i8*
  %38 = call i32 @setsockopt(i32 %34, i32 %35, i32 %36, i8* %37, i32 4)
  %39 = call i32 @memset(%struct.sockaddr_in* %8, i32 0, i32 12)
  %40 = load i32, i32* @AF_INET, align 4
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @htons(i32 %42)
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @INADDR_ANY, align 4
  %46 = call i32 @htonl(i32 %45)
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %6, align 4
  %50 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %51 = call i64 @bind(i32 %49, %struct.sockaddr* %50, i32 12)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %18
  %54 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %69

55:                                               ; preds = %18
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @ebb_server_listen_on_fd(%struct.TYPE_6__* %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @sprintf(i32 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %61, %55
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %3, align 4
  br label %76

69:                                               ; preds = %53, %16
  %70 = load i32, i32* %6, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @close(i32 %73)
  br label %75

75:                                               ; preds = %72, %69
  store i32 -1, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %67
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #2

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @htonl(i32) #2

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @ebb_server_listen_on_fd(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @sprintf(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
