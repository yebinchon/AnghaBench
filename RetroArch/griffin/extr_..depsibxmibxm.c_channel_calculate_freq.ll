; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_channel_calculate_freq.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_channel_calculate_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }

@FP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel*)* @channel_calculate_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_calculate_freq(%struct.channel* %0) #0 {
  %2 = alloca %struct.channel*, align 8
  %3 = alloca i32, align 4
  store %struct.channel* %0, %struct.channel** %2, align 8
  %4 = load %struct.channel*, %struct.channel** %2, align 8
  %5 = getelementptr inbounds %struct.channel, %struct.channel* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.channel*, %struct.channel** %2, align 8
  %8 = getelementptr inbounds %struct.channel, %struct.channel* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %6, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.channel*, %struct.channel** %2, align 8
  %12 = getelementptr inbounds %struct.channel, %struct.channel* %11, i32 0, i32 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.channel*, %struct.channel** %2, align 8
  %22 = getelementptr inbounds %struct.channel, %struct.channel* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 %23, 6
  %25 = sub nsw i32 %20, %24
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 28
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %3, align 4
  %30 = icmp sgt i32 %29, 7680
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %19
  store i32 7680, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = load %struct.channel*, %struct.channel** %2, align 8
  %34 = getelementptr inbounds %struct.channel, %struct.channel* %33, i32 0, i32 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = ashr i32 %39, 4
  %41 = load i32, i32* %3, align 4
  %42 = sub nsw i32 4608, %41
  %43 = load i32, i32* @FP_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = sdiv i32 %44, 768
  %46 = call i32 @exp_2(i32 %45)
  %47 = mul nsw i32 %40, %46
  %48 = load i32, i32* @FP_SHIFT, align 4
  %49 = sub nsw i32 %48, 4
  %50 = ashr i32 %47, %49
  %51 = load %struct.channel*, %struct.channel** %2, align 8
  %52 = getelementptr inbounds %struct.channel, %struct.channel* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  br label %85

53:                                               ; preds = %1
  %54 = load i32, i32* %3, align 4
  %55 = icmp sgt i32 %54, 29021
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 29021, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @FP_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = load %struct.channel*, %struct.channel** %2, align 8
  %62 = getelementptr inbounds %struct.channel, %struct.channel* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @FP_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = sdiv i32 %65, 12
  %67 = call i32 @exp_2(i32 %66)
  %68 = sdiv i32 %60, %67
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = icmp slt i32 %69, 28
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  store i32 29021, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %57
  %73 = load %struct.channel*, %struct.channel** %2, align 8
  %74 = getelementptr inbounds %struct.channel, %struct.channel* %73, i32 0, i32 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = mul nsw i32 %79, 1712
  %81 = load i32, i32* %3, align 4
  %82 = sdiv i32 %80, %81
  %83 = load %struct.channel*, %struct.channel** %2, align 8
  %84 = getelementptr inbounds %struct.channel, %struct.channel* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %72, %32
  ret void
}

declare dso_local i32 @exp_2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
