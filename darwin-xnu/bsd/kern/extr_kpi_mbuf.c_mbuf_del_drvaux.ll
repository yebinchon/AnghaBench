; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_del_drvaux.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_del_drvaux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.m_tag = type { i32 }

@M_PKTHDR = common dso_local global i32 0, align 4
@KERNEL_MODULE_TAG_ID = common dso_local global i32 0, align 4
@KERNEL_TAG_TYPE_DRVAUX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbuf_del_drvaux(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.m_tag*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = icmp eq %struct.TYPE_5__* %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @M_PKTHDR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6, %1
  br label %24

14:                                               ; preds = %6
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = load i32, i32* @KERNEL_MODULE_TAG_ID, align 4
  %17 = load i32, i32* @KERNEL_TAG_TYPE_DRVAUX, align 4
  %18 = call %struct.m_tag* @m_tag_locate(%struct.TYPE_5__* %15, i32 %16, i32 %17, i32* null)
  store %struct.m_tag* %18, %struct.m_tag** %3, align 8
  %19 = icmp ne %struct.m_tag* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  %23 = call i32 @m_tag_delete(%struct.TYPE_5__* %21, %struct.m_tag* %22)
  br label %24

24:                                               ; preds = %13, %20, %14
  ret void
}

declare dso_local %struct.m_tag* @m_tag_locate(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @m_tag_delete(%struct.TYPE_5__*, %struct.m_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
