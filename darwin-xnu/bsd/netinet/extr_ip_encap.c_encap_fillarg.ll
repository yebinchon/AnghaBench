; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_encap.c_encap_fillarg.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_encap.c_encap_fillarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.encaptab = type { i32 }
%struct.m_tag = type { i32 }
%struct.encaptabtag = type { i32 }

@KERNEL_MODULE_TAG_ID = common dso_local global i32 0, align 4
@KERNEL_TAG_TYPE_ENCAP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*, %struct.encaptab*)* @encap_fillarg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encap_fillarg(%struct.mbuf* %0, %struct.encaptab* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.encaptab*, align 8
  %5 = alloca %struct.m_tag*, align 8
  %6 = alloca %struct.encaptabtag*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store %struct.encaptab* %1, %struct.encaptab** %4, align 8
  %7 = load i32, i32* @KERNEL_MODULE_TAG_ID, align 4
  %8 = load i32, i32* @KERNEL_TAG_TYPE_ENCAP, align 4
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %11 = call %struct.m_tag* @m_tag_create(i32 %7, i32 %8, i32 4, i32 %9, %struct.mbuf* %10)
  store %struct.m_tag* %11, %struct.m_tag** %5, align 8
  %12 = load %struct.m_tag*, %struct.m_tag** %5, align 8
  %13 = icmp ne %struct.m_tag* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.m_tag*, %struct.m_tag** %5, align 8
  %16 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %15, i64 1
  %17 = bitcast %struct.m_tag* %16 to %struct.encaptabtag*
  store %struct.encaptabtag* %17, %struct.encaptabtag** %6, align 8
  %18 = load %struct.encaptab*, %struct.encaptab** %4, align 8
  %19 = getelementptr inbounds %struct.encaptab, %struct.encaptab* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.encaptabtag*, %struct.encaptabtag** %6, align 8
  %22 = getelementptr inbounds %struct.encaptabtag, %struct.encaptabtag* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %24 = load %struct.m_tag*, %struct.m_tag** %5, align 8
  %25 = call i32 @m_tag_prepend(%struct.mbuf* %23, %struct.m_tag* %24)
  br label %26

26:                                               ; preds = %14, %2
  ret void
}

declare dso_local %struct.m_tag* @m_tag_create(i32, i32, i32, i32, %struct.mbuf*) #1

declare dso_local i32 @m_tag_prepend(%struct.mbuf*, %struct.m_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
