; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_new_scsp_reset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_new_scsp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@RELEASE = common dso_local global i32 0, align 4
@scsp_dsp = common dso_local global %struct.Scsp zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @new_scsp_reset(%struct.Scsp* %0) #0 {
  %2 = alloca %struct.Scsp*, align 8
  %3 = alloca i32, align 4
  store %struct.Scsp* %0, %struct.Scsp** %2, align 8
  %4 = load %struct.Scsp*, %struct.Scsp** %2, align 8
  %5 = call i32 @memset(%struct.Scsp* %4, i32 0, i32 8)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %36, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 32
  br i1 %8, label %9, label %39

9:                                                ; preds = %6
  %10 = load %struct.Scsp*, %struct.Scsp** %2, align 8
  %11 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 1023, i32* %17, align 4
  %18 = load i32, i32* @RELEASE, align 4
  %19 = load %struct.Scsp*, %struct.Scsp** %2, align 8
  %20 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i32 %18, i32* %26, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.Scsp*, %struct.Scsp** %2, align 8
  %29 = getelementptr inbounds %struct.Scsp, %struct.Scsp* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 %27, i32* %35, align 4
  br label %36

36:                                               ; preds = %9
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %6

39:                                               ; preds = %6
  %40 = call i32 (...) @fill_plfo_tables()
  %41 = call i32 (...) @fill_alfo_tables()
  %42 = call i32 @memset(%struct.Scsp* @scsp_dsp, i32 0, i32 4)
  ret void
}

declare dso_local i32 @memset(%struct.Scsp*, i32, i32) #1

declare dso_local i32 @fill_plfo_tables(...) #1

declare dso_local i32 @fill_alfo_tables(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
