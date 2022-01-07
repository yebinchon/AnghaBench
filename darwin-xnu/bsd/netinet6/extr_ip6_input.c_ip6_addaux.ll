; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_input.c_ip6_addaux.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_input.c_ip6_addaux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6aux = type { i32 }
%struct.mbuf = type { i32 }
%struct.m_tag = type { i32 }

@KERNEL_MODULE_TAG_ID = common dso_local global i32 0, align 4
@KERNEL_TAG_TYPE_INET6 = common dso_local global i32 0, align 4
@M_DONTWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ip6aux* @ip6_addaux(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.m_tag*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  %4 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %5 = load i32, i32* @KERNEL_MODULE_TAG_ID, align 4
  %6 = load i32, i32* @KERNEL_TAG_TYPE_INET6, align 4
  %7 = call %struct.m_tag* @m_tag_locate(%struct.mbuf* %4, i32 %5, i32 %6, i32* null)
  store %struct.m_tag* %7, %struct.m_tag** %3, align 8
  %8 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  %9 = icmp eq %struct.m_tag* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load i32, i32* @KERNEL_MODULE_TAG_ID, align 4
  %12 = load i32, i32* @KERNEL_TAG_TYPE_INET6, align 4
  %13 = load i32, i32* @M_DONTWAIT, align 4
  %14 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %15 = call %struct.m_tag* @m_tag_create(i32 %11, i32 %12, i32 4, i32 %13, %struct.mbuf* %14)
  store %struct.m_tag* %15, %struct.m_tag** %3, align 8
  %16 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  %17 = icmp ne %struct.m_tag* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %20 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  %21 = call i32 @m_tag_prepend(%struct.mbuf* %19, %struct.m_tag* %20)
  br label %22

22:                                               ; preds = %18, %10
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  %25 = icmp ne %struct.m_tag* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  %28 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %27, i64 1
  %29 = bitcast %struct.m_tag* %28 to %struct.ip6aux*
  br label %31

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi %struct.ip6aux* [ %29, %26 ], [ null, %30 ]
  ret %struct.ip6aux* %32
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
