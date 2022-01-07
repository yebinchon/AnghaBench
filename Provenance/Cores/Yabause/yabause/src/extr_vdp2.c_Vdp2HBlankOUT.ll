; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp2.c_Vdp2HBlankOUT.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp2.c_Vdp2HBlankOUT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32* }

@Vdp2Regs = common dso_local global %struct.TYPE_8__* null, align 8
@yabsys = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@Vdp2Lines = common dso_local global i64 0, align 8
@cell_scroll_data = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Vdp2HBlankOUT() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %4 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, -5
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @yabsys, i32 0, i32 0), align 4
  %8 = icmp slt i32 %7, 270
  br i1 %8, label %9, label %44

9:                                                ; preds = %0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 524286
  %15 = shl i32 %14, 1
  store i32 %15, i32* %2, align 4
  %16 = load i64, i64* @Vdp2Lines, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @yabsys, i32 0, i32 0), align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Vdp2Regs, align 8
  %21 = call i32 @memcpy(i64 %19, %struct.TYPE_8__* %20, i32 4)
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %40, %9
  %23 = load i32, i32* %1, align 4
  %24 = icmp slt i32 %23, 88
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %1, align 4
  %28 = mul nsw i32 %27, 4
  %29 = add nsw i32 %26, %28
  %30 = call i32 @Vdp2RamReadLong(i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cell_scroll_data, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @yabsys, i32 0, i32 0), align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %30, i32* %39, align 4
  br label %40

40:                                               ; preds = %25
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %1, align 4
  br label %22

43:                                               ; preds = %22
  br label %44

44:                                               ; preds = %43, %0
  ret void
}

declare dso_local i32 @memcpy(i64, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @Vdp2RamReadLong(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
