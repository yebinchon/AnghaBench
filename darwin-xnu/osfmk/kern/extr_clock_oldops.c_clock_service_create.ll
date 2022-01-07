; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock_oldops.c_clock_service_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock_oldops.c_clock_service_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@clock_count = common dso_local global i32 0, align 4
@clock_list = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"alarms\00", align 1
@alarm_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clock_service_create() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %22, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @clock_count, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clock_list, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i64 %10
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %1, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %7
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %18 = call i32 @ipc_clock_init(%struct.TYPE_5__* %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %20 = call i32 @ipc_clock_enable(%struct.TYPE_5__* %19)
  br label %21

21:                                               ; preds = %16, %7
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %3

25:                                               ; preds = %3
  store i32 4, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = sdiv i32 4096, %27
  %29 = load i32, i32* %2, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* %2, align 4
  %32 = mul nsw i32 10, %31
  %33 = call i32 @zinit(i32 %26, i32 %30, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %33, i32* @alarm_zone, align 4
  ret void
}

declare dso_local i32 @ipc_clock_init(%struct.TYPE_5__*) #1

declare dso_local i32 @ipc_clock_enable(%struct.TYPE_5__*) #1

declare dso_local i32 @zinit(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
