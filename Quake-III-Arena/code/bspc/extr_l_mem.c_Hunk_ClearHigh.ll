; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_mem.c_Hunk_ClearHigh.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_mem.c_Hunk_ClearHigh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@memhunk_high = common dso_local global %struct.TYPE_4__* null, align 8
@memhunk_high_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Hunk_ClearHigh() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @memhunk_high, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %1, align 8
  br label %4

4:                                                ; preds = %13, %0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %2, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %12 = call i32 @FreeMemory(%struct.TYPE_4__* %11)
  br label %13

13:                                               ; preds = %7
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %1, align 8
  br label %4

15:                                               ; preds = %4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** @memhunk_high, align 8
  store i32 16777216, i32* @memhunk_high_size, align 4
  ret void
}

declare dso_local i32 @FreeMemory(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
