; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_llreach.c_ifnet_llreach_up2calexp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_llreach.c_ifnet_llreach_up2calexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_llreach = type { i64, i64, i64 }
%struct.timeval = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ifnet_llreach_up2calexp(%struct.if_llreach* %0, i64 %1) #0 {
  %3 = alloca %struct.if_llreach*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca i64, align 8
  store %struct.if_llreach* %0, %struct.if_llreach** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %42

10:                                               ; preds = %2
  %11 = call i32 @getmicrotime(%struct.timeval* %6)
  %12 = call i64 (...) @net_uptime()
  store i64 %12, i64* %7, align 8
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %16 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %21 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  %24 = sub nsw i64 %18, %23
  %25 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %26 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, %24
  store i64 %28, i64* %26, align 8
  %29 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %30 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %33 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %38 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = add nsw i64 %35, %40
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %10, %2
  %43 = load i64, i64* %5, align 8
  ret i64 %43
}

declare dso_local i32 @getmicrotime(%struct.timeval*) #1

declare dso_local i64 @net_uptime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
