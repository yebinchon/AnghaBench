; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_ln_getexpire.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_ln_getexpire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llinfo_nd6 = type { i64, %struct.rtentry* }
%struct.rtentry = type { i64, i64 }
%struct.timeval = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.llinfo_nd6*)* @ln_getexpire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ln_getexpire(%struct.llinfo_nd6* %0) #0 {
  %2 = alloca %struct.llinfo_nd6*, align 8
  %3 = alloca %struct.timeval, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtentry*, align 8
  store %struct.llinfo_nd6* %0, %struct.llinfo_nd6** %2, align 8
  %6 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %2, align 8
  %7 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %44

10:                                               ; preds = %1
  %11 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %2, align 8
  %12 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %11, i32 0, i32 1
  %13 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  store %struct.rtentry* %13, %struct.rtentry** %5, align 8
  %14 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %15 = icmp ne %struct.rtentry* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @VERIFY(i32 %16)
  %18 = call i32 @getmicrotime(%struct.timeval* %3)
  %19 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %20 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (...) @net_uptime()
  %23 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %24 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @NET_CALCULATE_CLOCKSKEW(i32 %27, i64 %21, i32 %22, i64 %25)
  %29 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %30 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %34 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %2, align 8
  %37 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %41 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  store i64 %43, i64* %4, align 8
  br label %45

44:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %45

45:                                               ; preds = %44, %10
  %46 = load i64, i64* %4, align 8
  ret i64 %46
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @getmicrotime(%struct.timeval*) #1

declare dso_local i64 @NET_CALCULATE_CLOCKSKEW(i32, i64, i32, i64) #1

declare dso_local i32 @net_uptime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
