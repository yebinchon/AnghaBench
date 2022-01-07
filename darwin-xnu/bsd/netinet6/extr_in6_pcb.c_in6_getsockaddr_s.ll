; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_pcb.c_in6_getsockaddr_s.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_pcb.c_in6_getsockaddr_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.inpcb = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_getsockaddr_s(%struct.socket* %0, %struct.sockaddr_in6* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr_in6*, align 8
  %6 = alloca %struct.inpcb*, align 8
  %7 = alloca %struct.in6_addr, align 4
  %8 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr_in6* %1, %struct.sockaddr_in6** %5, align 8
  %9 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %10 = icmp ne %struct.sockaddr_in6* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @VERIFY(i32 %11)
  %13 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %14 = call i32 @bzero(%struct.sockaddr_in6* %13, i32 4)
  %15 = load %struct.socket*, %struct.socket** %4, align 8
  %16 = call %struct.inpcb* @sotoinpcb(%struct.socket* %15)
  store %struct.inpcb* %16, %struct.inpcb** %6, align 8
  %17 = icmp eq %struct.inpcb* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %31

20:                                               ; preds = %2
  %21 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %22 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %25 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %24, i32 0, i32 0
  %26 = bitcast %struct.in6_addr* %7 to i8*
  %27 = bitcast %struct.in6_addr* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %30 = call i32 @in6_sockaddr_s(i32 %28, %struct.in6_addr* %7, %struct.sockaddr_in6* %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %20, %18
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bzero(%struct.sockaddr_in6*, i32) #1

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @in6_sockaddr_s(i32, %struct.in6_addr*, %struct.sockaddr_in6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
