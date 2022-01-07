; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ether_inet_pr_module.c_ether_inet_arp_input.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ether_inet_pr_module.c_ether_inet_arp_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }
%struct.ether_arp = type { i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.sockaddr_dl = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.sockaddr_in = type { i32, i32, i64, i32, i32, i32, i32 }

@ARPHRD_ETHER = common dso_local global i64 0, align 8
@ETHERTYPE_IP = common dso_local global i64 0, align 8
@ETHER_ADDR_LEN = common dso_local global i64 0, align 8
@etherbroadcastaddr = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_LINK = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.mbuf*)* @ether_inet_arp_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ether_inet_arp_input(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.ether_arp*, align 8
  %6 = alloca %struct.sockaddr_dl, align 8
  %7 = alloca %struct.sockaddr_in, align 8
  %8 = alloca %struct.sockaddr_in, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %9 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %10 = call i32 @mbuf_len(%struct.mbuf* %9)
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 40
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = call i64 @mbuf_pullup(%struct.mbuf** %4, i32 40)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %106

17:                                               ; preds = %13, %2
  %18 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %19 = call %struct.ether_arp* @mbuf_data(%struct.mbuf* %18)
  store %struct.ether_arp* %19, %struct.ether_arp** %5, align 8
  %20 = load %struct.ether_arp*, %struct.ether_arp** %5, align 8
  %21 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @ntohs(i32 %22)
  %24 = load i64, i64* @ARPHRD_ETHER, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %45, label %26

26:                                               ; preds = %17
  %27 = load %struct.ether_arp*, %struct.ether_arp** %5, align 8
  %28 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @ntohs(i32 %29)
  %31 = load i64, i64* @ETHERTYPE_IP, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %26
  %34 = load %struct.ether_arp*, %struct.ether_arp** %5, align 8
  %35 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %37, 4
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.ether_arp*, %struct.ether_arp** %5, align 8
  %41 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ETHER_ADDR_LEN, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39, %33, %26, %17
  %46 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %47 = call i32 @mbuf_freem(%struct.mbuf* %46)
  br label %106

48:                                               ; preds = %39
  %49 = load %struct.ether_arp*, %struct.ether_arp** %5, align 8
  %50 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @etherbroadcastaddr, align 4
  %53 = load i64, i64* @ETHER_ADDR_LEN, align 8
  %54 = call i64 @bcmp(i32 %51, i32 %52, i64 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %58 = call i32 @mbuf_freem(%struct.mbuf* %57)
  br label %106

59:                                               ; preds = %48
  %60 = call i32 @bzero(%struct.sockaddr_in* %7, i32 32)
  %61 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i32 32, i32* %61, align 8
  %62 = load i32, i32* @AF_INET, align 4
  %63 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 6
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 5
  %65 = load %struct.ether_arp*, %struct.ether_arp** %5, align 8
  %66 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @_ip_copy(i32* %64, i32 %67)
  %69 = bitcast %struct.sockaddr_in* %8 to i8*
  %70 = bitcast %struct.sockaddr_in* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 32, i1 false)
  %71 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 5
  %72 = load %struct.ether_arp*, %struct.ether_arp** %5, align 8
  %73 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @_ip_copy(i32* %71, i32 %74)
  %76 = bitcast %struct.sockaddr_dl* %6 to %struct.sockaddr_in*
  %77 = call i32 @bzero(%struct.sockaddr_in* %76, i32 32)
  %78 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %6, i32 0, i32 1
  store i32 32, i32* %78, align 4
  %79 = load i32, i32* @AF_LINK, align 4
  %80 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %6, i32 0, i32 4
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* @IFT_ETHER, align 4
  %82 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %6, i32 0, i32 3
  store i32 %81, i32* %82, align 8
  %83 = load i64, i64* @ETHER_ADDR_LEN, align 8
  %84 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %6, i32 0, i32 2
  store i64 %83, i64* %84, align 8
  %85 = load %struct.ether_arp*, %struct.ether_arp** %5, align 8
  %86 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = bitcast %struct.sockaddr_dl* %6 to %struct.sockaddr_in*
  %89 = call i32 @LLADDR(%struct.sockaddr_in* %88)
  %90 = load i64, i64* @ETHER_ADDR_LEN, align 8
  %91 = call i32 @bcopy(i32 %87, i32 %89, i64 %90)
  %92 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %93 = bitcast %struct.sockaddr_dl* %6 to %struct.sockaddr_in*
  %94 = call i32 @LLADDR(%struct.sockaddr_in* %93)
  %95 = load i64, i64* @ETHER_ADDR_LEN, align 8
  %96 = call i32 @arp_llreach_set_reachable(%struct.ifnet* %92, i32 %94, i64 %95)
  %97 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %98 = load %struct.ether_arp*, %struct.ether_arp** %5, align 8
  %99 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @ntohs(i32 %100)
  %102 = bitcast %struct.sockaddr_dl* %6 to %struct.sockaddr_in*
  %103 = call i32 @arp_ip_handle_input(%struct.ifnet* %97, i64 %101, %struct.sockaddr_in* %102, %struct.sockaddr_in* %7, %struct.sockaddr_in* %8)
  %104 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %105 = call i32 @mbuf_freem(%struct.mbuf* %104)
  br label %106

106:                                              ; preds = %59, %56, %45, %16
  ret void
}

declare dso_local i32 @mbuf_len(%struct.mbuf*) #1

declare dso_local i64 @mbuf_pullup(%struct.mbuf**, i32) #1

declare dso_local %struct.ether_arp* @mbuf_data(%struct.mbuf*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @mbuf_freem(%struct.mbuf*) #1

declare dso_local i64 @bcmp(i32, i32, i64) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @_ip_copy(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bcopy(i32, i32, i64) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_in*) #1

declare dso_local i32 @arp_llreach_set_reachable(%struct.ifnet*, i32, i64) #1

declare dso_local i32 @arp_ip_handle_input(%struct.ifnet*, i64, %struct.sockaddr_in*, %struct.sockaddr_in*, %struct.sockaddr_in*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
