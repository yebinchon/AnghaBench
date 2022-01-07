; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_net.c_mac_mbuf_tag_copy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_net.c_mac_mbuf_tag_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_tag = type { i32 }
%struct.label = type { i32 }

@mbuf_label_copy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_mbuf_tag_copy(%struct.m_tag* %0, %struct.m_tag* %1) #0 {
  %3 = alloca %struct.m_tag*, align 8
  %4 = alloca %struct.m_tag*, align 8
  %5 = alloca %struct.label*, align 8
  %6 = alloca %struct.label*, align 8
  store %struct.m_tag* %0, %struct.m_tag** %3, align 8
  store %struct.m_tag* %1, %struct.m_tag** %4, align 8
  %7 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  %8 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %7, i64 1
  %9 = bitcast %struct.m_tag* %8 to %struct.label*
  store %struct.label* %9, %struct.label** %5, align 8
  %10 = load %struct.m_tag*, %struct.m_tag** %4, align 8
  %11 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %10, i64 1
  %12 = bitcast %struct.m_tag* %11 to %struct.label*
  store %struct.label* %12, %struct.label** %6, align 8
  %13 = load %struct.label*, %struct.label** %5, align 8
  %14 = icmp eq %struct.label* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load %struct.label*, %struct.label** %6, align 8
  %17 = icmp eq %struct.label* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %2
  br label %24

19:                                               ; preds = %15
  %20 = load i32, i32* @mbuf_label_copy, align 4
  %21 = load %struct.label*, %struct.label** %5, align 8
  %22 = load %struct.label*, %struct.label** %6, align 8
  %23 = call i32 @MAC_PERFORM(i32 %20, %struct.label* %21, %struct.label* %22)
  br label %24

24:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @MAC_PERFORM(i32, %struct.label*, %struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
