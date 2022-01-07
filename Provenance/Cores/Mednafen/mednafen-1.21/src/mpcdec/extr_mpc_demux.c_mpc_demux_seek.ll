; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_mpc_demux.c_mpc_demux_seek.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_mpc_demux.c_mpc_demux_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_12__*, i64, i64, i64 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, i32)*, i64 (%struct.TYPE_12__*)* }

@MPC_STATUS_FAIL = common dso_local global i32 0, align 4
@MPC_BUFFER_SWAP = common dso_local global i32 0, align 4
@MPC_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32)* @mpc_demux_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_demux_seek(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load i64 (%struct.TYPE_12__*)*, i64 (%struct.TYPE_12__*)** %15, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = call i64 %16(%struct.TYPE_12__* %19)
  %21 = trunc i64 %20 to i32
  %22 = shl i32 %21, 3
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 %26, 3
  %28 = sub nsw i32 %23, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %40, %41
  %43 = ashr i32 %42, 3
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %39, %44
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  store i64 %45, i64* %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 7
  store i32 %50, i32* %10, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 5
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  br label %97

55:                                               ; preds = %32, %3
  %56 = load i32, i32* %6, align 4
  %57 = ashr i32 %56, 3
  store i32 %57, i32* %11, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 7
  br i1 %62, label %63, label %76

63:                                               ; preds = %55
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %64, %68
  %70 = and i32 %69, -4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %70, %74
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %63, %55
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %11, align 4
  %79 = shl i32 %78, 3
  %80 = sub nsw i32 %77, %79
  store i32 %80, i32* %10, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = call i32 @mpc_demux_clear_buff(%struct.TYPE_11__* %81)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %86, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call i32 %87(%struct.TYPE_12__* %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %76
  %95 = load i32, i32* @MPC_STATUS_FAIL, align 4
  store i32 %95, i32* %4, align 4
  br label %138

96:                                               ; preds = %76
  br label %97

97:                                               ; preds = %96, %36
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 7
  br i1 %102, label %103, label %114

103:                                              ; preds = %97
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 7
  %108 = ashr i32 %107, 3
  %109 = add nsw i32 %105, %108
  %110 = add nsw i32 %109, 3
  %111 = and i32 %110, -4
  %112 = load i32, i32* @MPC_BUFFER_SWAP, align 4
  %113 = call i32 @mpc_demux_fill(%struct.TYPE_11__* %104, i32 %111, i32 %112)
  br label %122

114:                                              ; preds = %97
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 7
  %119 = ashr i32 %118, 3
  %120 = add nsw i32 %116, %119
  %121 = call i32 @mpc_demux_fill(%struct.TYPE_11__* %115, i32 %120, i32 0)
  br label %122

122:                                              ; preds = %114, %103
  %123 = load i32, i32* %10, align 4
  %124 = ashr i32 %123, 3
  %125 = sext i32 %124 to i64
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, %125
  store i64 %130, i64* %128, align 8
  %131 = load i32, i32* %10, align 4
  %132 = and i32 %131, 7
  %133 = sub nsw i32 8, %132
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 8
  %137 = load i32, i32* @MPC_STATUS_OK, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %122, %94
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @mpc_demux_clear_buff(%struct.TYPE_11__*) #1

declare dso_local i32 @mpc_demux_fill(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
