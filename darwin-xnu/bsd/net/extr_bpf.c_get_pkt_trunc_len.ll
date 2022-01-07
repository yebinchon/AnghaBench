; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_get_pkt_trunc_len.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_get_pkt_trunc_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_packet = type { i32, i64 }
%struct.pktap_header = type { i32, i32, i64, i64 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@BPF_MIN_PKT_SIZE = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @get_pkt_trunc_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pkt_trunc_len(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_packet*, align 8
  %6 = alloca %struct.pktap_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32* %11 to i8*
  %13 = bitcast i8* %12 to %struct.bpf_packet*
  store %struct.bpf_packet* %13, %struct.bpf_packet** %5, align 8
  %14 = load %struct.bpf_packet*, %struct.bpf_packet** %5, align 8
  %15 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.pktap_header*
  store %struct.pktap_header* %17, %struct.pktap_header** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load %struct.pktap_header*, %struct.pktap_header** %6, align 8
  %19 = getelementptr inbounds %struct.pktap_header, %struct.pktap_header* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.bpf_packet*, %struct.bpf_packet** %5, align 8
  %22 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.pktap_header*, %struct.pktap_header** %6, align 8
  %25 = getelementptr inbounds %struct.pktap_header, %struct.pktap_header* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  %28 = sub nsw i32 %20, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.bpf_packet*, %struct.bpf_packet** %5, align 8
  %31 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %29, %32
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load %struct.pktap_header*, %struct.pktap_header** %6, align 8
  %37 = getelementptr inbounds %struct.pktap_header, %struct.pktap_header* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AF_INET, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %2
  %42 = load %struct.pktap_header*, %struct.pktap_header** %6, align 8
  %43 = getelementptr inbounds %struct.pktap_header, %struct.pktap_header* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AF_INET6, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %92

47:                                               ; preds = %41, %2
  %48 = load i32, i32* %9, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ult i64 %52, 4
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %120

55:                                               ; preds = %50
  %56 = load %struct.bpf_packet*, %struct.bpf_packet** %5, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @get_ether_trunc_len(%struct.bpf_packet* %56, i32 0, i32 %57)
  store i32 %58, i32* %7, align 4
  br label %91

59:                                               ; preds = %47
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %59
  %63 = load %struct.pktap_header*, %struct.pktap_header** %6, align 8
  %64 = getelementptr inbounds %struct.pktap_header, %struct.pktap_header* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AF_INET, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.bpf_packet*, %struct.bpf_packet** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @get_ip_trunc_len(%struct.bpf_packet* %69, i32 %70, i32 %71)
  store i32 %72, i32* %7, align 4
  br label %85

73:                                               ; preds = %62
  %74 = load %struct.pktap_header*, %struct.pktap_header** %6, align 8
  %75 = getelementptr inbounds %struct.pktap_header, %struct.pktap_header* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @AF_INET6, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.bpf_packet*, %struct.bpf_packet** %5, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @get_ip6_trunc_len(%struct.bpf_packet* %80, i32 %81, i32 %82)
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %79, %73
  br label %85

85:                                               ; preds = %84, %68
  br label %90

86:                                               ; preds = %59
  %87 = load i32, i32* @BPF_MIN_PKT_SIZE, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @min(i32 %87, i32 %88)
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %86, %85
  br label %91

91:                                               ; preds = %90, %55
  br label %110

92:                                               ; preds = %41
  %93 = load %struct.pktap_header*, %struct.pktap_header** %6, align 8
  %94 = getelementptr inbounds %struct.pktap_header, %struct.pktap_header* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @IFT_ETHER, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %92
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = icmp ult i64 %100, 4
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %120

103:                                              ; preds = %98
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @MIN(i32 20, i32 %104)
  store i32 %105, i32* %7, align 4
  br label %109

106:                                              ; preds = %92
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @MIN(i32 16, i32 %107)
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %106, %103
  br label %110

110:                                              ; preds = %109, %91
  br label %111

111:                                              ; preds = %120, %110
  %112 = load %struct.bpf_packet*, %struct.bpf_packet** %5, align 8
  %113 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %114, %115
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %116, %117
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  ret i32 %119

120:                                              ; preds = %102, %54
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %7, align 4
  br label %111
}

declare dso_local i32 @get_ether_trunc_len(%struct.bpf_packet*, i32, i32) #1

declare dso_local i32 @get_ip_trunc_len(%struct.bpf_packet*, i32, i32) #1

declare dso_local i32 @get_ip6_trunc_len(%struct.bpf_packet*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
