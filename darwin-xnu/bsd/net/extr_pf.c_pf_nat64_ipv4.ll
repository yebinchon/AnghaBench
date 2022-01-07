; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_nat64_ipv4.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_nat64_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.pf_pdesc = type { i32, i64, %struct.TYPE_10__, %struct.TYPE_9__, i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ip6_hdr = type { i64, i32, i32, i32, i32, i32 }
%struct.mbuf = type { i32 }
%struct.icmp6_hdr = type { i8* }
%struct.udphdr = type { i64 }

@PF_DROP = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@PF_NAT64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, %struct.pf_pdesc*)* @pf_nat64_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_nat64_ipv4(%struct.TYPE_11__* %0, i32 %1, %struct.pf_pdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pf_pdesc*, align 8
  %8 = alloca %struct.ip6_hdr*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.icmp6_hdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.udphdr*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pf_pdesc* %2, %struct.pf_pdesc** %7, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @PF_DROP, align 4
  store i32 %19, i32* %4, align 4
  br label %140

20:                                               ; preds = %3
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @pbuf_resize_segment(%struct.TYPE_11__* %21, i32 0, i32 %22, i32 32)
  %24 = inttoptr i64 %23 to %struct.ip6_hdr*
  store %struct.ip6_hdr* %24, %struct.ip6_hdr** %8, align 8
  %25 = load %struct.ip6_hdr*, %struct.ip6_hdr** %8, align 8
  %26 = icmp eq %struct.ip6_hdr* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @PF_DROP, align 4
  store i32 %28, i32* %4, align 4
  br label %140

29:                                               ; preds = %20
  %30 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %31 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 %32, 20
  %34 = or i32 1610612736, %33
  %35 = call i32 @htonl(i32 %34)
  %36 = load %struct.ip6_hdr*, %struct.ip6_hdr** %8, align 8
  %37 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %39 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %40, %42
  %44 = call i32 @htons(i64 %43)
  %45 = load %struct.ip6_hdr*, %struct.ip6_hdr** %8, align 8
  %46 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %48 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ip6_hdr*, %struct.ip6_hdr** %8, align 8
  %51 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %53 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ip6_hdr*, %struct.ip6_hdr** %8, align 8
  %56 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %58 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ip6_hdr*, %struct.ip6_hdr** %8, align 8
  %62 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %64 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ip6_hdr*, %struct.ip6_hdr** %8, align 8
  %68 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %70 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @IPPROTO_ICMPV6, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %29
  store i32 32, i32* %11, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i64 @pbuf_contig_segment(%struct.TYPE_11__* %75, i32 %76, i32 8)
  %78 = inttoptr i64 %77 to %struct.icmp6_hdr*
  store %struct.icmp6_hdr* %78, %struct.icmp6_hdr** %10, align 8
  %79 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %10, align 8
  %80 = icmp eq %struct.icmp6_hdr* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @PF_DROP, align 4
  store i32 %82, i32* %4, align 4
  br label %140

83:                                               ; preds = %74
  %84 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %10, align 8
  %85 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %84, i32 0, i32 0
  store i8* null, i8** %85, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = load i64, i64* @IPPROTO_ICMPV6, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.ip6_hdr*, %struct.ip6_hdr** %8, align 8
  %90 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @ntohs(i32 %91)
  %93 = call i8* @pbuf_inet6_cksum(%struct.TYPE_11__* %86, i64 %87, i32 %88, i32 %92)
  %94 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %10, align 8
  %95 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  br label %130

96:                                               ; preds = %29
  %97 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %98 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @IPPROTO_UDP, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %129

102:                                              ; preds = %96
  store i32 32, i32* %13, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %104 = load i32, i32* %13, align 4
  %105 = call i64 @pbuf_contig_segment(%struct.TYPE_11__* %103, i32 %104, i32 8)
  %106 = inttoptr i64 %105 to %struct.udphdr*
  store %struct.udphdr* %106, %struct.udphdr** %12, align 8
  %107 = load %struct.udphdr*, %struct.udphdr** %12, align 8
  %108 = icmp eq %struct.udphdr* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* @PF_DROP, align 4
  store i32 %110, i32* %4, align 4
  br label %140

111:                                              ; preds = %102
  %112 = load %struct.udphdr*, %struct.udphdr** %12, align 8
  %113 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %111
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %118 = load i64, i64* @IPPROTO_UDP, align 8
  %119 = load i32, i32* %13, align 4
  %120 = load %struct.ip6_hdr*, %struct.ip6_hdr** %8, align 8
  %121 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @ntohs(i32 %122)
  %124 = call i8* @pbuf_inet6_cksum(%struct.TYPE_11__* %117, i64 %118, i32 %119, i32 %123)
  %125 = ptrtoint i8* %124 to i64
  %126 = load %struct.udphdr*, %struct.udphdr** %12, align 8
  %127 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %116, %111
  br label %129

129:                                              ; preds = %128, %96
  br label %130

130:                                              ; preds = %129, %83
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %132 = load i32, i32* @TRUE, align 4
  %133 = call %struct.mbuf* @pbuf_to_mbuf(%struct.TYPE_11__* %131, i32 %132)
  store %struct.mbuf* %133, %struct.mbuf** %9, align 8
  %134 = icmp ne %struct.mbuf* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %137 = call i32 @ip6_input(%struct.mbuf* %136)
  br label %138

138:                                              ; preds = %135, %130
  %139 = load i32, i32* @PF_NAT64, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %138, %109, %81, %27, %18
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i64 @pbuf_resize_segment(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i64 @pbuf_contig_segment(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i8* @pbuf_inet6_cksum(%struct.TYPE_11__*, i64, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.mbuf* @pbuf_to_mbuf(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ip6_input(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
