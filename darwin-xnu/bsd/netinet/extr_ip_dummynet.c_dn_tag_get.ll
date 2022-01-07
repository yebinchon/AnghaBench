; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_dn_tag_get.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_dn_tag_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_pkt_tag = type { i32 }
%struct.mbuf = type { i32 }
%struct.m_tag = type { i64, i64 }

@KERNEL_MODULE_TAG_ID = common dso_local global i64 0, align 8
@KERNEL_TAG_TYPE_DUMMYNET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"packet on dummynet queue w/o dummynet tag: 0x%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dn_pkt_tag* (%struct.mbuf*)* @dn_tag_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dn_pkt_tag* @dn_tag_get(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.m_tag*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  %4 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %5 = call %struct.m_tag* @m_tag_first(%struct.mbuf* %4)
  store %struct.m_tag* %5, %struct.m_tag** %3, align 8
  %6 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  %7 = icmp ne %struct.m_tag* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  %10 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @KERNEL_MODULE_TAG_ID, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  %16 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @KERNEL_TAG_TYPE_DUMMYNET, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %14, %8, %1
  %21 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %22 = call i64 @VM_KERNEL_ADDRPERM(%struct.mbuf* %21)
  %23 = trunc i64 %22 to i32
  %24 = call i32 @panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %20, %14
  %26 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  %27 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %26, i64 1
  %28 = bitcast %struct.m_tag* %27 to %struct.dn_pkt_tag*
  ret %struct.dn_pkt_tag* %28
}

declare dso_local %struct.m_tag* @m_tag_first(%struct.mbuf*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
