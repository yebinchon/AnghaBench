; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf2.c_m_tag_locate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf2.c_m_tag_locate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.m_tag = type { i64, i64, i64 }

@M_PKTHDR = common dso_local global i32 0, align 4
@M_TAG_VALID_PATTERN = common dso_local global i64 0, align 8
@m_tag_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.m_tag* @m_tag_locate(%struct.mbuf* %0, i64 %1, i64 %2, %struct.m_tag* %3) #0 {
  %5 = alloca %struct.m_tag*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.m_tag*, align 8
  %10 = alloca %struct.m_tag*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.m_tag* %3, %struct.m_tag** %9, align 8
  %11 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %12 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @M_PKTHDR, align 4
  %15 = and i32 %13, %14
  %16 = call i32 @VERIFY(i32 %15)
  %17 = load %struct.m_tag*, %struct.m_tag** %9, align 8
  %18 = icmp eq %struct.m_tag* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %21 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call %struct.m_tag* @SLIST_FIRST(i32* %22)
  store %struct.m_tag* %23, %struct.m_tag** %10, align 8
  br label %35

24:                                               ; preds = %4
  %25 = load %struct.m_tag*, %struct.m_tag** %9, align 8
  %26 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @M_TAG_VALID_PATTERN, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @VERIFY(i32 %30)
  %32 = load %struct.m_tag*, %struct.m_tag** %9, align 8
  %33 = load i32, i32* @m_tag_link, align 4
  %34 = call %struct.m_tag* @SLIST_NEXT(%struct.m_tag* %32, i32 %33)
  store %struct.m_tag* %34, %struct.m_tag** %10, align 8
  br label %35

35:                                               ; preds = %24, %19
  br label %36

36:                                               ; preds = %60, %35
  %37 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %38 = icmp ne %struct.m_tag* %37, null
  br i1 %38, label %39, label %64

39:                                               ; preds = %36
  %40 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %41 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @M_TAG_VALID_PATTERN, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @VERIFY(i32 %45)
  %47 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %48 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %39
  %53 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %54 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  store %struct.m_tag* %59, %struct.m_tag** %5, align 8
  br label %65

60:                                               ; preds = %52, %39
  %61 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %62 = load i32, i32* @m_tag_link, align 4
  %63 = call %struct.m_tag* @SLIST_NEXT(%struct.m_tag* %61, i32 %62)
  store %struct.m_tag* %63, %struct.m_tag** %10, align 8
  br label %36

64:                                               ; preds = %36
  store %struct.m_tag* null, %struct.m_tag** %5, align 8
  br label %65

65:                                               ; preds = %64, %58
  %66 = load %struct.m_tag*, %struct.m_tag** %5, align 8
  ret %struct.m_tag* %66
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.m_tag* @SLIST_FIRST(i32*) #1

declare dso_local %struct.m_tag* @SLIST_NEXT(%struct.m_tag*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
