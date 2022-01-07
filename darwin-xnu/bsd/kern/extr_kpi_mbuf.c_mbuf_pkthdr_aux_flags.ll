; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_pkthdr_aux_flags.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_pkthdr_aux_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@M_PKTHDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PKTF_INET_RESOLVE = common dso_local global i32 0, align 4
@PKTF_RESOLVE_RTR = common dso_local global i32 0, align 4
@MBUF_PKTAUXF_INET_RESOLVE_RTR = common dso_local global i32 0, align 4
@PKTF_INET6_RESOLVE = common dso_local global i32 0, align 4
@MBUF_PKTAUXF_INET6_RESOLVE_RTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbuf_pkthdr_aux_flags(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = icmp eq %struct.TYPE_5__* %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @M_PKTHDR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %9, %2
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %69

21:                                               ; preds = %16
  %22 = load i32*, i32** %5, align 8
  store i32 0, i32* %22, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @PKTF_INET_RESOLVE, align 4
  %29 = load i32, i32* @PKTF_RESOLVE_RTR, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = load i32, i32* @PKTF_INET_RESOLVE, align 4
  %33 = load i32, i32* @PKTF_RESOLVE_RTR, align 4
  %34 = or i32 %32, %33
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load i32, i32* @MBUF_PKTAUXF_INET_RESOLVE_RTR, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %36, %21
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @PKTF_INET6_RESOLVE, align 4
  %44 = load i32, i32* @PKTF_RESOLVE_RTR, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = load i32, i32* @PKTF_INET6_RESOLVE, align 4
  %48 = load i32, i32* @PKTF_RESOLVE_RTR, align 4
  %49 = or i32 %47, %48
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load i32, i32* @MBUF_PKTAUXF_INET6_RESOLVE_RTR, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %51, %41
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MBUF_PKTAUXF_INET_RESOLVE_RTR, align 4
  %60 = load i32, i32* @MBUF_PKTAUXF_INET6_RESOLVE_RTR, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = load i32, i32* @MBUF_PKTAUXF_INET_RESOLVE_RTR, align 4
  %64 = load i32, i32* @MBUF_PKTAUXF_INET6_RESOLVE_RTR, align 4
  %65 = or i32 %63, %64
  %66 = icmp ne i32 %62, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @VERIFY(i32 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %56, %19
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
