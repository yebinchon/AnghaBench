; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_PushUserClipping.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_PushUserClipping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [38 x i8] c"User clipping mode 1 not implemented\0A\00", align 1
@Vdp1Regs = common dso_local global %struct.TYPE_2__* null, align 8
@vdp1clipxstart = common dso_local global i64 0, align 8
@vdp1clipxend = common dso_local global i64 0, align 8
@vdp1clipystart = common dso_local global i64 0, align 8
@vdp1clipyend = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @PushUserClipping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PushUserClipping(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 @VDP1LOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %75

7:                                                ; preds = %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* @vdp1clipxstart, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* @vdp1clipxend, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* @vdp1clipystart, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* @vdp1clipyend, align 8
  %20 = load i64, i64* @vdp1clipxstart, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %7
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* @vdp1clipxstart, align 8
  br label %33

29:                                               ; preds = %7
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* @vdp1clipxstart, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i64, i64* @vdp1clipxend, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* @vdp1clipxend, align 8
  br label %47

43:                                               ; preds = %33
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* @vdp1clipxend, align 8
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i64, i64* @vdp1clipystart, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* @vdp1clipystart, align 8
  br label %61

57:                                               ; preds = %47
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* @vdp1clipystart, align 8
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i64, i64* @vdp1clipyend, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 7
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* @vdp1clipyend, align 8
  br label %75

71:                                               ; preds = %61
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Vdp1Regs, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 7
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* @vdp1clipyend, align 8
  br label %75

75:                                               ; preds = %5, %71, %67
  ret void
}

declare dso_local i32 @VDP1LOG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
