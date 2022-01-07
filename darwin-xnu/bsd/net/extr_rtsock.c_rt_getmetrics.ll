; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_rtsock.c_rt_getmetrics.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_rtsock.c_rt_getmetrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i64, i64, i64, %struct.rt_metrics }
%struct.rt_metrics = type { i64 }
%struct.timeval = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtentry*, %struct.rt_metrics*)* @rt_getmetrics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt_getmetrics(%struct.rtentry* %0, %struct.rt_metrics* %1) #0 {
  %3 = alloca %struct.rtentry*, align 8
  %4 = alloca %struct.rt_metrics*, align 8
  %5 = alloca %struct.timeval, align 4
  store %struct.rtentry* %0, %struct.rtentry** %3, align 8
  store %struct.rt_metrics* %1, %struct.rt_metrics** %4, align 8
  %6 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %7 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %12 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.rt_metrics, %struct.rt_metrics* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i1 [ true, %2 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @VERIFY(i32 %18)
  %20 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %21 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %16
  %25 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %26 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.rt_metrics, %struct.rt_metrics* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br label %30

30:                                               ; preds = %24, %16
  %31 = phi i1 [ true, %16 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @VERIFY(i32 %32)
  %34 = load %struct.rt_metrics*, %struct.rt_metrics** %4, align 8
  %35 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %36 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %35, i32 0, i32 3
  %37 = bitcast %struct.rt_metrics* %34 to i8*
  %38 = bitcast %struct.rt_metrics* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 8, i1 false)
  %39 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %40 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %30
  %44 = call i32 @getmicrotime(%struct.timeval* %5)
  %45 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %46 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (...) @net_uptime()
  %49 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %50 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @NET_CALCULATE_CLOCKSKEW(i32 %53, i64 %47, i32 %48, i64 %51)
  %55 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %56 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %60 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %63 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %67 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  %70 = load %struct.rt_metrics*, %struct.rt_metrics** %4, align 8
  %71 = getelementptr inbounds %struct.rt_metrics, %struct.rt_metrics* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %75

72:                                               ; preds = %30
  %73 = load %struct.rt_metrics*, %struct.rt_metrics** %4, align 8
  %74 = getelementptr inbounds %struct.rt_metrics, %struct.rt_metrics* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %72, %43
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @getmicrotime(%struct.timeval*) #1

declare dso_local i64 @NET_CALCULATE_CLOCKSKEW(i32, i64, i32, i64) #1

declare dso_local i32 @net_uptime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
