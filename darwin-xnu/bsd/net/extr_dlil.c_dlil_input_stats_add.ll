; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_input_stats_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_input_stats_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet_stat_increment_param = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.dlil_threading_info = type { i32, %struct.ifnet_stat_increment_param }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet_stat_increment_param*, %struct.dlil_threading_info*, i64)* @dlil_input_stats_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlil_input_stats_add(%struct.ifnet_stat_increment_param* %0, %struct.dlil_threading_info* %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet_stat_increment_param*, align 8
  %5 = alloca %struct.dlil_threading_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ifnet_stat_increment_param*, align 8
  store %struct.ifnet_stat_increment_param* %0, %struct.ifnet_stat_increment_param** %4, align 8
  store %struct.dlil_threading_info* %1, %struct.dlil_threading_info** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %5, align 8
  %9 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %8, i32 0, i32 1
  store %struct.ifnet_stat_increment_param* %9, %struct.ifnet_stat_increment_param** %7, align 8
  %10 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %4, align 8
  %16 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %7, align 8
  %19 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, %17
  store i64 %21, i64* %19, align 8
  br label %22

22:                                               ; preds = %14, %3
  %23 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %4, align 8
  %24 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %4, align 8
  %29 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %7, align 8
  %32 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, %30
  store i64 %34, i64* %32, align 8
  br label %35

35:                                               ; preds = %27, %22
  %36 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %4, align 8
  %37 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %4, align 8
  %42 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %7, align 8
  %45 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, %43
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %40, %35
  %49 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %4, align 8
  %50 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %4, align 8
  %55 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %7, align 8
  %58 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %53, %48
  %62 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %4, align 8
  %63 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %4, align 8
  %68 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %7, align 8
  %71 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, %69
  store i64 %73, i64* %71, align 8
  br label %74

74:                                               ; preds = %66, %61
  %75 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %4, align 8
  %76 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %4, align 8
  %81 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %7, align 8
  %84 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %82
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %79, %74
  %88 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %4, align 8
  %89 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %4, align 8
  %94 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %7, align 8
  %97 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, %95
  store i64 %99, i64* %97, align 8
  br label %100

100:                                              ; preds = %92, %87
  %101 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %4, align 8
  %102 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %101, i32 0, i32 7
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %4, align 8
  %107 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %106, i32 0, i32 7
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %7, align 8
  %110 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %109, i32 0, i32 7
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, %108
  store i64 %112, i64* %110, align 8
  br label %113

113:                                              ; preds = %105, %100
  %114 = load i64, i64* %6, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %113
  %117 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %5, align 8
  %118 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %117, i32 0, i32 0
  %119 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %4, align 8
  %120 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %4, align 8
  %123 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @PKTCNTR_ADD(i32* %118, i64 %121, i64 %124)
  br label %126

126:                                              ; preds = %116, %113
  ret void
}

declare dso_local i32 @PKTCNTR_ADD(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
