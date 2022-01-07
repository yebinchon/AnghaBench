; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/net/extr_net_sockets_common.c_vc_container_net_read.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/net/extr_net_sockets_common.c_vc_container_net_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@VC_CONTAINER_NET_ERROR_INVALID_PARAMETER = common dso_local global i8* null, align 8
@VC_CONTAINER_NET_SUCCESS = common dso_local global i8* null, align 8
@VC_CONTAINER_NET_ERROR_CONNECTION_LOST = common dso_local global i8* null, align 8
@VC_CONTAINER_NET_ERROR_TIMED_OUT = common dso_local global i8* null, align 8
@VC_CONTAINER_NET_ERROR_NOT_ALLOWED = common dso_local global i8* null, align 8
@SOCKET_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vc_container_net_read(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %99

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** @VC_CONTAINER_NET_ERROR_INVALID_PARAMETER, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  store i64 0, i64* %4, align 8
  br label %99

19:                                               ; preds = %12
  %20 = load i8*, i8** @VC_CONTAINER_NET_SUCCESS, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %84 [
    i32 129, label %26
    i32 128, label %26
    i32 130, label %53
  ]

26:                                               ; preds = %19, %19
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @socket_wait_for_data(%struct.TYPE_6__* %27, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %26
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @recv(i32 %36, i8* %37, i32 %39, i32 0)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %33
  %44 = load i8*, i8** @VC_CONTAINER_NET_ERROR_CONNECTION_LOST, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %43, %33
  br label %52

48:                                               ; preds = %26
  %49 = load i8*, i8** @VC_CONTAINER_NET_ERROR_TIMED_OUT, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %48, %47
  br label %88

53:                                               ; preds = %19
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @socket_wait_for_data(%struct.TYPE_6__* %54, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %53
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = call i32 @recvfrom(i32 %63, i8* %64, i64 %65, i32 0, i32* %68, i32* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %60
  %75 = load i8*, i8** @VC_CONTAINER_NET_ERROR_CONNECTION_LOST, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %74, %60
  br label %83

79:                                               ; preds = %53
  %80 = load i8*, i8** @VC_CONTAINER_NET_ERROR_TIMED_OUT, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %79, %78
  br label %88

84:                                               ; preds = %19
  %85 = load i8*, i8** @VC_CONTAINER_NET_ERROR_NOT_ALLOWED, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %84, %83, %52
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @SOCKET_ERROR, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = call i8* (...) @vc_container_net_private_last_error()
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %92, %88
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %4, align 8
  br label %99

99:                                               ; preds = %96, %15, %11
  %100 = load i64, i64* %4, align 8
  ret i64 %100
}

declare dso_local i32 @socket_wait_for_data(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @recvfrom(i32, i8*, i64, i32, i32*, i32*) #1

declare dso_local i8* @vc_container_net_private_last_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
