; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_allocate_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_allocate_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet_init_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ifnet_init_eparams = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IFNET_INIT_CURRENT_VERSION = common dso_local global i32 0, align 4
@IFNET_INIT_LEGACY = common dso_local global i32 0, align 4
@IFNET_INIT_NX_NOAUTO = common dso_local global i32 0, align 4
@IFNET_INIT_ALLOC_KPI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_allocate_common(%struct.ifnet_init_params* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ifnet_init_params*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifnet_init_eparams, align 4
  store %struct.ifnet_init_params* %0, %struct.ifnet_init_params** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 @bzero(%struct.ifnet_init_eparams* %7, i32 88)
  %9 = load i32, i32* @IFNET_INIT_CURRENT_VERSION, align 4
  %10 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %7, i32 0, i32 21
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %7, i32 0, i32 0
  store i32 88, i32* %11, align 4
  %12 = load i32, i32* @IFNET_INIT_LEGACY, align 4
  %13 = load i32, i32* @IFNET_INIT_NX_NOAUTO, align 4
  %14 = or i32 %12, %13
  %15 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %7, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @IFNET_INIT_ALLOC_KPI, align 4
  %20 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %7, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %19
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %18, %3
  %24 = load %struct.ifnet_init_params*, %struct.ifnet_init_params** %4, align 8
  %25 = getelementptr inbounds %struct.ifnet_init_params, %struct.ifnet_init_params* %24, i32 0, i32 18
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %7, i32 0, i32 20
  store i32 %26, i32* %27, align 4
  %28 = load %struct.ifnet_init_params*, %struct.ifnet_init_params** %4, align 8
  %29 = getelementptr inbounds %struct.ifnet_init_params, %struct.ifnet_init_params* %28, i32 0, i32 17
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %7, i32 0, i32 19
  store i32 %30, i32* %31, align 4
  %32 = load %struct.ifnet_init_params*, %struct.ifnet_init_params** %4, align 8
  %33 = getelementptr inbounds %struct.ifnet_init_params, %struct.ifnet_init_params* %32, i32 0, i32 16
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %7, i32 0, i32 18
  store i32 %34, i32* %35, align 4
  %36 = load %struct.ifnet_init_params*, %struct.ifnet_init_params** %4, align 8
  %37 = getelementptr inbounds %struct.ifnet_init_params, %struct.ifnet_init_params* %36, i32 0, i32 15
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %7, i32 0, i32 17
  store i32 %38, i32* %39, align 4
  %40 = load %struct.ifnet_init_params*, %struct.ifnet_init_params** %4, align 8
  %41 = getelementptr inbounds %struct.ifnet_init_params, %struct.ifnet_init_params* %40, i32 0, i32 14
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %7, i32 0, i32 16
  store i32 %42, i32* %43, align 4
  %44 = load %struct.ifnet_init_params*, %struct.ifnet_init_params** %4, align 8
  %45 = getelementptr inbounds %struct.ifnet_init_params, %struct.ifnet_init_params* %44, i32 0, i32 13
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %7, i32 0, i32 15
  store i32 %46, i32* %47, align 4
  %48 = load %struct.ifnet_init_params*, %struct.ifnet_init_params** %4, align 8
  %49 = getelementptr inbounds %struct.ifnet_init_params, %struct.ifnet_init_params* %48, i32 0, i32 12
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %7, i32 0, i32 14
  store i32 %50, i32* %51, align 4
  %52 = load %struct.ifnet_init_params*, %struct.ifnet_init_params** %4, align 8
  %53 = getelementptr inbounds %struct.ifnet_init_params, %struct.ifnet_init_params* %52, i32 0, i32 11
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %7, i32 0, i32 13
  store i32 %54, i32* %55, align 4
  %56 = load %struct.ifnet_init_params*, %struct.ifnet_init_params** %4, align 8
  %57 = getelementptr inbounds %struct.ifnet_init_params, %struct.ifnet_init_params* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %7, i32 0, i32 12
  store i32 %58, i32* %59, align 4
  %60 = load %struct.ifnet_init_params*, %struct.ifnet_init_params** %4, align 8
  %61 = getelementptr inbounds %struct.ifnet_init_params, %struct.ifnet_init_params* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %7, i32 0, i32 11
  store i32 %62, i32* %63, align 4
  %64 = load %struct.ifnet_init_params*, %struct.ifnet_init_params** %4, align 8
  %65 = getelementptr inbounds %struct.ifnet_init_params, %struct.ifnet_init_params* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %7, i32 0, i32 10
  store i32 %66, i32* %67, align 4
  %68 = load %struct.ifnet_init_params*, %struct.ifnet_init_params** %4, align 8
  %69 = getelementptr inbounds %struct.ifnet_init_params, %struct.ifnet_init_params* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %7, i32 0, i32 9
  store i32 %70, i32* %71, align 4
  %72 = load %struct.ifnet_init_params*, %struct.ifnet_init_params** %4, align 8
  %73 = getelementptr inbounds %struct.ifnet_init_params, %struct.ifnet_init_params* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %7, i32 0, i32 8
  store i32 %74, i32* %75, align 4
  %76 = load %struct.ifnet_init_params*, %struct.ifnet_init_params** %4, align 8
  %77 = getelementptr inbounds %struct.ifnet_init_params, %struct.ifnet_init_params* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %7, i32 0, i32 7
  store i32 %78, i32* %79, align 4
  %80 = load %struct.ifnet_init_params*, %struct.ifnet_init_params** %4, align 8
  %81 = getelementptr inbounds %struct.ifnet_init_params, %struct.ifnet_init_params* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %7, i32 0, i32 6
  store i32 %82, i32* %83, align 4
  %84 = load %struct.ifnet_init_params*, %struct.ifnet_init_params** %4, align 8
  %85 = getelementptr inbounds %struct.ifnet_init_params, %struct.ifnet_init_params* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %7, i32 0, i32 5
  store i32 %86, i32* %87, align 4
  %88 = load %struct.ifnet_init_params*, %struct.ifnet_init_params** %4, align 8
  %89 = getelementptr inbounds %struct.ifnet_init_params, %struct.ifnet_init_params* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %7, i32 0, i32 4
  store i32 %90, i32* %91, align 4
  %92 = load %struct.ifnet_init_params*, %struct.ifnet_init_params** %4, align 8
  %93 = getelementptr inbounds %struct.ifnet_init_params, %struct.ifnet_init_params* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %7, i32 0, i32 3
  store i32 %94, i32* %95, align 4
  %96 = load %struct.ifnet_init_params*, %struct.ifnet_init_params** %4, align 8
  %97 = getelementptr inbounds %struct.ifnet_init_params, %struct.ifnet_init_params* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.ifnet_init_eparams, %struct.ifnet_init_eparams* %7, i32 0, i32 2
  store i32 %98, i32* %99, align 4
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @ifnet_allocate_extended(%struct.ifnet_init_eparams* %7, i32* %100)
  ret i32 %101
}

declare dso_local i32 @bzero(%struct.ifnet_init_eparams*, i32) #1

declare dso_local i32 @ifnet_allocate_extended(%struct.ifnet_init_eparams*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
