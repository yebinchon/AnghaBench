; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_input.c_ip6_delaux.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_input.c_ip6_delaux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.m_tag = type { i32 }

@KERNEL_MODULE_TAG_ID = common dso_local global i32 0, align 4
@KERNEL_TAG_TYPE_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip6_delaux(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.m_tag*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  %4 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %5 = load i32, i32* @KERNEL_MODULE_TAG_ID, align 4
  %6 = load i32, i32* @KERNEL_TAG_TYPE_INET6, align 4
  %7 = call %struct.m_tag* @m_tag_locate(%struct.mbuf* %4, i32 %5, i32 %6, i32* null)
  store %struct.m_tag* %7, %struct.m_tag** %3, align 8
  %8 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  %9 = icmp ne %struct.m_tag* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %12 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  %13 = call i32 @m_tag_delete(%struct.mbuf* %11, %struct.m_tag* %12)
  br label %14

14:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.m_tag* @m_tag_locate(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local i32 @m_tag_delete(%struct.mbuf*, %struct.m_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
