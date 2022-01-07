; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mp_pcb.c_mp_getaddr_v6.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mp_pcb.c_mp_getaddr_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.mptses = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { i32 }
%struct.TYPE_3__ = type { %struct.in6_addr, i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr**, i32)* @mp_getaddr_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_getaddr_v6(%struct.socket* %0, %struct.sockaddr** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mptses*, align 8
  %9 = alloca %struct.in6_addr, align 4
  %10 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.socket*, %struct.socket** %5, align 8
  %12 = call %struct.mptses* @mpsotompte(%struct.socket* %11)
  store %struct.mptses* %12, %struct.mptses** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %3
  %16 = load %struct.mptses*, %struct.mptses** %8, align 8
  %17 = getelementptr inbounds %struct.mptses, %struct.mptses* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.mptses*, %struct.mptses** %8, align 8
  %21 = getelementptr inbounds %struct.mptses, %struct.mptses* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = bitcast %struct.in6_addr* %9 to i8*
  %24 = bitcast %struct.in6_addr* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  br label %35

25:                                               ; preds = %3
  %26 = load %struct.mptses*, %struct.mptses** %8, align 8
  %27 = getelementptr inbounds %struct.mptses, %struct.mptses* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.mptses*, %struct.mptses** %8, align 8
  %31 = getelementptr inbounds %struct.mptses, %struct.mptses* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = bitcast %struct.in6_addr* %9 to i8*
  %34 = bitcast %struct.in6_addr* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  br label %35

35:                                               ; preds = %25, %15
  %36 = load i32, i32* %10, align 4
  %37 = call %struct.sockaddr* @in6_sockaddr(i32 %36, %struct.in6_addr* %9)
  %38 = load %struct.sockaddr**, %struct.sockaddr*** %6, align 8
  store %struct.sockaddr* %37, %struct.sockaddr** %38, align 8
  %39 = load %struct.sockaddr**, %struct.sockaddr*** %6, align 8
  %40 = load %struct.sockaddr*, %struct.sockaddr** %39, align 8
  %41 = icmp eq %struct.sockaddr* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOBUFS, align 4
  store i32 %43, i32* %4, align 4
  br label %45

44:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %42
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.mptses* @mpsotompte(%struct.socket*) #1

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
