; ModuleID = '/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterStartHandshake.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterStartHandshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.sockaddr_storage = type { i64 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@NET_IP_STR_LEN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@CLUSTER_PORT_INCR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CLUSTER_NODE_HANDSHAKE = common dso_local global i32 0, align 4
@CLUSTER_NODE_MEET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clusterStartHandshake(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sockaddr_storage, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @NET_IP_STR_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i64, i64* @AF_INET, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr_in*
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  %19 = call i64 @inet_pton(i64 %15, i8* %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i64, i64* @AF_INET, align 8
  %23 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  br label %37

24:                                               ; preds = %2
  %25 = load i64, i64* @AF_INET6, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr_in6*
  %28 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %27, i32 0, i32 0
  %29 = call i64 @inet_pton(i64 %25, i8* %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i64, i64* @AF_INET6, align 8
  %33 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  br label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* @errno, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %88

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %21
  %38 = load i32, i32* %5, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @CLUSTER_PORT_INCR, align 4
  %43 = sub nsw i32 65535, %42
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40, %37
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* @errno, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %88

47:                                               ; preds = %40
  %48 = load i32, i32* @NET_IP_STR_LEN, align 4
  %49 = call i32 @memset(i8* %14, i32 0, i32 %48)
  %50 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AF_INET, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load i64, i64* @AF_INET, align 8
  %56 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr_in*
  %57 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %56, i32 0, i32 0
  %58 = bitcast i32* %57 to i8*
  %59 = load i32, i32* @NET_IP_STR_LEN, align 4
  %60 = call i32 @inet_ntop(i64 %55, i8* %58, i8* %14, i32 %59)
  br label %68

61:                                               ; preds = %47
  %62 = load i64, i64* @AF_INET6, align 8
  %63 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr_in6*
  %64 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %63, i32 0, i32 0
  %65 = bitcast i32* %64 to i8*
  %66 = load i32, i32* @NET_IP_STR_LEN, align 4
  %67 = call i32 @inet_ntop(i64 %62, i8* %65, i8* %14, i32 %66)
  br label %68

68:                                               ; preds = %61, %54
  %69 = load i32, i32* %5, align 4
  %70 = call i64 @clusterHandshakeInProgress(i8* %14, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @EAGAIN, align 4
  store i32 %73, i32* @errno, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %88

74:                                               ; preds = %68
  %75 = load i32, i32* @CLUSTER_NODE_HANDSHAKE, align 4
  %76 = load i32, i32* @CLUSTER_NODE_MEET, align 4
  %77 = or i32 %75, %76
  %78 = call %struct.TYPE_4__* @createClusterNode(i32* null, i32 %77)
  store %struct.TYPE_4__* %78, %struct.TYPE_4__** %6, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @memcpy(i32 %81, i8* %14, i32 4)
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %87 = call i32 @clusterAddNode(%struct.TYPE_4__* %86)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %88

88:                                               ; preds = %74, %72, %45, %34
  %89 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @inet_pton(i64, i8*, i32*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @inet_ntop(i64, i8*, i8*, i32) #2

declare dso_local i64 @clusterHandshakeInProgress(i8*, i32) #2

declare dso_local %struct.TYPE_4__* @createClusterNode(i32*, i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @clusterAddNode(%struct.TYPE_4__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
