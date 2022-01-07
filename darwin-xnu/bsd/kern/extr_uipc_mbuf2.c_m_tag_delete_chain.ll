; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf2.c_m_tag_delete_chain.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf2.c_m_tag_delete_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.m_tag = type { i64 }

@M_PKTHDR = common dso_local global i32 0, align 4
@M_TAG_VALID_PATTERN = common dso_local global i64 0, align 8
@m_tag_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_tag_delete_chain(%struct.mbuf* %0, %struct.m_tag* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.m_tag*, align 8
  %5 = alloca %struct.m_tag*, align 8
  %6 = alloca %struct.m_tag*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store %struct.m_tag* %1, %struct.m_tag** %4, align 8
  %7 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %8 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @M_PKTHDR, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @VERIFY(i32 %11)
  %13 = load %struct.m_tag*, %struct.m_tag** %4, align 8
  %14 = icmp ne %struct.m_tag* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load %struct.m_tag*, %struct.m_tag** %4, align 8
  store %struct.m_tag* %16, %struct.m_tag** %5, align 8
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %19 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call %struct.m_tag* @SLIST_FIRST(i32* %20)
  store %struct.m_tag* %21, %struct.m_tag** %5, align 8
  br label %22

22:                                               ; preds = %17, %15
  %23 = load %struct.m_tag*, %struct.m_tag** %5, align 8
  %24 = icmp eq %struct.m_tag* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %54

26:                                               ; preds = %22
  %27 = load %struct.m_tag*, %struct.m_tag** %5, align 8
  %28 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @M_TAG_VALID_PATTERN, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @VERIFY(i32 %32)
  br label %34

34:                                               ; preds = %39, %26
  %35 = load %struct.m_tag*, %struct.m_tag** %5, align 8
  %36 = load i32, i32* @m_tag_link, align 4
  %37 = call %struct.m_tag* @SLIST_NEXT(%struct.m_tag* %35, i32 %36)
  store %struct.m_tag* %37, %struct.m_tag** %6, align 8
  %38 = icmp ne %struct.m_tag* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.m_tag*, %struct.m_tag** %6, align 8
  %41 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @M_TAG_VALID_PATTERN, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @VERIFY(i32 %45)
  %47 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %48 = load %struct.m_tag*, %struct.m_tag** %6, align 8
  %49 = call i32 @m_tag_delete(%struct.mbuf* %47, %struct.m_tag* %48)
  br label %34

50:                                               ; preds = %34
  %51 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %52 = load %struct.m_tag*, %struct.m_tag** %5, align 8
  %53 = call i32 @m_tag_delete(%struct.mbuf* %51, %struct.m_tag* %52)
  br label %54

54:                                               ; preds = %50, %25
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.m_tag* @SLIST_FIRST(i32*) #1

declare dso_local %struct.m_tag* @SLIST_NEXT(%struct.m_tag*, i32) #1

declare dso_local i32 @m_tag_delete(%struct.mbuf*, %struct.m_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
