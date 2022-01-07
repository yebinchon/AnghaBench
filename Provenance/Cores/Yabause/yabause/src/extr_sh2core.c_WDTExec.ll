; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2core.c_WDTExec.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2core.c_WDTExec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i64, i32 }

@CurrentSH2 = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"Watchdog timer(WDT mode) overflow not implemented\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WDTExec(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CurrentSH2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CurrentSH2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 128
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CurrentSH2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 128
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %10, %1
  br label %98

25:                                               ; preds = %17
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CurrentSH2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %3, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CurrentSH2, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 1, %34
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %2, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CurrentSH2, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %37, %41
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CurrentSH2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = ashr i32 %42, %46
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %2, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CurrentSH2, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %50, %54
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %55, %56
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CurrentSH2, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp sgt i32 %61, 255
  br i1 %62, label %63, label %92

63:                                               ; preds = %25
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CurrentSH2, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %63
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CurrentSH2, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, 128
  store i32 %74, i32* %72, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CurrentSH2, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CurrentSH2, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = ashr i32 %79, 8
  %81 = and i32 %80, 127
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CurrentSH2, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 4
  %87 = and i32 %86, 15
  %88 = call i32 @SH2SendInterrupt(%struct.TYPE_7__* %75, i32 %81, i32 %87)
  br label %91

89:                                               ; preds = %63
  %90 = call i32 @LOG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %69
  br label %92

92:                                               ; preds = %91, %25
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CurrentSH2, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 4
  store i64 %94, i64* %97, align 8
  br label %98

98:                                               ; preds = %92, %24
  ret void
}

declare dso_local i32 @SH2SendInterrupt(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @LOG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
