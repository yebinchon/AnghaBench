; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c___adjustPosition.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c___adjustPosition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i64 }

@HorVer = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@displayOffsetH = common dso_local global i32 0, align 4
@VI_XFBMODE_SF = common dso_local global i64 0, align 8
@displayOffsetV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @__adjustPosition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__adjustPosition(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 0), align 8
  %10 = load i32, i32* @displayOffsetH, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 1), align 4
  %14 = sub nsw i32 720, %13
  %15 = icmp sle i32 %12, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 2), align 8
  br label %22

21:                                               ; preds = %16
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 2), align 8
  br label %22

22:                                               ; preds = %21, %19
  br label %26

23:                                               ; preds = %1
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 1), align 4
  %25 = sub nsw i32 720, %24
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 2), align 8
  br label %26

26:                                               ; preds = %23, %22
  store i32 1, i32* %3, align 4
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 3), align 8
  %28 = load i64, i64* @VI_XFBMODE_SF, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 2, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %26
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 4), align 8
  %33 = and i32 %32, 1
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 4), align 8
  %35 = load i32, i32* @displayOffsetV, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 5), align 4
  br label %44

42:                                               ; preds = %31
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 5), align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 4), align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 6), align 8
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* @displayOffsetV, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %2, align 4
  %51 = shl i32 %50, 1
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %44
  %58 = load i32, i32* %2, align 4
  %59 = shl i32 %58, 1
  %60 = load i32, i32* %4, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %65

64:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %57
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 4), align 8
  %67 = load i32, i32* @displayOffsetV, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %6, align 4
  br label %77

76:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %76, %72
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 6), align 8
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 %80, %81
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 7), align 4
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 4), align 8
  %84 = load i32, i32* @displayOffsetV, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %77
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %94

93:                                               ; preds = %77
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %93, %89
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 10), align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %3, align 4
  %98 = sdiv i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = sub nsw i64 %95, %99
  store i64 %100, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 11), align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 4), align 8
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 6), align 8
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* @displayOffsetV, align 4
  %105 = add nsw i32 %103, %104
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %94
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %7, align 4
  %112 = sub nsw i32 %111, %110
  store i32 %112, i32* %7, align 4
  br label %114

113:                                              ; preds = %94
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %113, %109
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 4), align 8
  %116 = load i32, i32* @displayOffsetV, align 4
  %117 = add nsw i32 %115, %116
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* %6, align 4
  %124 = sub nsw i32 %123, %122
  store i32 %124, i32* %6, align 4
  br label %126

125:                                              ; preds = %114
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %125, %121
  %127 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 8), align 8
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %3, align 4
  %130 = sdiv i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %127, %131
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %3, align 4
  %135 = sdiv i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = sub nsw i64 %132, %136
  store i64 %137, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @HorVer, i32 0, i32 9), align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
