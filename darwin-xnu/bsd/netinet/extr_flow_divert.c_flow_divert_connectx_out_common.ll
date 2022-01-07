; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_connectx_out_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_connectx_out_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.socket*, i32*, i32, i32*, i32*, i32)* }
%struct.sockaddr = type { i32 }
%struct.proc = type { i32 }
%struct.uio = type { i32 }
%struct.inpcb = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, %struct.proc*, i32*, %struct.uio*, i64*)* @flow_divert_connectx_out_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_connectx_out_common(%struct.socket* %0, %struct.sockaddr* %1, %struct.proc* %2, i32* %3, %struct.uio* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.proc*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.uio*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.inpcb*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %8, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %9, align 8
  store %struct.proc* %2, %struct.proc** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.uio* %4, %struct.uio** %12, align 8
  store i64* %5, i64** %13, align 8
  %17 = load %struct.socket*, %struct.socket** %8, align 8
  %18 = call %struct.inpcb* @sotoinpcb(%struct.socket* %17)
  store %struct.inpcb* %18, %struct.inpcb** %14, align 8
  %19 = load %struct.inpcb*, %struct.inpcb** %14, align 8
  %20 = icmp eq %struct.inpcb* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %7, align 4
  br label %90

23:                                               ; preds = %6
  %24 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %25 = icmp ne %struct.sockaddr* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @VERIFY(i32 %26)
  %28 = load %struct.socket*, %struct.socket** %8, align 8
  %29 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %30 = load %struct.proc*, %struct.proc** %10, align 8
  %31 = call i32 @flow_divert_connect_out(%struct.socket* %28, %struct.sockaddr* %29, %struct.proc* %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %15, align 4
  store i32 %35, i32* %7, align 4
  br label %90

36:                                               ; preds = %23
  %37 = load %struct.uio*, %struct.uio** %12, align 8
  %38 = icmp ne %struct.uio* %37, null
  br i1 %38, label %39, label %80

39:                                               ; preds = %36
  store i64 0, i64* %16, align 8
  %40 = load %struct.socket*, %struct.socket** %8, align 8
  %41 = call i32 @socket_unlock(%struct.socket* %40, i32 0)
  %42 = load i64*, i64** %13, align 8
  %43 = icmp ne i64* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @VERIFY(i32 %44)
  %46 = load %struct.uio*, %struct.uio** %12, align 8
  %47 = call i64 @uio_resid(%struct.uio* %46)
  store i64 %47, i64* %16, align 8
  %48 = load %struct.socket*, %struct.socket** %8, align 8
  %49 = getelementptr inbounds %struct.socket, %struct.socket* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32 (%struct.socket*, i32*, i32, i32*, i32*, i32)*, i32 (%struct.socket*, i32*, i32, i32*, i32*, i32)** %53, align 8
  %55 = load %struct.socket*, %struct.socket** %8, align 8
  %56 = load %struct.uio*, %struct.uio** %12, align 8
  %57 = ptrtoint %struct.uio* %56 to i32
  %58 = call i32 %54(%struct.socket* %55, i32* null, i32 %57, i32* null, i32* null, i32 0)
  store i32 %58, i32* %15, align 4
  %59 = load %struct.socket*, %struct.socket** %8, align 8
  %60 = call i32 @socket_lock(%struct.socket* %59, i32 0)
  %61 = load i32, i32* %15, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %39
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* @EWOULDBLOCK, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63, %39
  %68 = load i64, i64* %16, align 8
  %69 = load %struct.uio*, %struct.uio** %12, align 8
  %70 = call i64 @uio_resid(%struct.uio* %69)
  %71 = sub nsw i64 %68, %70
  %72 = load i64*, i64** %13, align 8
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %67, %63
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* @EWOULDBLOCK, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @EINPROGRESS, align 4
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %77, %73
  br label %80

80:                                               ; preds = %79, %36
  %81 = load i32, i32* %15, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i32*, i32** %11, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32*, i32** %11, align 8
  store i32 1, i32* %87, align 4
  br label %88

88:                                               ; preds = %86, %83, %80
  %89 = load i32, i32* %15, align 4
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %88, %34, %21
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @flow_divert_connect_out(%struct.socket*, %struct.sockaddr*, %struct.proc*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i64 @uio_resid(%struct.uio*) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
