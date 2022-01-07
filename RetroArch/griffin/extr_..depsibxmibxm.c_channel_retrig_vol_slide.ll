; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_channel_retrig_vol_slide.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_channel_retrig_vol_slide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i64, i64, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel*)* @channel_retrig_vol_slide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_retrig_vol_slide(%struct.channel* %0) #0 {
  %2 = alloca %struct.channel*, align 8
  store %struct.channel* %0, %struct.channel** %2, align 8
  %3 = load %struct.channel*, %struct.channel** %2, align 8
  %4 = getelementptr inbounds %struct.channel, %struct.channel* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.channel*, %struct.channel** %2, align 8
  %7 = getelementptr inbounds %struct.channel, %struct.channel* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp sge i64 %5, %8
  br i1 %9, label %10, label %138

10:                                               ; preds = %1
  %11 = load %struct.channel*, %struct.channel** %2, align 8
  %12 = getelementptr inbounds %struct.channel, %struct.channel* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.channel*, %struct.channel** %2, align 8
  %14 = getelementptr inbounds %struct.channel, %struct.channel* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.channel*, %struct.channel** %2, align 8
  %16 = getelementptr inbounds %struct.channel, %struct.channel* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.channel*, %struct.channel** %2, align 8
  %18 = getelementptr inbounds %struct.channel, %struct.channel* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %121 [
    i32 1, label %20
    i32 2, label %27
    i32 3, label %34
    i32 4, label %41
    i32 5, label %48
    i32 6, label %55
    i32 7, label %63
    i32 8, label %70
    i32 9, label %71
    i32 10, label %78
    i32 11, label %85
    i32 12, label %92
    i32 13, label %99
    i32 14, label %106
    i32 15, label %114
  ]

20:                                               ; preds = %10
  %21 = load %struct.channel*, %struct.channel** %2, align 8
  %22 = getelementptr inbounds %struct.channel, %struct.channel* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load %struct.channel*, %struct.channel** %2, align 8
  %26 = getelementptr inbounds %struct.channel, %struct.channel* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  br label %121

27:                                               ; preds = %10
  %28 = load %struct.channel*, %struct.channel** %2, align 8
  %29 = getelementptr inbounds %struct.channel, %struct.channel* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 2
  %32 = load %struct.channel*, %struct.channel** %2, align 8
  %33 = getelementptr inbounds %struct.channel, %struct.channel* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  br label %121

34:                                               ; preds = %10
  %35 = load %struct.channel*, %struct.channel** %2, align 8
  %36 = getelementptr inbounds %struct.channel, %struct.channel* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 4
  %39 = load %struct.channel*, %struct.channel** %2, align 8
  %40 = getelementptr inbounds %struct.channel, %struct.channel* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  br label %121

41:                                               ; preds = %10
  %42 = load %struct.channel*, %struct.channel** %2, align 8
  %43 = getelementptr inbounds %struct.channel, %struct.channel* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 8
  %46 = load %struct.channel*, %struct.channel** %2, align 8
  %47 = getelementptr inbounds %struct.channel, %struct.channel* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  br label %121

48:                                               ; preds = %10
  %49 = load %struct.channel*, %struct.channel** %2, align 8
  %50 = getelementptr inbounds %struct.channel, %struct.channel* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 16
  %53 = load %struct.channel*, %struct.channel** %2, align 8
  %54 = getelementptr inbounds %struct.channel, %struct.channel* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  br label %121

55:                                               ; preds = %10
  %56 = load %struct.channel*, %struct.channel** %2, align 8
  %57 = getelementptr inbounds %struct.channel, %struct.channel* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, 2
  %60 = sdiv i32 %59, 3
  %61 = load %struct.channel*, %struct.channel** %2, align 8
  %62 = getelementptr inbounds %struct.channel, %struct.channel* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  br label %121

63:                                               ; preds = %10
  %64 = load %struct.channel*, %struct.channel** %2, align 8
  %65 = getelementptr inbounds %struct.channel, %struct.channel* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 1
  %68 = load %struct.channel*, %struct.channel** %2, align 8
  %69 = getelementptr inbounds %struct.channel, %struct.channel* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  br label %121

70:                                               ; preds = %10
  br label %121

71:                                               ; preds = %10
  %72 = load %struct.channel*, %struct.channel** %2, align 8
  %73 = getelementptr inbounds %struct.channel, %struct.channel* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  %76 = load %struct.channel*, %struct.channel** %2, align 8
  %77 = getelementptr inbounds %struct.channel, %struct.channel* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  br label %121

78:                                               ; preds = %10
  %79 = load %struct.channel*, %struct.channel** %2, align 8
  %80 = getelementptr inbounds %struct.channel, %struct.channel* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 2
  %83 = load %struct.channel*, %struct.channel** %2, align 8
  %84 = getelementptr inbounds %struct.channel, %struct.channel* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  br label %121

85:                                               ; preds = %10
  %86 = load %struct.channel*, %struct.channel** %2, align 8
  %87 = getelementptr inbounds %struct.channel, %struct.channel* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 4
  %90 = load %struct.channel*, %struct.channel** %2, align 8
  %91 = getelementptr inbounds %struct.channel, %struct.channel* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  br label %121

92:                                               ; preds = %10
  %93 = load %struct.channel*, %struct.channel** %2, align 8
  %94 = getelementptr inbounds %struct.channel, %struct.channel* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 8
  %97 = load %struct.channel*, %struct.channel** %2, align 8
  %98 = getelementptr inbounds %struct.channel, %struct.channel* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  br label %121

99:                                               ; preds = %10
  %100 = load %struct.channel*, %struct.channel** %2, align 8
  %101 = getelementptr inbounds %struct.channel, %struct.channel* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 16
  %104 = load %struct.channel*, %struct.channel** %2, align 8
  %105 = getelementptr inbounds %struct.channel, %struct.channel* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  br label %121

106:                                              ; preds = %10
  %107 = load %struct.channel*, %struct.channel** %2, align 8
  %108 = getelementptr inbounds %struct.channel, %struct.channel* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %109, 3
  %111 = sdiv i32 %110, 2
  %112 = load %struct.channel*, %struct.channel** %2, align 8
  %113 = getelementptr inbounds %struct.channel, %struct.channel* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 4
  br label %121

114:                                              ; preds = %10
  %115 = load %struct.channel*, %struct.channel** %2, align 8
  %116 = getelementptr inbounds %struct.channel, %struct.channel* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 1
  %119 = load %struct.channel*, %struct.channel** %2, align 8
  %120 = getelementptr inbounds %struct.channel, %struct.channel* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %10, %114, %106, %99, %92, %85, %78, %71, %70, %63, %55, %48, %41, %34, %27, %20
  %122 = load %struct.channel*, %struct.channel** %2, align 8
  %123 = getelementptr inbounds %struct.channel, %struct.channel* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load %struct.channel*, %struct.channel** %2, align 8
  %128 = getelementptr inbounds %struct.channel, %struct.channel* %127, i32 0, i32 5
  store i32 0, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %121
  %130 = load %struct.channel*, %struct.channel** %2, align 8
  %131 = getelementptr inbounds %struct.channel, %struct.channel* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = icmp sgt i32 %132, 64
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.channel*, %struct.channel** %2, align 8
  %136 = getelementptr inbounds %struct.channel, %struct.channel* %135, i32 0, i32 5
  store i32 64, i32* %136, align 4
  br label %137

137:                                              ; preds = %134, %129
  br label %138

138:                                              ; preds = %137, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
