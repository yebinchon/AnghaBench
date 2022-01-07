; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_sack.c_tcp_sack_adjust.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_sack.c_tcp_sack_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32, i32 }
%struct.sackhole = type { i32, i32 }

@scblink = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_sack_adjust(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca %struct.sackhole*, align 8
  %4 = alloca %struct.sackhole*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %5 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %6 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %5, i32 0, i32 2
  %7 = call %struct.sackhole* @TAILQ_FIRST(i32* %6)
  store %struct.sackhole* %7, %struct.sackhole** %4, align 8
  %8 = load %struct.sackhole*, %struct.sackhole** %4, align 8
  %9 = icmp eq %struct.sackhole* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %71

11:                                               ; preds = %1
  %12 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %13 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %16 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @SEQ_GEQ(i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %71

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %54, %21
  %23 = load %struct.sackhole*, %struct.sackhole** %4, align 8
  %24 = load i32, i32* @scblink, align 4
  %25 = call %struct.sackhole* @TAILQ_NEXT(%struct.sackhole* %23, i32 %24)
  store %struct.sackhole* %25, %struct.sackhole** %3, align 8
  %26 = icmp ne %struct.sackhole* %25, null
  br i1 %26, label %27, label %55

27:                                               ; preds = %22
  %28 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sackhole*, %struct.sackhole** %4, align 8
  %32 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @SEQ_LT(i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %71

37:                                               ; preds = %27
  %38 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %39 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sackhole*, %struct.sackhole** %3, align 8
  %42 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @SEQ_GEQ(i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load %struct.sackhole*, %struct.sackhole** %3, align 8
  store %struct.sackhole* %47, %struct.sackhole** %4, align 8
  br label %54

48:                                               ; preds = %37
  %49 = load %struct.sackhole*, %struct.sackhole** %3, align 8
  %50 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %53 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %71

54:                                               ; preds = %46
  br label %22

55:                                               ; preds = %22
  %56 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %57 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sackhole*, %struct.sackhole** %4, align 8
  %60 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @SEQ_LT(i32 %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %71

65:                                               ; preds = %55
  %66 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %67 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %70 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %65, %64, %48, %36, %20, %10
  ret void
}

declare dso_local %struct.sackhole* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @SEQ_GEQ(i32, i32) #1

declare dso_local %struct.sackhole* @TAILQ_NEXT(%struct.sackhole*, i32) #1

declare dso_local i64 @SEQ_LT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
