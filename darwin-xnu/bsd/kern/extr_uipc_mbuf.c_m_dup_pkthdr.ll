; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_dup_pkthdr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_dup_pkthdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32, i32, i32 }

@M_PKTHDR = common dso_local global i32 0, align 4
@M_COPYFLAGS = common dso_local global i32 0, align 4
@M_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, %struct.mbuf*, i32)* @m_dup_pkthdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_dup_pkthdr(%struct.mbuf* %0, %struct.mbuf* %1, i32 %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %8 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @M_PKTHDR, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @VERIFY(i32 %11)
  %13 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %14 = call i32 @m_redzone_verify(%struct.mbuf* %13)
  %15 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @M_PKTHDR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %23 = call i32 @m_redzone_verify(%struct.mbuf* %22)
  %24 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %25 = call i32 @m_tag_delete_chain(%struct.mbuf* %24, i32* null)
  br label %26

26:                                               ; preds = %21, %3
  %27 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @M_COPYFLAGS, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @M_EXT, align 4
  %36 = and i32 %34, %35
  %37 = or i32 %31, %36
  %38 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @M_EXT, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %26
  %47 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %48 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %51 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %46, %26
  %53 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %54 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %59 = call i32 @m_redzone_init(%struct.mbuf* %58)
  %60 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %61 = call i32 @m_tag_init(%struct.mbuf* %60, i32 0)
  %62 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %63 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @m_tag_copy_chain(%struct.mbuf* %62, %struct.mbuf* %63, i32 %64)
  ret i32 %65
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @m_redzone_verify(%struct.mbuf*) #1

declare dso_local i32 @m_tag_delete_chain(%struct.mbuf*, i32*) #1

declare dso_local i32 @m_redzone_init(%struct.mbuf*) #1

declare dso_local i32 @m_tag_init(%struct.mbuf*, i32) #1

declare dso_local i32 @m_tag_copy_chain(%struct.mbuf*, %struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
