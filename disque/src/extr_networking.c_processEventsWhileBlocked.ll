; ModuleID = '/home/carl/AnghaBench/disque/src/extr_networking.c_processEventsWhileBlocked.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_networking.c_processEventsWhileBlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@AE_FILE_EVENTS = common dso_local global i32 0, align 4
@AE_DONT_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @processEventsWhileBlocked() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 4, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %26, %0
  %5 = load i32, i32* %1, align 4
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* %1, align 4
  %7 = icmp ne i32 %5, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  store i32 0, i32* %3, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %10 = load i32, i32* @AE_FILE_EVENTS, align 4
  %11 = load i32, i32* @AE_DONT_WAIT, align 4
  %12 = or i32 %10, %11
  %13 = call i64 @aeProcessEvents(i32 %9, i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %3, align 4
  %18 = call i64 (...) @handleClientsWithPendingWrites()
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %8
  br label %30

26:                                               ; preds = %8
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %2, align 4
  br label %4

30:                                               ; preds = %25, %4
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @aeProcessEvents(i32, i32) #1

declare dso_local i64 @handleClientsWithPendingWrites(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
