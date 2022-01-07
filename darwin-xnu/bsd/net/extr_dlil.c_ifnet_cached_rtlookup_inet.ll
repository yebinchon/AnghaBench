; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_cached_rtlookup_inet.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_cached_rtlookup_inet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i32 }
%struct.ifnet = type { i32 }
%struct.in_addr = type { i64 }
%struct.route = type { %struct.rtentry*, i32 }
%struct.sockaddr_in = type { i64, i32, %struct.in_addr }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rtentry* @ifnet_cached_rtlookup_inet(%struct.ifnet* %0, i64 %1) #0 {
  %3 = alloca %struct.in_addr, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.route, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.rtentry*, align 8
  %8 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  store i64 %1, i64* %8, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  %9 = getelementptr inbounds %struct.route, %struct.route* %5, i32 0, i32 1
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i8* %10 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %11, %struct.sockaddr_in** %6, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = call i32 @ifp_src_route_copyout(%struct.ifnet* %12, %struct.route* %5)
  %14 = call i64 @ROUTE_UNUSABLE(%struct.route* %5)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %18, %22
  br i1 %23, label %24, label %69

24:                                               ; preds = %16, %2
  %25 = call i32 @ROUTE_RELEASE(%struct.route* %5)
  %26 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AF_INET, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.route, %struct.route* %5, i32 0, i32 1
  %33 = call i32 @bzero(i32* %32, i32 4)
  %34 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %34, i32 0, i32 1
  store i32 4, i32* %35, align 8
  %36 = load i64, i64* @AF_INET, align 8
  %37 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %31, %24
  %40 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %40, i32 0, i32 2
  %42 = bitcast %struct.in_addr* %41 to i8*
  %43 = bitcast %struct.in_addr* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 8, i1 false)
  %44 = getelementptr inbounds %struct.route, %struct.route* %5, i32 0, i32 0
  %45 = load %struct.rtentry*, %struct.rtentry** %44, align 8
  %46 = icmp eq %struct.rtentry* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @VERIFY(i32 %47)
  %49 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %50 = bitcast %struct.sockaddr_in* %49 to %struct.sockaddr*
  %51 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.rtentry* @rtalloc1_scoped(%struct.sockaddr* %50, i32 0, i32 0, i32 %53)
  %55 = getelementptr inbounds %struct.route, %struct.route* %5, i32 0, i32 0
  store %struct.rtentry* %54, %struct.rtentry** %55, align 8
  %56 = getelementptr inbounds %struct.route, %struct.route* %5, i32 0, i32 0
  %57 = load %struct.rtentry*, %struct.rtentry** %56, align 8
  %58 = icmp ne %struct.rtentry* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %39
  %60 = getelementptr inbounds %struct.route, %struct.route* %5, i32 0, i32 0
  %61 = load %struct.rtentry*, %struct.rtentry** %60, align 8
  store %struct.rtentry* %61, %struct.rtentry** %7, align 8
  %62 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %63 = call i32 @RT_ADDREF(%struct.rtentry* %62)
  %64 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %65 = call i32 @ifp_src_route_copyin(%struct.ifnet* %64, %struct.route* %5)
  %66 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %67 = getelementptr inbounds %struct.route, %struct.route* %5, i32 0, i32 0
  store %struct.rtentry* %66, %struct.rtentry** %67, align 8
  br label %68

68:                                               ; preds = %59, %39
  br label %69

69:                                               ; preds = %68, %16
  %70 = getelementptr inbounds %struct.route, %struct.route* %5, i32 0, i32 0
  %71 = load %struct.rtentry*, %struct.rtentry** %70, align 8
  ret %struct.rtentry* %71
}

declare dso_local i32 @ifp_src_route_copyout(%struct.ifnet*, %struct.route*) #1

declare dso_local i64 @ROUTE_UNUSABLE(%struct.route*) #1

declare dso_local i32 @ROUTE_RELEASE(%struct.route*) #1

declare dso_local i32 @bzero(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.rtentry* @rtalloc1_scoped(%struct.sockaddr*, i32, i32, i32) #1

declare dso_local i32 @RT_ADDREF(%struct.rtentry*) #1

declare dso_local i32 @ifp_src_route_copyin(%struct.ifnet*, %struct.route*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
