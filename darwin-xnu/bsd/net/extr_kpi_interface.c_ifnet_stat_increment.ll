; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_stat_increment.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_stat_increment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ifnet_stat_increment_param = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_stat_increment(%struct.ifnet* %0, %struct.ifnet_stat_increment_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.ifnet_stat_increment_param*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.ifnet_stat_increment_param* %1, %struct.ifnet_stat_increment_param** %5, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %7 = icmp eq %struct.ifnet* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  store i32 %9, i32* %3, align 4
  br label %126

10:                                               ; preds = %2
  %11 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %12 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 7
  %19 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %20 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @atomic_add_64(i32* %18, i64 %21)
  br label %23

23:                                               ; preds = %15, %10
  %24 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %25 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 6
  %32 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %33 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @atomic_add_64(i32* %31, i64 %34)
  br label %36

36:                                               ; preds = %28, %23
  %37 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %38 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 5
  %45 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %46 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @atomic_add_64(i32* %44, i64 %47)
  br label %49

49:                                               ; preds = %41, %36
  %50 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %51 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 4
  %58 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %59 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @atomic_add_64(i32* %57, i64 %60)
  br label %62

62:                                               ; preds = %54, %49
  %63 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %64 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %69 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  %71 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %72 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @atomic_add_64(i32* %70, i64 %73)
  br label %75

75:                                               ; preds = %67, %62
  %76 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %77 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %82 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %85 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @atomic_add_64(i32* %83, i64 %86)
  br label %88

88:                                               ; preds = %80, %75
  %89 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %90 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %95 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %98 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @atomic_add_64(i32* %96, i64 %99)
  br label %101

101:                                              ; preds = %93, %88
  %102 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %103 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %102, i32 0, i32 7
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %108 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %111 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %110, i32 0, i32 7
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @atomic_add_64(i32* %109, i64 %112)
  br label %114

114:                                              ; preds = %106, %101
  %115 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %116 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %115, i32 0, i32 1
  %117 = call i32 @TOUCHLASTCHANGE(i32* %116)
  %118 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %119 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %124 = call i32 @ifnet_notify_data_threshold(%struct.ifnet* %123)
  br label %125

125:                                              ; preds = %122, %114
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %8
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @atomic_add_64(i32*, i64) #1

declare dso_local i32 @TOUCHLASTCHANGE(i32*) #1

declare dso_local i32 @ifnet_notify_data_threshold(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
