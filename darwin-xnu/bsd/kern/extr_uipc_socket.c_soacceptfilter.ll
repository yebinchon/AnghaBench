; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_soacceptfilter.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_soacceptfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }

@SS_NOFDREF = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@SHUTDOWN_SOCKET_LEVEL_DISCONNECT_INTERNAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soacceptfilter(%struct.socket* %0, %struct.socket* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.socket* %1, %struct.socket** %4, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.socket*, %struct.socket** %3, align 8
  %9 = call i32 @socket_lock(%struct.socket* %8, i32 1)
  %10 = load %struct.socket*, %struct.socket** %3, align 8
  %11 = call i64 @sogetaddr_locked(%struct.socket* %10, %struct.sockaddr** %6, i32 1)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load %struct.socket*, %struct.socket** %3, align 8
  %15 = call i64 @sogetaddr_locked(%struct.socket* %14, %struct.sockaddr** %5, i32 0)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %13, %2
  %18 = load i32, i32* @SS_NOFDREF, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.socket*, %struct.socket** %3, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.socket*, %struct.socket** %3, align 8
  %25 = call i32 @socket_unlock(%struct.socket* %24, i32 1)
  %26 = load %struct.socket*, %struct.socket** %3, align 8
  %27 = call i32 @soclose(%struct.socket* %26)
  %28 = load i32, i32* @ECONNABORTED, align 4
  store i32 %28, i32* %7, align 4
  br label %62

29:                                               ; preds = %13
  %30 = load %struct.socket*, %struct.socket** %4, align 8
  %31 = load %struct.socket*, %struct.socket** %3, align 8
  %32 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %33 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %34 = call i32 @sflt_accept(%struct.socket* %30, %struct.socket* %31, %struct.sockaddr* %32, %struct.sockaddr* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @EJUSTRETURN, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  %39 = call i32 (...) @current_proc()
  %40 = load %struct.socket*, %struct.socket** %3, align 8
  %41 = load i32, i32* @SHUTDOWN_SOCKET_LEVEL_DISCONNECT_INTERNAL, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = call i32 @sosetdefunct(i32 %39, %struct.socket* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %29
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load i32, i32* @SS_NOFDREF, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.socket*, %struct.socket** %3, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.socket*, %struct.socket** %3, align 8
  %55 = call i32 @socket_unlock(%struct.socket* %54, i32 1)
  %56 = load %struct.socket*, %struct.socket** %3, align 8
  %57 = call i32 @soclose(%struct.socket* %56)
  br label %61

58:                                               ; preds = %44
  %59 = load %struct.socket*, %struct.socket** %3, align 8
  %60 = call i32 @socket_unlock(%struct.socket* %59, i32 1)
  br label %61

61:                                               ; preds = %58, %47
  br label %62

62:                                               ; preds = %61, %17
  %63 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %64 = call i32 @sock_freeaddr(%struct.sockaddr* %63)
  %65 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %66 = call i32 @sock_freeaddr(%struct.sockaddr* %65)
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i64 @sogetaddr_locked(%struct.socket*, %struct.sockaddr**, i32) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @soclose(%struct.socket*) #1

declare dso_local i32 @sflt_accept(%struct.socket*, %struct.socket*, %struct.sockaddr*, %struct.sockaddr*) #1

declare dso_local i32 @sosetdefunct(i32, %struct.socket*, i32, i32) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @sock_freeaddr(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
