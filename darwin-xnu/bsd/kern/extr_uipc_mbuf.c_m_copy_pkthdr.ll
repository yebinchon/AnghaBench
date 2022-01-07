; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_copy_pkthdr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_copy_pkthdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32, i32, i32 }

@M_PKTHDR = common dso_local global i32 0, align 4
@M_COPYFLAGS = common dso_local global i32 0, align 4
@M_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_copy_pkthdr(%struct.mbuf* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %5 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %6 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @M_PKTHDR, align 4
  %9 = and i32 %7, %8
  %10 = call i32 @VERIFY(i32 %9)
  %11 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %12 = call i32 @m_redzone_verify(%struct.mbuf* %11)
  %13 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %14 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @M_PKTHDR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %21 = call i32 @m_redzone_verify(%struct.mbuf* %20)
  %22 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %23 = call i32 @m_tag_delete_chain(%struct.mbuf* %22, i32* null)
  br label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %26 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %31 = call i32 @m_classifier_init(%struct.mbuf* %30, i32 0)
  %32 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %33 = call i32 @m_tag_init(%struct.mbuf* %32, i32 1)
  %34 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %35 = call i32 @m_scratch_init(%struct.mbuf* %34)
  %36 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %37 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @M_COPYFLAGS, align 4
  %40 = and i32 %38, %39
  %41 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %42 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @M_EXT, align 4
  %45 = and i32 %43, %44
  %46 = or i32 %40, %45
  %47 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %48 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %50 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @M_EXT, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %24
  %56 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %60 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %24
  %62 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %63 = call i32 @m_redzone_init(%struct.mbuf* %62)
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @m_redzone_verify(%struct.mbuf*) #1

declare dso_local i32 @m_tag_delete_chain(%struct.mbuf*, i32*) #1

declare dso_local i32 @m_classifier_init(%struct.mbuf*, i32) #1

declare dso_local i32 @m_tag_init(%struct.mbuf*, i32) #1

declare dso_local i32 @m_scratch_init(%struct.mbuf*) #1

declare dso_local i32 @m_redzone_init(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
