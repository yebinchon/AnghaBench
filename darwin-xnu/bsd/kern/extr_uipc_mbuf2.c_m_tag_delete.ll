; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf2.c_m_tag_delete.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf2.c_m_tag_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.m_tag = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_tag_delete(%struct.mbuf* %0, %struct.m_tag* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.m_tag*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store %struct.m_tag* %1, %struct.m_tag** %4, align 8
  %5 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %6 = load %struct.m_tag*, %struct.m_tag** %4, align 8
  %7 = call i32 @m_tag_unlink(%struct.mbuf* %5, %struct.m_tag* %6)
  %8 = load %struct.m_tag*, %struct.m_tag** %4, align 8
  %9 = call i32 @m_tag_free(%struct.m_tag* %8)
  ret void
}

declare dso_local i32 @m_tag_unlink(%struct.mbuf*, %struct.m_tag*) #1

declare dso_local i32 @m_tag_free(%struct.m_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
