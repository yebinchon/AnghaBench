; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_dummynet_send.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_dummynet_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.mbuf* }
%struct.dn_pkt_tag = type { i32, i32 }
%struct.route = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"dummynet_send m: 0x%llx dn_dir: %d dn_flags: 0x%x\0A\00", align 1
@IP_RAWOUTPUT = common dso_local global i32 0, align 4
@IP_FORWARDING = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"dummynet: bad switch %d!\0A\00", align 1
@IPV6_FORWARDING = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*)* @dummynet_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dummynet_send(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.dn_pkt_tag*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.route, align 4
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  br label %6

6:                                                ; preds = %59, %1
  %7 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %8 = icmp ne %struct.mbuf* %7, null
  br i1 %8, label %9, label %61

9:                                                ; preds = %6
  %10 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %11 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %10, i32 0, i32 0
  %12 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %12, %struct.mbuf** %4, align 8
  %13 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %14 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %13, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %14, align 8
  %15 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %16 = call %struct.dn_pkt_tag* @dn_tag_get(%struct.mbuf* %15)
  store %struct.dn_pkt_tag* %16, %struct.dn_pkt_tag** %3, align 8
  %17 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %18 = call i64 @VM_KERNEL_ADDRPERM(%struct.mbuf* %17)
  %19 = trunc i64 %18 to i32
  %20 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %3, align 8
  %21 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %3, align 8
  %24 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @DPRINTF(i8* %27)
  %29 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %3, align 8
  %30 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %51 [
    i32 128, label %32
    i32 129, label %47
  ]

32:                                               ; preds = %9
  %33 = call i32 @bzero(%struct.route* %5, i32 4)
  %34 = load i32, i32* @IP_RAWOUTPUT, align 4
  %35 = load i32, i32* @IP_FORWARDING, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %3, align 8
  %38 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %42 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %3, align 8
  %43 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ip_output(%struct.mbuf* %41, i32* null, %struct.route* %5, i32 %44, i32* null, i32* null)
  %46 = call i32 @ROUTE_RELEASE(%struct.route* %5)
  br label %58

47:                                               ; preds = %9
  %48 = load i32, i32* @PF_INET, align 4
  %49 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %50 = call i32 @proto_inject(i32 %48, %struct.mbuf* %49)
  br label %58

51:                                               ; preds = %9
  %52 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %3, align 8
  %53 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %57 = call i32 @m_freem(%struct.mbuf* %56)
  br label %58

58:                                               ; preds = %51, %47, %32
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %60, %struct.mbuf** %2, align 8
  br label %6

61:                                               ; preds = %6
  ret void
}

declare dso_local %struct.dn_pkt_tag* @dn_tag_get(%struct.mbuf*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.mbuf*) #1

declare dso_local i32 @bzero(%struct.route*, i32) #1

declare dso_local i32 @ip_output(%struct.mbuf*, i32*, %struct.route*, i32, i32*, i32*) #1

declare dso_local i32 @ROUTE_RELEASE(%struct.route*) #1

declare dso_local i32 @proto_inject(i32, %struct.mbuf*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
