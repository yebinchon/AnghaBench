; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ipsec.c_ipsec_addhist.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ipsec.c_ipsec_addhist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.ipsec_tag = type { i64, %struct.ipsec_history* }
%struct.ipsec_history = type { i32, i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@IPSEC_HISTORY_MAX = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipsec_addhist(%struct.mbuf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipsec_tag*, align 8
  %9 = alloca %struct.ipsec_history*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %11 = call %struct.ipsec_tag* @ipsec_addaux(%struct.mbuf* %10)
  store %struct.ipsec_tag* %11, %struct.ipsec_tag** %8, align 8
  %12 = load %struct.ipsec_tag*, %struct.ipsec_tag** %8, align 8
  %13 = icmp ne %struct.ipsec_tag* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOBUFS, align 4
  store i32 %15, i32* %4, align 4
  br label %44

16:                                               ; preds = %3
  %17 = load %struct.ipsec_tag*, %struct.ipsec_tag** %8, align 8
  %18 = getelementptr inbounds %struct.ipsec_tag, %struct.ipsec_tag* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IPSEC_HISTORY_MAX, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOSPC, align 4
  store i32 %23, i32* %4, align 4
  br label %44

24:                                               ; preds = %16
  %25 = load %struct.ipsec_tag*, %struct.ipsec_tag** %8, align 8
  %26 = getelementptr inbounds %struct.ipsec_tag, %struct.ipsec_tag* %25, i32 0, i32 1
  %27 = load %struct.ipsec_history*, %struct.ipsec_history** %26, align 8
  %28 = load %struct.ipsec_tag*, %struct.ipsec_tag** %8, align 8
  %29 = getelementptr inbounds %struct.ipsec_tag, %struct.ipsec_tag* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.ipsec_history, %struct.ipsec_history* %27, i64 %30
  store %struct.ipsec_history* %31, %struct.ipsec_history** %9, align 8
  %32 = load %struct.ipsec_tag*, %struct.ipsec_tag** %8, align 8
  %33 = getelementptr inbounds %struct.ipsec_tag, %struct.ipsec_tag* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.ipsec_history*, %struct.ipsec_history** %9, align 8
  %37 = call i32 @bzero(%struct.ipsec_history* %36, i32 8)
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.ipsec_history*, %struct.ipsec_history** %9, align 8
  %40 = getelementptr inbounds %struct.ipsec_history, %struct.ipsec_history* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.ipsec_history*, %struct.ipsec_history** %9, align 8
  %43 = getelementptr inbounds %struct.ipsec_history, %struct.ipsec_history* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %24, %22, %14
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.ipsec_tag* @ipsec_addaux(%struct.mbuf*) #1

declare dso_local i32 @bzero(%struct.ipsec_history*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
