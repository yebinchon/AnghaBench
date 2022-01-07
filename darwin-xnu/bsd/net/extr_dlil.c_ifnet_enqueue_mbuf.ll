; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_enqueue_mbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_enqueue_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32 }
%struct.mbuf = type { i32, i32* }

@M_PKTHDR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFEF_TXSTART = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@QP_MBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_enqueue_mbuf(%struct.ifnet* %0, %struct.mbuf* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %11 = icmp eq %struct.ifnet* %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %4
  %13 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %14 = icmp eq %struct.mbuf* %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %17 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @M_PKTHDR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %24 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %22, %15, %12, %4
  %28 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %29 = icmp ne %struct.mbuf* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %32 = call i32 @m_freem_list(%struct.mbuf* %31)
  %33 = load i32, i32* @TRUE, align 4
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %27
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %5, align 4
  br label %76

37:                                               ; preds = %22
  %38 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFEF_TXSTART, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %46 = call i32 @IF_FULLY_ATTACHED(%struct.ifnet* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44, %37
  %49 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %50 = call i32 @m_freem(%struct.mbuf* %49)
  %51 = load i32, i32* @TRUE, align 4
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %5, align 4
  br label %76

54:                                               ; preds = %44
  %55 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IFF_UP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %54
  %62 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %63 = call i32 @m_freem(%struct.mbuf* %62)
  %64 = load i32, i32* @TRUE, align 4
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @ENETDOWN, align 4
  store i32 %66, i32* %5, align 4
  br label %76

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %71 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %72 = load i32, i32* @QP_MBUF, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @ifnet_enqueue_common(%struct.ifnet* %70, %struct.mbuf* %71, i32 %72, i32 %73, i32* %74)
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %69, %61, %48, %35
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @m_freem_list(%struct.mbuf*) #1

declare dso_local i32 @IF_FULLY_ATTACHED(%struct.ifnet*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @ifnet_enqueue_common(%struct.ifnet*, %struct.mbuf*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
