; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_pcb.c_in6_getpeeraddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_pcb.c_in6_getpeeraddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.inpcb = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_getpeeraddr(%struct.socket* %0, %struct.sockaddr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr**, align 8
  %6 = alloca %struct.inpcb*, align 8
  %7 = alloca %struct.in6_addr, align 4
  %8 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %5, align 8
  %9 = load %struct.socket*, %struct.socket** %4, align 8
  %10 = call %struct.inpcb* @sotoinpcb(%struct.socket* %9)
  store %struct.inpcb* %10, %struct.inpcb** %6, align 8
  %11 = icmp eq %struct.inpcb* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %31

14:                                               ; preds = %2
  %15 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %16 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %19 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %18, i32 0, i32 0
  %20 = bitcast %struct.in6_addr* %7 to i8*
  %21 = bitcast %struct.in6_addr* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.sockaddr* @in6_sockaddr(i32 %22, %struct.in6_addr* %7)
  %24 = load %struct.sockaddr**, %struct.sockaddr*** %5, align 8
  store %struct.sockaddr* %23, %struct.sockaddr** %24, align 8
  %25 = load %struct.sockaddr**, %struct.sockaddr*** %5, align 8
  %26 = load %struct.sockaddr*, %struct.sockaddr** %25, align 8
  %27 = icmp eq %struct.sockaddr* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %14
  %29 = load i32, i32* @ENOBUFS, align 4
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %28, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.sockaddr* @in6_sockaddr(i32, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
