; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperfbsd.c_sysctl_action_filter.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperfbsd.c_sysctl_action_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_req = type { i64, i64 }

@USER_ADDR_NULL = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysctl_req*, i32)* @sysctl_action_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_action_filter(%struct.sysctl_req* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysctl_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sysctl_req* %0, %struct.sysctl_req** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = load %struct.sysctl_req*, %struct.sysctl_req** %4, align 8
  %14 = icmp ne %struct.sysctl_req* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.sysctl_req*, %struct.sysctl_req** %4, align 8
  %18 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @USER_ADDR_NULL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @EFAULT, align 4
  store i32 %23, i32* %3, align 4
  br label %70

24:                                               ; preds = %2
  %25 = load %struct.sysctl_req*, %struct.sysctl_req** %4, align 8
  %26 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %29 = call i32 @copyin(i64 %27, i32* %28, i32 8)
  store i32 %29, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %70

33:                                               ; preds = %24
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  %38 = load %struct.sysctl_req*, %struct.sysctl_req** %4, align 8
  %39 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @USER_ADDR_NULL, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %33
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @kperf_action_get_filter(i32 %44, i32* %10)
  store i32 %45, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %70

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %53 = load %struct.sysctl_req*, %struct.sysctl_req** %4, align 8
  %54 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @copyout(i32* %52, i64 %55, i32 8)
  store i32 %56, i32* %3, align 4
  br label %70

57:                                               ; preds = %33
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @kperf_port_to_pid(i32 %61)
  br label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %9, align 4
  br label %65

65:                                               ; preds = %63, %60
  %66 = phi i32 [ %62, %60 ], [ %64, %63 ]
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @kperf_action_set_filter(i32 %67, i32 %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %65, %49, %47, %31, %22
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @copyin(i64, i32*, i32) #2

declare dso_local i32 @kperf_action_get_filter(i32, i32*) #2

declare dso_local i32 @copyout(i32*, i64, i32) #2

declare dso_local i32 @kperf_port_to_pid(i32) #2

declare dso_local i32 @kperf_action_set_filter(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
