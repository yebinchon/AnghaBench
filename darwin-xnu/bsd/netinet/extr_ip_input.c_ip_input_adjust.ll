; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_input.c_ip_input_adjust.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_input.c_ip_input_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.mbuf = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i64, i64, i32 }
%struct.ip = type { i64, i32, i64 }
%struct.ifnet = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@ip_adj_clear_hwcksum = common dso_local global i64 0, align 8
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@PKTF_LOOP = common dso_local global i32 0, align 4
@ipstat = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ip_adj_partial_sum = common dso_local global i64 0, align 8
@CSUM_PARTIAL = common dso_local global i32 0, align 4
@IP_MF = common dso_local global i32 0, align 4
@IP_OFFMASK = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*, %struct.ip*, %struct.ifnet*)* @ip_input_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_input_adjust(%struct.mbuf* %0, %struct.ip* %1, %struct.ifnet* %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.ip*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i64, align 8
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store %struct.ip* %1, %struct.ip** %5, align 8
  store %struct.ifnet* %2, %struct.ifnet** %6, align 8
  %8 = load i64, i64* @TRUE, align 8
  store i64 %8, i64* %7, align 8
  %9 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %10 = call i64 @m_pktlen(%struct.mbuf* %9)
  %11 = load %struct.ip*, %struct.ip** %5, align 8
  %12 = getelementptr inbounds %struct.ip, %struct.ip* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load i64, i64* @ip_adj_clear_hwcksum, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %3
  %20 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %21 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CSUM_DATA_VALID, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %19
  %28 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IFF_LOOPBACK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %55, label %34

34:                                               ; preds = %27
  %35 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PKTF_LOOP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @CSUM_DATA_VALID, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %46 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %44
  store i32 %49, i32* %47, align 8
  %50 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %51 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ipstat, i32 0, i32 1), align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ipstat, i32 0, i32 1), align 4
  br label %55

55:                                               ; preds = %42, %34, %27, %19, %3
  %56 = load i64, i64* @ip_adj_partial_sum, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %97

58:                                               ; preds = %55
  %59 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %60 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CSUM_DATA_VALID, align 4
  %64 = load i32, i32* @CSUM_PARTIAL, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = load i32, i32* @CSUM_DATA_VALID, align 4
  %68 = load i32, i32* @CSUM_PARTIAL, align 4
  %69 = or i32 %67, %68
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %58
  %72 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %73 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %74 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %78 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ip*, %struct.ip** %5, align 8
  %82 = getelementptr inbounds %struct.ip, %struct.ip* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %85 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %83, %87
  %89 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %90 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @m_adj_sum16(%struct.mbuf* %72, i64 %76, i64 %80, i64 %88, i32 %92)
  %94 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %95 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 5
  store i32 %93, i32* %96, align 8
  br label %148

97:                                               ; preds = %58, %55
  %98 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %99 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @CSUM_DATA_VALID, align 4
  %103 = load i32, i32* @CSUM_PARTIAL, align 4
  %104 = or i32 %102, %103
  %105 = and i32 %101, %104
  %106 = load i32, i32* @CSUM_DATA_VALID, align 4
  %107 = load i32, i32* @CSUM_PARTIAL, align 4
  %108 = or i32 %106, %107
  %109 = icmp eq i32 %105, %108
  br i1 %109, label %110, label %147

110:                                              ; preds = %97
  %111 = load %struct.ip*, %struct.ip** %5, align 8
  %112 = getelementptr inbounds %struct.ip, %struct.ip* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @IP_MF, align 4
  %115 = load i32, i32* @IP_OFFMASK, align 4
  %116 = or i32 %114, %115
  %117 = and i32 %113, %116
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %110
  %120 = load %struct.ip*, %struct.ip** %5, align 8
  %121 = getelementptr inbounds %struct.ip, %struct.ip* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @IPPROTO_TCP, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %131, label %125

125:                                              ; preds = %119
  %126 = load %struct.ip*, %struct.ip** %5, align 8
  %127 = getelementptr inbounds %struct.ip, %struct.ip* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @IPPROTO_UDP, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %125, %119
  %132 = load i64, i64* @FALSE, align 8
  store i64 %132, i64* %7, align 8
  br label %146

133:                                              ; preds = %125, %110
  %134 = load i32, i32* @CSUM_DATA_VALID, align 4
  %135 = xor i32 %134, -1
  %136 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %137 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, %135
  store i32 %140, i32* %138, align 8
  %141 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %142 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 4
  store i64 0, i64* %143, align 8
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ipstat, i32 0, i32 1), align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ipstat, i32 0, i32 1), align 4
  br label %146

146:                                              ; preds = %133, %131
  br label %147

147:                                              ; preds = %146, %97
  br label %148

148:                                              ; preds = %147, %71
  %149 = load i64, i64* %7, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %186

151:                                              ; preds = %148
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ipstat, i32 0, i32 0), align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ipstat, i32 0, i32 0), align 4
  %154 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %155 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %158 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %156, %160
  br i1 %161, label %162, label %174

162:                                              ; preds = %151
  %163 = load %struct.ip*, %struct.ip** %5, align 8
  %164 = getelementptr inbounds %struct.ip, %struct.ip* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %167 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %166, i32 0, i32 0
  store i64 %165, i64* %167, align 8
  %168 = load %struct.ip*, %struct.ip** %5, align 8
  %169 = getelementptr inbounds %struct.ip, %struct.ip* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %172 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 3
  store i64 %170, i64* %173, align 8
  br label %185

174:                                              ; preds = %151
  %175 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %176 = load %struct.ip*, %struct.ip** %5, align 8
  %177 = getelementptr inbounds %struct.ip, %struct.ip* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %180 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = sub nsw i64 %178, %182
  %184 = call i32 @m_adj(%struct.mbuf* %175, i64 %183)
  br label %185

185:                                              ; preds = %174, %162
  br label %186

186:                                              ; preds = %185, %148
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
