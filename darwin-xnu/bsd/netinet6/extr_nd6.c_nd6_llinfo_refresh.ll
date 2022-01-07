; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_llinfo_refresh.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_llinfo_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i32, %struct.llinfo_nd6* }
%struct.llinfo_nd6 = type { i64, i64 }

@RTF_STATIC = common dso_local global i32 0, align 4
@RTF_LLINFO = common dso_local global i32 0, align 4
@ND6_LLINFO_INCOMPLETE = common dso_local global i64 0, align 8
@ND6_LLINFO_PROBE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtentry*)* @nd6_llinfo_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd6_llinfo_refresh(%struct.rtentry* %0) #0 {
  %2 = alloca %struct.rtentry*, align 8
  %3 = alloca %struct.llinfo_nd6*, align 8
  %4 = alloca i64, align 8
  store %struct.rtentry* %0, %struct.rtentry** %2, align 8
  %5 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %6 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %5, i32 0, i32 1
  %7 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %6, align 8
  store %struct.llinfo_nd6* %7, %struct.llinfo_nd6** %3, align 8
  %8 = call i64 (...) @net_uptime()
  store i64 %8, i64* %4, align 8
  %9 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %3, align 8
  %10 = icmp ne %struct.llinfo_nd6* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %3, align 8
  %13 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %11
  %17 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %18 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RTF_STATIC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %25 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @RTF_LLINFO, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23, %16, %11, %1
  br label %58

31:                                               ; preds = %23
  %32 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %3, align 8
  %33 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ND6_LLINFO_INCOMPLETE, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %31
  %38 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %3, align 8
  %39 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ND6_LLINFO_PROBE, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %3, align 8
  %45 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %3, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @ln_setexpire(%struct.llinfo_nd6* %50, i64 %51)
  %53 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %3, align 8
  %54 = load i64, i64* @ND6_LLINFO_PROBE, align 8
  %55 = call i32 @ND6_CACHE_STATE_TRANSITION(%struct.llinfo_nd6* %53, i64 %54)
  br label %56

56:                                               ; preds = %49, %43
  br label %57

57:                                               ; preds = %56, %37, %31
  br label %58

58:                                               ; preds = %57, %30
  ret void
}

declare dso_local i64 @net_uptime(...) #1

declare dso_local i32 @ln_setexpire(%struct.llinfo_nd6*, i64) #1

declare dso_local i32 @ND6_CACHE_STATE_TRANSITION(%struct.llinfo_nd6*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
