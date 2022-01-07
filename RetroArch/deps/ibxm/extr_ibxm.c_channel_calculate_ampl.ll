; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_channel_calculate_ampl.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_channel_calculate_ampl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@FP_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel*)* @channel_calculate_ampl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_calculate_ampl(%struct.channel* %0) #0 {
  %2 = alloca %struct.channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.channel* %0, %struct.channel** %2, align 8
  store i32 32, i32* %5, align 4
  %7 = load %struct.channel*, %struct.channel** %2, align 8
  %8 = getelementptr inbounds %struct.channel, %struct.channel* %7, i32 0, i32 10
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 64, i32 0
  store i32 %12, i32* %6, align 4
  %13 = load %struct.channel*, %struct.channel** %2, align 8
  %14 = getelementptr inbounds %struct.channel, %struct.channel* %13, i32 0, i32 7
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.channel*, %struct.channel** %2, align 8
  %22 = getelementptr inbounds %struct.channel, %struct.channel* %21, i32 0, i32 7
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load %struct.channel*, %struct.channel** %2, align 8
  %26 = getelementptr inbounds %struct.channel, %struct.channel* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @envelope_calculate_ampl(%struct.TYPE_8__* %24, i32 %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %20, %1
  %30 = load %struct.channel*, %struct.channel** %2, align 8
  %31 = getelementptr inbounds %struct.channel, %struct.channel* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.channel*, %struct.channel** %2, align 8
  %34 = getelementptr inbounds %struct.channel, %struct.channel* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp sgt i32 %37, 64
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 64, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.channel*, %struct.channel** %2, align 8
  %47 = getelementptr inbounds %struct.channel, %struct.channel* %46, i32 0, i32 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %45, %52
  %54 = load i32, i32* @FP_ONE, align 4
  %55 = mul nsw i32 %53, %54
  %56 = ashr i32 %55, 13
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.channel*, %struct.channel** %2, align 8
  %59 = getelementptr inbounds %struct.channel, %struct.channel* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %57, %60
  %62 = ashr i32 %61, 15
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.channel*, %struct.channel** %2, align 8
  %65 = getelementptr inbounds %struct.channel, %struct.channel* %64, i32 0, i32 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %63, %68
  %70 = load i32, i32* %6, align 4
  %71 = mul nsw i32 %69, %70
  %72 = ashr i32 %71, 12
  %73 = load %struct.channel*, %struct.channel** %2, align 8
  %74 = getelementptr inbounds %struct.channel, %struct.channel* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.channel*, %struct.channel** %2, align 8
  %76 = getelementptr inbounds %struct.channel, %struct.channel* %75, i32 0, i32 7
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %44
  %83 = load %struct.channel*, %struct.channel** %2, align 8
  %84 = getelementptr inbounds %struct.channel, %struct.channel* %83, i32 0, i32 7
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load %struct.channel*, %struct.channel** %2, align 8
  %88 = getelementptr inbounds %struct.channel, %struct.channel* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @envelope_calculate_ampl(%struct.TYPE_8__* %86, i32 %89)
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %82, %44
  %92 = load %struct.channel*, %struct.channel** %2, align 8
  %93 = getelementptr inbounds %struct.channel, %struct.channel* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %94, 128
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.channel*, %struct.channel** %2, align 8
  %98 = getelementptr inbounds %struct.channel, %struct.channel* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  br label %105

100:                                              ; preds = %91
  %101 = load %struct.channel*, %struct.channel** %2, align 8
  %102 = getelementptr inbounds %struct.channel, %struct.channel* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 255, %103
  br label %105

105:                                              ; preds = %100, %96
  %106 = phi i32 [ %99, %96 ], [ %104, %100 ]
  store i32 %106, i32* %4, align 4
  %107 = load %struct.channel*, %struct.channel** %2, align 8
  %108 = getelementptr inbounds %struct.channel, %struct.channel* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* %5, align 4
  %112 = sub nsw i32 %111, 32
  %113 = mul nsw i32 %110, %112
  %114 = ashr i32 %113, 5
  %115 = add nsw i32 %109, %114
  %116 = load %struct.channel*, %struct.channel** %2, align 8
  %117 = getelementptr inbounds %struct.channel, %struct.channel* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  ret void
}

declare dso_local i32 @envelope_calculate_ampl(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
