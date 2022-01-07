; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperfbsd.c_sysctl_timer_period.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperfbsd.c_sysctl_timer_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_req = type { i64, i64 }

@USER_ADDR_NULL = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysctl_req*)* @sysctl_timer_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_timer_period(%struct.sysctl_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sysctl_req*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i64], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sysctl_req* %0, %struct.sysctl_req** %3, align 8
  %9 = bitcast [2 x i64]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.sysctl_req*, %struct.sysctl_req** %3, align 8
  %11 = icmp ne %struct.sysctl_req* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.sysctl_req*, %struct.sysctl_req** %3, align 8
  %15 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @USER_ADDR_NULL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @EFAULT, align 4
  store i32 %20, i32* %2, align 4
  br label %59

21:                                               ; preds = %1
  %22 = load %struct.sysctl_req*, %struct.sysctl_req** %3, align 8
  %23 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %26 = call i32 @copyin(i64 %24, i64* %25, i32 16)
  store i32 %26, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %59

30:                                               ; preds = %21
  %31 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %32 = load i64, i64* %31, align 16
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  %36 = load %struct.sysctl_req*, %struct.sysctl_req** %3, align 8
  %37 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @USER_ADDR_NULL, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %30
  store i64 0, i64* %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @kperf_timer_get_period(i32 %42, i64* %8)
  store i32 %43, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %59

47:                                               ; preds = %41
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  store i64 %48, i64* %49, align 8
  %50 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %51 = load %struct.sysctl_req*, %struct.sysctl_req** %3, align 8
  %52 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @copyout(i64* %50, i64 %53, i32 16)
  store i32 %54, i32* %2, align 4
  br label %59

55:                                               ; preds = %30
  %56 = load i32, i32* %6, align 4
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @kperf_timer_set_period(i32 %56, i64 %57)
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %47, %45, %28, %19
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @copyin(i64, i64*, i32) #2

declare dso_local i32 @kperf_timer_get_period(i32, i64*) #2

declare dso_local i32 @copyout(i64*, i64, i32) #2

declare dso_local i32 @kperf_timer_set_period(i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
