; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_input.c_ip6_input_adjust.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_input.c_ip6_input_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.mbuf = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i64, i64, i32 }
%struct.ip6_hdr = type { i64 }
%struct.ifnet = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@ip6_adj_clear_hwcksum = common dso_local global i64 0, align 8
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@PKTF_LOOP = common dso_local global i32 0, align 4
@ip6stat = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ip6_adj_partial_sum = common dso_local global i64 0, align 8
@CSUM_PARTIAL = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*, %struct.ip6_hdr*, i64, %struct.ifnet*)* @ip6_input_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_input_adjust(%struct.mbuf* %0, %struct.ip6_hdr* %1, i64 %2, %struct.ifnet* %3) #0 {
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.ip6_hdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store %struct.ip6_hdr* %1, %struct.ip6_hdr** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.ifnet* %3, %struct.ifnet** %8, align 8
  %11 = load i64, i64* @TRUE, align 8
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = add i64 8, %12
  store i64 %13, i64* %10, align 8
  %14 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %15 = call i64 @m_pktlen(%struct.mbuf* %14)
  %16 = load i64, i64* %10, align 8
  %17 = icmp sgt i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load i64, i64* @ip6_adj_clear_hwcksum, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %4
  %23 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %24 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CSUM_DATA_VALID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %22
  %31 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %32 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IFF_LOOPBACK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %30
  %38 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PKTF_LOOP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @CSUM_DATA_VALID, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %47
  store i32 %52, i32* %50, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %54 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ip6stat, i32 0, i32 1), align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ip6stat, i32 0, i32 1), align 4
  br label %58

58:                                               ; preds = %45, %37, %30, %22, %4
  %59 = load i64, i64* @ip6_adj_partial_sum, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %98

61:                                               ; preds = %58
  %62 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %63 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @CSUM_DATA_VALID, align 4
  %67 = load i32, i32* @CSUM_PARTIAL, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = load i32, i32* @CSUM_DATA_VALID, align 4
  %71 = load i32, i32* @CSUM_PARTIAL, align 4
  %72 = or i32 %70, %71
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %98

74:                                               ; preds = %61
  %75 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %76 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %77 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %81 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %86 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %84, %88
  %90 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %91 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @m_adj_sum16(%struct.mbuf* %75, i64 %79, i64 %83, i64 %89, i32 %93)
  %95 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %96 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 5
  store i32 %94, i32* %97, align 8
  br label %140

98:                                               ; preds = %61, %58
  %99 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %100 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @CSUM_DATA_VALID, align 4
  %104 = load i32, i32* @CSUM_PARTIAL, align 4
  %105 = or i32 %103, %104
  %106 = and i32 %102, %105
  %107 = load i32, i32* @CSUM_DATA_VALID, align 4
  %108 = load i32, i32* @CSUM_PARTIAL, align 4
  %109 = or i32 %107, %108
  %110 = icmp eq i32 %106, %109
  br i1 %110, label %111, label %139

111:                                              ; preds = %98
  %112 = load %struct.ip6_hdr*, %struct.ip6_hdr** %6, align 8
  %113 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @IPPROTO_TCP, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %123, label %117

117:                                              ; preds = %111
  %118 = load %struct.ip6_hdr*, %struct.ip6_hdr** %6, align 8
  %119 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @IPPROTO_UDP, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %117, %111
  %124 = load i64, i64* @FALSE, align 8
  store i64 %124, i64* %9, align 8
  br label %138

125:                                              ; preds = %117
  %126 = load i32, i32* @CSUM_DATA_VALID, align 4
  %127 = xor i32 %126, -1
  %128 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %129 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = and i32 %131, %127
  store i32 %132, i32* %130, align 8
  %133 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %134 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 4
  store i64 0, i64* %135, align 8
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ip6stat, i32 0, i32 1), align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ip6stat, i32 0, i32 1), align 4
  br label %138

138:                                              ; preds = %125, %123
  br label %139

139:                                              ; preds = %138, %98
  br label %140

140:                                              ; preds = %139, %74
  %141 = load i64, i64* %9, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %172

143:                                              ; preds = %140
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ip6stat, i32 0, i32 0), align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ip6stat, i32 0, i32 0), align 4
  %146 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %147 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %150 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %148, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %143
  %155 = load i64, i64* %10, align 8
  %156 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %157 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  %158 = load i64, i64* %10, align 8
  %159 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %160 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 3
  store i64 %158, i64* %161, align 8
  br label %171

162:                                              ; preds = %143
  %163 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %164 = load i64, i64* %10, align 8
  %165 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %166 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = sub nsw i64 %164, %168
  %170 = call i32 @m_adj(%struct.mbuf* %163, i64 %169)
  br label %171

171:                                              ; preds = %162, %154
  br label %172

172:                                              ; preds = %171, %140
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @m_pktlen(%struct.mbuf*) #1

declare dso_local i32 @m_adj_sum16(%struct.mbuf*, i64, i64, i64, i32) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
