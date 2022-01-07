; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_nat64_ipv6.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_nat64_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.pf_pdesc = type { i32, i32, i64, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ip = type { i32, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i64 }
%struct.mbuf = type { i32 }
%struct.icmp = type { i8* }

@PF_DROP = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@IPPROTO_ICMP = common dso_local global i64 0, align 8
@ICMP_MINLEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@PF_NAT64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, %struct.pf_pdesc*)* @pf_nat64_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_nat64_ipv6(%struct.TYPE_11__* %0, i32 %1, %struct.pf_pdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pf_pdesc*, align 8
  %8 = alloca %struct.ip*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.icmp*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pf_pdesc* %2, %struct.pf_pdesc** %7, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @PF_DROP, align 4
  store i32 %17, i32* %4, align 4
  br label %127

18:                                               ; preds = %3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @pbuf_resize_segment(%struct.TYPE_11__* %19, i32 0, i32 %20, i32 72)
  %22 = inttoptr i64 %21 to %struct.ip*
  store %struct.ip* %22, %struct.ip** %8, align 8
  %23 = load %struct.ip*, %struct.ip** %8, align 8
  %24 = icmp eq %struct.ip* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @PF_DROP, align 4
  store i32 %26, i32* %4, align 4
  br label %127

27:                                               ; preds = %18
  %28 = load %struct.ip*, %struct.ip** %8, align 8
  %29 = getelementptr inbounds %struct.ip, %struct.ip* %28, i32 0, i32 0
  store i32 4, i32* %29, align 8
  %30 = load %struct.ip*, %struct.ip** %8, align 8
  %31 = getelementptr inbounds %struct.ip, %struct.ip* %30, i32 0, i32 1
  store i32 5, i32* %31, align 4
  %32 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %33 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @htonl(i32 267386880)
  %36 = and i32 %34, %35
  %37 = load %struct.ip*, %struct.ip** %8, align 8
  %38 = getelementptr inbounds %struct.ip, %struct.ip* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %40 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = add i64 72, %44
  %46 = trunc i64 %45 to i32
  %47 = call i8* @htons(i32 %46)
  %48 = load %struct.ip*, %struct.ip** %8, align 8
  %49 = getelementptr inbounds %struct.ip, %struct.ip* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load %struct.ip*, %struct.ip** %8, align 8
  %51 = getelementptr inbounds %struct.ip, %struct.ip* %50, i32 0, i32 10
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @IP_DF, align 4
  %53 = call i8* @htons(i32 %52)
  %54 = load %struct.ip*, %struct.ip** %8, align 8
  %55 = getelementptr inbounds %struct.ip, %struct.ip* %54, i32 0, i32 9
  store i8* %53, i8** %55, align 8
  %56 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %57 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ip*, %struct.ip** %8, align 8
  %60 = getelementptr inbounds %struct.ip, %struct.ip* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 8
  %61 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %62 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ip*, %struct.ip** %8, align 8
  %65 = getelementptr inbounds %struct.ip, %struct.ip* %64, i32 0, i32 3
  store i64 %63, i64* %65, align 8
  %66 = load %struct.ip*, %struct.ip** %8, align 8
  %67 = getelementptr inbounds %struct.ip, %struct.ip* %66, i32 0, i32 5
  store i8* null, i8** %67, align 8
  %68 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %69 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ip*, %struct.ip** %8, align 8
  %73 = getelementptr inbounds %struct.ip, %struct.ip* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 4
  %74 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %75 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ip*, %struct.ip** %8, align 8
  %79 = getelementptr inbounds %struct.ip, %struct.ip* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %81 = load %struct.ip*, %struct.ip** %8, align 8
  %82 = getelementptr inbounds %struct.ip, %struct.ip* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 2
  %85 = call i8* @pbuf_inet_cksum(%struct.TYPE_11__* %80, i32 0, i32 0, i32 %84)
  %86 = load %struct.ip*, %struct.ip** %8, align 8
  %87 = getelementptr inbounds %struct.ip, %struct.ip* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  %88 = load %struct.pf_pdesc*, %struct.pf_pdesc** %7, align 8
  %89 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @IPPROTO_ICMP, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %117

93:                                               ; preds = %27
  store i32 72, i32* %11, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @ICMP_MINLEN, align 4
  %97 = call i64 @pbuf_contig_segment(%struct.TYPE_11__* %94, i32 %95, i32 %96)
  %98 = inttoptr i64 %97 to %struct.icmp*
  store %struct.icmp* %98, %struct.icmp** %10, align 8
  %99 = load %struct.icmp*, %struct.icmp** %10, align 8
  %100 = icmp eq %struct.icmp* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i32, i32* @PF_DROP, align 4
  store i32 %102, i32* %4, align 4
  br label %127

103:                                              ; preds = %93
  %104 = load %struct.icmp*, %struct.icmp** %10, align 8
  %105 = getelementptr inbounds %struct.icmp, %struct.icmp* %104, i32 0, i32 0
  store i8* null, i8** %105, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.ip*, %struct.ip** %8, align 8
  %109 = getelementptr inbounds %struct.ip, %struct.ip* %108, i32 0, i32 4
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @ntohs(i8* %110)
  %112 = load i32, i32* %11, align 4
  %113 = sub nsw i32 %111, %112
  %114 = call i8* @pbuf_inet_cksum(%struct.TYPE_11__* %106, i32 0, i32 %107, i32 %113)
  %115 = load %struct.icmp*, %struct.icmp** %10, align 8
  %116 = getelementptr inbounds %struct.icmp, %struct.icmp* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  br label %117

117:                                              ; preds = %103, %27
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %119 = load i32, i32* @TRUE, align 4
  %120 = call %struct.mbuf* @pbuf_to_mbuf(%struct.TYPE_11__* %118, i32 %119)
  store %struct.mbuf* %120, %struct.mbuf** %9, align 8
  %121 = icmp ne %struct.mbuf* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %124 = call i32 @ip_input(%struct.mbuf* %123)
  br label %125

125:                                              ; preds = %122, %117
  %126 = load i32, i32* @PF_NAT64, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %125, %101, %25, %16
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i64 @pbuf_resize_segment(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i8* @pbuf_inet_cksum(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i64 @pbuf_contig_segment(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ntohs(i8*) #1

declare dso_local %struct.mbuf* @pbuf_to_mbuf(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ip_input(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
