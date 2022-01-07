; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_log.c_log_putc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_log.c_log_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@msgbufp = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_putc(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  store i32 0, i32* %3, align 4
  %4 = call i32 (...) @LOG_LOCK()
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msgbufp, align 8
  %6 = load i8, i8* %2, align 1
  %7 = call i32 @log_putc_locked(%struct.TYPE_4__* %5, i8 signext %6)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msgbufp, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msgbufp, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  store i32 %14, i32* %3, align 4
  %15 = call i32 (...) @LOG_UNLOCK()
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %18, %1
  %22 = load i8, i8* %2, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msgbufp, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 2
  %31 = icmp sge i32 %26, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25, %21
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msgbufp, align 8
  %34 = call i32 @logwakeup(%struct.TYPE_4__* %33)
  br label %35

35:                                               ; preds = %32, %25
  ret void
}

declare dso_local i32 @LOG_LOCK(...) #1

declare dso_local i32 @log_putc_locked(%struct.TYPE_4__*, i8 signext) #1

declare dso_local i32 @LOG_UNLOCK(...) #1

declare dso_local i32 @logwakeup(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
