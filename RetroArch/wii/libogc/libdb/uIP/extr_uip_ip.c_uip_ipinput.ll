; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_ip.c_uip_ipinput.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_ip.c_uip_ipinput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.uip_netif = type { i32, %struct.uip_netif* }
%struct.uip_pbuf = type { i32, %struct.uip_ip_hdr* }
%struct.uip_ip_hdr = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"uip_ipinput: ip packet dropped due to bad version number.\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"uip_ipinput: ip packet dropped due to too small packet size.\0A\00", align 1
@uip_stat = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"uip_ipinput: bad checksum.\0A\00", align 1
@uip_netif_list = common dso_local global %struct.uip_netif* null, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"uip_ipinput: no route found.\0A\00", align 1
@UIP_IP_OFFMASK = common dso_local global i32 0, align 4
@UIP_IP_MF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"ip: fragment dropped.\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"uip_ipinput: Unsupported protocol.\0A\00", align 1
@UIP_ICMP_DUR_PROTO = common dso_local global i32 0, align 4
@UIP_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uip_ipinput(%struct.uip_pbuf* %0, %struct.uip_netif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uip_pbuf*, align 8
  %5 = alloca %struct.uip_netif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uip_ip_hdr*, align 8
  %8 = alloca %struct.uip_netif*, align 8
  store %struct.uip_pbuf* %0, %struct.uip_pbuf** %4, align 8
  store %struct.uip_netif* %1, %struct.uip_netif** %5, align 8
  %9 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %10 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %9, i32 0, i32 1
  %11 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %10, align 8
  store %struct.uip_ip_hdr* %11, %struct.uip_ip_hdr** %7, align 8
  %12 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %7, align 8
  %13 = call i32 @UIP_IPH_V(%struct.uip_ip_hdr* %12)
  %14 = icmp ne i32 %13, 4
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = call i32 @UIP_ERROR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %18 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %17)
  store i32 0, i32* %3, align 4
  br label %144

19:                                               ; preds = %2
  %20 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %7, align 8
  %21 = call i32 @UIP_IPH_HL(%struct.uip_ip_hdr* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 %22, 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %26 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = call i32 @UIP_ERROR(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %32 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %31)
  store i32 0, i32* %3, align 4
  br label %144

33:                                               ; preds = %19
  %34 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @uip_ipchksum(%struct.uip_ip_hdr* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uip_stat, i32 0, i32 0, i32 0), align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uip_stat, i32 0, i32 0, i32 0), align 4
  %41 = call i32 @UIP_STAT(i32 %40)
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uip_stat, i32 0, i32 0, i32 1), align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uip_stat, i32 0, i32 0, i32 1), align 4
  %44 = call i32 @UIP_STAT(i32 %43)
  %45 = call i32 @UIP_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %47 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %46)
  store i32 0, i32* %3, align 4
  br label %144

48:                                               ; preds = %33
  %49 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %50 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %7, align 8
  %51 = call i32 @UIP_IPH_LEN(%struct.uip_ip_hdr* %50)
  %52 = call i32 @ntohs(i32 %51)
  %53 = call i32 @uip_pbuf_realloc(%struct.uip_pbuf* %49, i32 %52)
  %54 = load %struct.uip_netif*, %struct.uip_netif** @uip_netif_list, align 8
  store %struct.uip_netif* %54, %struct.uip_netif** %8, align 8
  br label %55

55:                                               ; preds = %83, %48
  %56 = load %struct.uip_netif*, %struct.uip_netif** %8, align 8
  %57 = icmp ne %struct.uip_netif* %56, null
  br i1 %57, label %58, label %87

58:                                               ; preds = %55
  %59 = load %struct.uip_netif*, %struct.uip_netif** %8, align 8
  %60 = call i64 @uip_netif_isup(%struct.uip_netif* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  %63 = load %struct.uip_netif*, %struct.uip_netif** %8, align 8
  %64 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %63, i32 0, i32 0
  %65 = call i32 @ip_addr_isany(i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %82, label %67

67:                                               ; preds = %62
  %68 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %7, align 8
  %69 = getelementptr inbounds %struct.uip_ip_hdr, %struct.uip_ip_hdr* %68, i32 0, i32 0
  %70 = load %struct.uip_netif*, %struct.uip_netif** %8, align 8
  %71 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %70, i32 0, i32 0
  %72 = call i64 @ip_addr_cmp(i32* %69, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %67
  %75 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %7, align 8
  %76 = getelementptr inbounds %struct.uip_ip_hdr, %struct.uip_ip_hdr* %75, i32 0, i32 0
  %77 = load %struct.uip_netif*, %struct.uip_netif** %8, align 8
  %78 = call i64 @ip_addr_isbroadcast(i32* %76, %struct.uip_netif* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74, %67
  br label %87

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %62, %58
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.uip_netif*, %struct.uip_netif** %8, align 8
  %85 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %84, i32 0, i32 1
  %86 = load %struct.uip_netif*, %struct.uip_netif** %85, align 8
  store %struct.uip_netif* %86, %struct.uip_netif** %8, align 8
  br label %55

87:                                               ; preds = %80, %55
  %88 = load %struct.uip_netif*, %struct.uip_netif** %8, align 8
  %89 = icmp ne %struct.uip_netif* %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = call i32 @UIP_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %92 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %93 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %92)
  store i32 0, i32* %3, align 4
  br label %144

94:                                               ; preds = %87
  %95 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %7, align 8
  %96 = call i32 @UIP_IPH_OFFSET(%struct.uip_ip_hdr* %95)
  %97 = load i32, i32* @UIP_IP_OFFMASK, align 4
  %98 = load i32, i32* @UIP_IP_MF, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @htons(i32 %99)
  %101 = and i32 %96, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %94
  %104 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %105 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %104)
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uip_stat, i32 0, i32 0, i32 0), align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uip_stat, i32 0, i32 0, i32 0), align 4
  %108 = call i32 @UIP_STAT(i32 %107)
  %109 = call i32 @UIP_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %144

110:                                              ; preds = %94
  %111 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %7, align 8
  %112 = call i32 @UIP_IPH_PROTO(%struct.uip_ip_hdr* %111)
  switch i32 %112, label %121 [
    i32 128, label %113
    i32 129, label %117
  ]

113:                                              ; preds = %110
  %114 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %115 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %116 = call i32 @uip_tcpinput(%struct.uip_pbuf* %114, %struct.uip_netif* %115)
  br label %143

117:                                              ; preds = %110
  %118 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %119 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %120 = call i32 @uip_icmpinput(%struct.uip_pbuf* %118, %struct.uip_netif* %119)
  br label %143

121:                                              ; preds = %110
  %122 = call i32 @UIP_LOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %123 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %7, align 8
  %124 = getelementptr inbounds %struct.uip_ip_hdr, %struct.uip_ip_hdr* %123, i32 0, i32 0
  %125 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %126 = call i64 @ip_addr_isbroadcast(i32* %124, %struct.uip_netif* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %121
  %129 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %7, align 8
  %130 = getelementptr inbounds %struct.uip_ip_hdr, %struct.uip_ip_hdr* %129, i32 0, i32 0
  %131 = call i32 @ip_addr_ismulticast(i32* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %128
  %134 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %7, align 8
  %135 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %136 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %135, i32 0, i32 1
  store %struct.uip_ip_hdr* %134, %struct.uip_ip_hdr** %136, align 8
  %137 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %138 = load i32, i32* @UIP_ICMP_DUR_PROTO, align 4
  %139 = call i32 @uip_icmp_destunreach(%struct.uip_pbuf* %137, i32 %138)
  br label %140

140:                                              ; preds = %133, %128, %121
  %141 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  %142 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %141)
  br label %143

143:                                              ; preds = %140, %117, %113
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %143, %103, %90, %38, %29, %15
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @UIP_IPH_V(%struct.uip_ip_hdr*) #1

declare dso_local i32 @UIP_ERROR(i8*) #1

declare dso_local i32 @uip_pbuf_free(%struct.uip_pbuf*) #1

declare dso_local i32 @UIP_IPH_HL(%struct.uip_ip_hdr*) #1

declare dso_local i64 @uip_ipchksum(%struct.uip_ip_hdr*, i32) #1

declare dso_local i32 @UIP_STAT(i32) #1

declare dso_local i32 @uip_pbuf_realloc(%struct.uip_pbuf*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @UIP_IPH_LEN(%struct.uip_ip_hdr*) #1

declare dso_local i64 @uip_netif_isup(%struct.uip_netif*) #1

declare dso_local i32 @ip_addr_isany(i32*) #1

declare dso_local i64 @ip_addr_cmp(i32*, i32*) #1

declare dso_local i64 @ip_addr_isbroadcast(i32*, %struct.uip_netif*) #1

declare dso_local i32 @UIP_IPH_OFFSET(%struct.uip_ip_hdr*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @UIP_IPH_PROTO(%struct.uip_ip_hdr*) #1

declare dso_local i32 @uip_tcpinput(%struct.uip_pbuf*, %struct.uip_netif*) #1

declare dso_local i32 @uip_icmpinput(%struct.uip_pbuf*, %struct.uip_netif*) #1

declare dso_local i32 @UIP_LOG(i8*) #1

declare dso_local i32 @ip_addr_ismulticast(i32*) #1

declare dso_local i32 @uip_icmp_destunreach(%struct.uip_pbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
