; ModuleID = '/home/carl/AnghaBench/esp-idf/components/lwip/apps/ping/extr_ping_sock.c_esp_ping_receive.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/lwip/apps/ping/extr_ping_sock.c_esp_ping_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__*, i32, i64, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.sockaddr_storage = type { i64 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.ip_hdr = type { i32 }
%struct.icmp_echo_hdr = type { i64, i64 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@IPADDR_TYPE_V4 = common dso_local global i32 0, align 4
@IPADDR_TYPE_V6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @esp_ping_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_ping_receive(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_storage, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca %struct.ip_hdr*, align 8
  %11 = alloca %struct.icmp_echo_hdr*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 8, i32* %7, align 4
  br label %12

12:                                               ; preds = %106, %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %17 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr*
  %18 = call i32 @recvfrom(i32 %15, i8* %16, i32 64, i32 0, %struct.sockaddr* %17, i32* %7)
  store i32 %18, i32* %5, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %107

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = icmp sge i32 %21, 20
  br i1 %22, label %23, label %106

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 4
  store i64 %25, i64* %27, align 8
  %28 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %6, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AF_INET, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %23
  %33 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %33, %struct.sockaddr_in** %8, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = call i32 @ip_2_ip4(i32* %35)
  %37 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 0
  %39 = call i32 @inet_addr_to_ip4addr(i32 %36, i32* %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IPADDR_TYPE_V4, align 4
  %44 = call i32 @IP_SET_TYPE_VAL(i32 %42, i32 %43)
  br label %58

45:                                               ; preds = %23
  %46 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %46, %struct.sockaddr_in6** %9, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = call i32 @ip_2_ip6(i32* %48)
  %50 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %50, i32 0, i32 0
  %52 = call i32 @inet6_addr_to_ip6addr(i32 %49, i32* %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @IPADDR_TYPE_V6, align 4
  %57 = call i32 @IP_SET_TYPE_VAL(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %45, %32
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @IP_IS_V4_VAL(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %105

64:                                               ; preds = %58
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %66 = bitcast i8* %65 to %struct.ip_hdr*
  store %struct.ip_hdr* %66, %struct.ip_hdr** %10, align 8
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %68 = load %struct.ip_hdr*, %struct.ip_hdr** %10, align 8
  %69 = call i32 @IPH_HL(%struct.ip_hdr* %68)
  %70 = mul nsw i32 %69, 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  %73 = bitcast i8* %72 to %struct.icmp_echo_hdr*
  store %struct.icmp_echo_hdr* %73, %struct.icmp_echo_hdr** %11, align 8
  %74 = load %struct.icmp_echo_hdr*, %struct.icmp_echo_hdr** %11, align 8
  %75 = getelementptr inbounds %struct.icmp_echo_hdr, %struct.icmp_echo_hdr* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %76, %81
  br i1 %82, label %83, label %104

83:                                               ; preds = %64
  %84 = load %struct.icmp_echo_hdr*, %struct.icmp_echo_hdr** %11, align 8
  %85 = getelementptr inbounds %struct.icmp_echo_hdr, %struct.icmp_echo_hdr* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %86, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %83
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = load %struct.ip_hdr*, %struct.ip_hdr** %10, align 8
  %99 = getelementptr inbounds %struct.ip_hdr, %struct.ip_hdr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %5, align 4
  store i32 %103, i32* %2, align 4
  br label %109

104:                                              ; preds = %83, %64
  br label %105

105:                                              ; preds = %104, %58
  br label %106

106:                                              ; preds = %105, %20
  store i32 8, i32* %7, align 4
  br label %12

107:                                              ; preds = %12
  %108 = load i32, i32* %5, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %107, %93
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @inet_addr_to_ip4addr(i32, i32*) #1

declare dso_local i32 @ip_2_ip4(i32*) #1

declare dso_local i32 @IP_SET_TYPE_VAL(i32, i32) #1

declare dso_local i32 @inet6_addr_to_ip6addr(i32, i32*) #1

declare dso_local i32 @ip_2_ip6(i32*) #1

declare dso_local i64 @IP_IS_V4_VAL(i32) #1

declare dso_local i32 @IPH_HL(%struct.ip_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
