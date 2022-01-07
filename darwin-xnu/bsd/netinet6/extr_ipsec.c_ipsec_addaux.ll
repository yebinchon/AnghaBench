; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ipsec.c_ipsec_addaux.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ipsec.c_ipsec_addaux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipsec_tag = type { i64, i64 }
%struct.mbuf = type { i32 }
%struct.m_tag = type { i32 }

@KERNEL_MODULE_TAG_ID = common dso_local global i32 0, align 4
@KERNEL_TAG_TYPE_IPSEC = common dso_local global i32 0, align 4
@IPSEC_TAG_SIZE = common dso_local global i32 0, align 4
@M_DONTWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipsec_tag* (%struct.mbuf*)* @ipsec_addaux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipsec_tag* @ipsec_addaux(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.m_tag*, align 8
  %4 = alloca %struct.ipsec_tag*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  %5 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %6 = load i32, i32* @KERNEL_MODULE_TAG_ID, align 4
  %7 = load i32, i32* @KERNEL_TAG_TYPE_IPSEC, align 4
  %8 = call %struct.m_tag* @m_tag_locate(%struct.mbuf* %5, i32 %6, i32 %7, i32* null)
  store %struct.m_tag* %8, %struct.m_tag** %3, align 8
  %9 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  %10 = icmp eq %struct.m_tag* %9, null
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load i32, i32* @KERNEL_MODULE_TAG_ID, align 4
  %13 = load i32, i32* @KERNEL_TAG_TYPE_IPSEC, align 4
  %14 = load i32, i32* @IPSEC_TAG_SIZE, align 4
  %15 = load i32, i32* @M_DONTWAIT, align 4
  %16 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %17 = call %struct.m_tag* @m_tag_create(i32 %12, i32 %13, i32 %14, i32 %15, %struct.mbuf* %16)
  store %struct.m_tag* %17, %struct.m_tag** %3, align 8
  %18 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  %19 = icmp ne %struct.m_tag* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %11
  %21 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  %22 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %21, i64 1
  %23 = bitcast %struct.m_tag* %22 to %struct.ipsec_tag*
  store %struct.ipsec_tag* %23, %struct.ipsec_tag** %4, align 8
  %24 = load %struct.ipsec_tag*, %struct.ipsec_tag** %4, align 8
  %25 = getelementptr inbounds %struct.ipsec_tag, %struct.ipsec_tag* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.ipsec_tag*, %struct.ipsec_tag** %4, align 8
  %27 = getelementptr inbounds %struct.ipsec_tag, %struct.ipsec_tag* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %29 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  %30 = call i32 @m_tag_prepend(%struct.mbuf* %28, %struct.m_tag* %29)
  br label %31

31:                                               ; preds = %20, %11
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  %34 = icmp ne %struct.m_tag* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  %37 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %36, i64 1
  %38 = bitcast %struct.m_tag* %37 to %struct.ipsec_tag*
  br label %40

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi %struct.ipsec_tag* [ %38, %35 ], [ null, %39 ]
  ret %struct.ipsec_tag* %41
}

declare dso_local %struct.m_tag* @m_tag_locate(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local %struct.m_tag* @m_tag_create(i32, i32, i32, i32, %struct.mbuf*) #1

declare dso_local i32 @m_tag_prepend(%struct.mbuf*, %struct.m_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
