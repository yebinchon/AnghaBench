; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_am_map.c_AM_addMark.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_am_map.c_AM_addMark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@m_x = common dso_local global i64 0, align 8
@m_w = common dso_local global i32 0, align 4
@markpoints = common dso_local global %struct.TYPE_2__* null, align 8
@markpointnum = common dso_local global i64 0, align 8
@m_y = common dso_local global i64 0, align 8
@m_h = common dso_local global i32 0, align 4
@AM_NUMMARKPOINTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AM_addMark() #0 {
  %1 = load i64, i64* @m_x, align 8
  %2 = load i32, i32* @m_w, align 4
  %3 = sdiv i32 %2, 2
  %4 = sext i32 %3 to i64
  %5 = add nsw i64 %1, %4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @markpoints, align 8
  %7 = load i64, i64* @markpointnum, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store i64 %5, i64* %9, align 8
  %10 = load i64, i64* @m_y, align 8
  %11 = load i32, i32* @m_h, align 4
  %12 = sdiv i32 %11, 2
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %10, %13
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @markpoints, align 8
  %16 = load i64, i64* @markpointnum, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 %14, i64* %18, align 8
  %19 = load i64, i64* @markpointnum, align 8
  %20 = add i64 %19, 1
  %21 = load i64, i64* @AM_NUMMARKPOINTS, align 8
  %22 = urem i64 %20, %21
  store i64 %22, i64* @markpointnum, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
