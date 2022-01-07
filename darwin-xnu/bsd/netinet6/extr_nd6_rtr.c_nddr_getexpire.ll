; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_nddr_getexpire.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_nddr_getexpire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_defrouter = type { i64, i64, i64 }
%struct.timeval = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nddr_getexpire(%struct.nd_defrouter* %0) #0 {
  %2 = alloca %struct.nd_defrouter*, align 8
  %3 = alloca %struct.timeval, align 4
  %4 = alloca i64, align 8
  store %struct.nd_defrouter* %0, %struct.nd_defrouter** %2, align 8
  %5 = load %struct.nd_defrouter*, %struct.nd_defrouter** %2, align 8
  %6 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = call i32 @getmicrotime(%struct.timeval* %3)
  %11 = load %struct.nd_defrouter*, %struct.nd_defrouter** %2, align 8
  %12 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 (...) @net_uptime()
  %15 = load %struct.nd_defrouter*, %struct.nd_defrouter** %2, align 8
  %16 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @NET_CALCULATE_CLOCKSKEW(i32 %19, i64 %13, i32 %14, i64 %17)
  %21 = load %struct.nd_defrouter*, %struct.nd_defrouter** %2, align 8
  %22 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, %20
  store i64 %24, i64* %22, align 8
  %25 = load %struct.nd_defrouter*, %struct.nd_defrouter** %2, align 8
  %26 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.nd_defrouter*, %struct.nd_defrouter** %2, align 8
  %29 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load %struct.nd_defrouter*, %struct.nd_defrouter** %2, align 8
  %33 = getelementptr inbounds %struct.nd_defrouter, %struct.nd_defrouter* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  store i64 %35, i64* %4, align 8
  br label %37

36:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %37

37:                                               ; preds = %36, %9
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

declare dso_local i32 @getmicrotime(%struct.timeval*) #1

declare dso_local i64 @NET_CALCULATE_CLOCKSKEW(i32, i64, i32, i64) #1

declare dso_local i32 @net_uptime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
