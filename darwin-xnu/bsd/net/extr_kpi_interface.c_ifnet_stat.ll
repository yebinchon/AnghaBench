; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_stat.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ifnet_stats_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_stat(%struct.ifnet* %0, %struct.ifnet_stats_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.ifnet_stats_param*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.ifnet_stats_param* %1, %struct.ifnet_stats_param** %5, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %7 = icmp eq %struct.ifnet* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  store i32 %9, i32* %3, align 4
  br label %96

10:                                               ; preds = %2
  %11 = load %struct.ifnet_stats_param*, %struct.ifnet_stats_param** %5, align 8
  %12 = getelementptr inbounds %struct.ifnet_stats_param, %struct.ifnet_stats_param* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 10
  %17 = call i32 @atomic_get_64(i32 %13, i32* %16)
  %18 = load %struct.ifnet_stats_param*, %struct.ifnet_stats_param** %5, align 8
  %19 = getelementptr inbounds %struct.ifnet_stats_param, %struct.ifnet_stats_param* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 9
  %24 = call i32 @atomic_get_64(i32 %20, i32* %23)
  %25 = load %struct.ifnet_stats_param*, %struct.ifnet_stats_param** %5, align 8
  %26 = getelementptr inbounds %struct.ifnet_stats_param, %struct.ifnet_stats_param* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 8
  %31 = call i32 @atomic_get_64(i32 %27, i32* %30)
  %32 = load %struct.ifnet_stats_param*, %struct.ifnet_stats_param** %5, align 8
  %33 = getelementptr inbounds %struct.ifnet_stats_param, %struct.ifnet_stats_param* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 7
  %38 = call i32 @atomic_get_64(i32 %34, i32* %37)
  %39 = load %struct.ifnet_stats_param*, %struct.ifnet_stats_param** %5, align 8
  %40 = getelementptr inbounds %struct.ifnet_stats_param, %struct.ifnet_stats_param* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 6
  %45 = call i32 @atomic_get_64(i32 %41, i32* %44)
  %46 = load %struct.ifnet_stats_param*, %struct.ifnet_stats_param** %5, align 8
  %47 = getelementptr inbounds %struct.ifnet_stats_param, %struct.ifnet_stats_param* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 5
  %52 = call i32 @atomic_get_64(i32 %48, i32* %51)
  %53 = load %struct.ifnet_stats_param*, %struct.ifnet_stats_param** %5, align 8
  %54 = getelementptr inbounds %struct.ifnet_stats_param, %struct.ifnet_stats_param* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  %59 = call i32 @atomic_get_64(i32 %55, i32* %58)
  %60 = load %struct.ifnet_stats_param*, %struct.ifnet_stats_param** %5, align 8
  %61 = getelementptr inbounds %struct.ifnet_stats_param, %struct.ifnet_stats_param* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %64 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = call i32 @atomic_get_64(i32 %62, i32* %65)
  %67 = load %struct.ifnet_stats_param*, %struct.ifnet_stats_param** %5, align 8
  %68 = getelementptr inbounds %struct.ifnet_stats_param, %struct.ifnet_stats_param* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %71 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = call i32 @atomic_get_64(i32 %69, i32* %72)
  %74 = load %struct.ifnet_stats_param*, %struct.ifnet_stats_param** %5, align 8
  %75 = getelementptr inbounds %struct.ifnet_stats_param, %struct.ifnet_stats_param* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %78 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = call i32 @atomic_get_64(i32 %76, i32* %79)
  %81 = load %struct.ifnet_stats_param*, %struct.ifnet_stats_param** %5, align 8
  %82 = getelementptr inbounds %struct.ifnet_stats_param, %struct.ifnet_stats_param* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %85 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = call i32 @atomic_get_64(i32 %83, i32* %86)
  %88 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %89 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %10
  %93 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %94 = call i32 @ifnet_notify_data_threshold(%struct.ifnet* %93)
  br label %95

95:                                               ; preds = %92, %10
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %8
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @atomic_get_64(i32, i32*) #1

declare dso_local i32 @ifnet_notify_data_threshold(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
