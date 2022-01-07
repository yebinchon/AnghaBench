; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_socket_post_kev_msg_closed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_socket_post_kev_msg_closed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.socket*, %struct.sockaddr**)*, i32 (%struct.socket*, %struct.sockaddr**)* }
%struct.sockaddr = type { i32 }
%struct.kev_socket_closed = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@KEV_SOCKET_CLOSED = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @socket_post_kev_msg_closed(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.kev_socket_closed, align 4
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %2, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %4, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %5, align 8
  %7 = call i32 @bzero(%struct.kev_socket_closed* %3, i32 8)
  %8 = load %struct.socket*, %struct.socket** %2, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32 (%struct.socket*, %struct.sockaddr**)*, i32 (%struct.socket*, %struct.sockaddr**)** %13, align 8
  %15 = load %struct.socket*, %struct.socket** %2, align 8
  %16 = call i32 %14(%struct.socket* %15, %struct.sockaddr** %4)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %1
  %20 = load %struct.socket*, %struct.socket** %2, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32 (%struct.socket*, %struct.sockaddr**)*, i32 (%struct.socket*, %struct.sockaddr**)** %25, align 8
  %27 = load %struct.socket*, %struct.socket** %2, align 8
  %28 = call i32 %26(%struct.socket* %27, %struct.sockaddr** %5)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.kev_socket_closed, %struct.kev_socket_closed* %3, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %35 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %36 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @min(i32 %37, i32 4)
  %39 = call i32 @memcpy(i32* %33, %struct.sockaddr* %34, i32 %38)
  %40 = getelementptr inbounds %struct.kev_socket_closed, %struct.kev_socket_closed* %3, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %43 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %44 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @min(i32 %45, i32 4)
  %47 = call i32 @memcpy(i32* %41, %struct.sockaddr* %42, i32 %46)
  %48 = load i32, i32* @KEV_SOCKET_CLOSED, align 4
  %49 = getelementptr inbounds %struct.kev_socket_closed, %struct.kev_socket_closed* %3, i32 0, i32 0
  %50 = call i32 @socket_post_kev_msg(i32 %48, %struct.TYPE_6__* %49, i32 8)
  br label %51

51:                                               ; preds = %31, %19
  br label %52

52:                                               ; preds = %51, %1
  %53 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %54 = icmp ne %struct.sockaddr* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %57 = load i32, i32* @M_SONAME, align 4
  %58 = call i32 @FREE(%struct.sockaddr* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %52
  %60 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %61 = icmp ne %struct.sockaddr* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %64 = load i32, i32* @M_SONAME, align 4
  %65 = call i32 @FREE(%struct.sockaddr* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %59
  ret void
}

declare dso_local i32 @bzero(%struct.kev_socket_closed*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @socket_post_kev_msg(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @FREE(%struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
