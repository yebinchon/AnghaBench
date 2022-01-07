; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_stat.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ifnet_stats_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_set_stat(%struct.ifnet* %0, %struct.ifnet_stats_param* %1) #0 {
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
  br label %99

10:                                               ; preds = %2
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 10
  %14 = load %struct.ifnet_stats_param*, %struct.ifnet_stats_param** %5, align 8
  %15 = getelementptr inbounds %struct.ifnet_stats_param, %struct.ifnet_stats_param* %14, i32 0, i32 10
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @atomic_set_64(i32* %13, i32 %16)
  %18 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 9
  %21 = load %struct.ifnet_stats_param*, %struct.ifnet_stats_param** %5, align 8
  %22 = getelementptr inbounds %struct.ifnet_stats_param, %struct.ifnet_stats_param* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @atomic_set_64(i32* %20, i32 %23)
  %25 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 8
  %28 = load %struct.ifnet_stats_param*, %struct.ifnet_stats_param** %5, align 8
  %29 = getelementptr inbounds %struct.ifnet_stats_param, %struct.ifnet_stats_param* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @atomic_set_64(i32* %27, i32 %30)
  %32 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 7
  %35 = load %struct.ifnet_stats_param*, %struct.ifnet_stats_param** %5, align 8
  %36 = getelementptr inbounds %struct.ifnet_stats_param, %struct.ifnet_stats_param* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @atomic_set_64(i32* %34, i32 %37)
  %39 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 6
  %42 = load %struct.ifnet_stats_param*, %struct.ifnet_stats_param** %5, align 8
  %43 = getelementptr inbounds %struct.ifnet_stats_param, %struct.ifnet_stats_param* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @atomic_set_64(i32* %41, i32 %44)
  %46 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 5
  %49 = load %struct.ifnet_stats_param*, %struct.ifnet_stats_param** %5, align 8
  %50 = getelementptr inbounds %struct.ifnet_stats_param, %struct.ifnet_stats_param* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @atomic_set_64(i32* %48, i32 %51)
  %53 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  %56 = load %struct.ifnet_stats_param*, %struct.ifnet_stats_param** %5, align 8
  %57 = getelementptr inbounds %struct.ifnet_stats_param, %struct.ifnet_stats_param* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @atomic_set_64(i32* %55, i32 %58)
  %60 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load %struct.ifnet_stats_param*, %struct.ifnet_stats_param** %5, align 8
  %64 = getelementptr inbounds %struct.ifnet_stats_param, %struct.ifnet_stats_param* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @atomic_set_64(i32* %62, i32 %65)
  %67 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load %struct.ifnet_stats_param*, %struct.ifnet_stats_param** %5, align 8
  %71 = getelementptr inbounds %struct.ifnet_stats_param, %struct.ifnet_stats_param* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @atomic_set_64(i32* %69, i32 %72)
  %74 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %75 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load %struct.ifnet_stats_param*, %struct.ifnet_stats_param** %5, align 8
  %78 = getelementptr inbounds %struct.ifnet_stats_param, %struct.ifnet_stats_param* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @atomic_set_64(i32* %76, i32 %79)
  %81 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %82 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load %struct.ifnet_stats_param*, %struct.ifnet_stats_param** %5, align 8
  %85 = getelementptr inbounds %struct.ifnet_stats_param, %struct.ifnet_stats_param* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @atomic_set_64(i32* %83, i32 %86)
  %88 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %89 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %88, i32 0, i32 1
  %90 = call i32 @TOUCHLASTCHANGE(i32* %89)
  %91 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %92 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %10
  %96 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %97 = call i32 @ifnet_notify_data_threshold(%struct.ifnet* %96)
  br label %98

98:                                               ; preds = %95, %10
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %8
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @atomic_set_64(i32*, i32) #1

declare dso_local i32 @TOUCHLASTCHANGE(i32*) #1

declare dso_local i32 @ifnet_notify_data_threshold(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
