; ModuleID = '/home/carl/AnghaBench/disque/src/extr_slowlog.c_slowlogPushEntryIfNeeded.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_slowlog.c_slowlogPushEntryIfNeeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slowlogPushEntryIfNeeded(i32** %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %32

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %16 = load i32**, i32*** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @slowlogCreateEntry(i32** %16, i32 %17, i64 %18)
  %20 = call i32 @listAddNodeHead(i32 %15, i32 %19)
  br label %21

21:                                               ; preds = %14, %10
  br label %22

22:                                               ; preds = %27, %21
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %24 = call i64 @listLength(i32 %23)
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %30 = call i32 @listLast(i32 %29)
  %31 = call i32 @listDelNode(i32 %28, i32 %30)
  br label %22

32:                                               ; preds = %9, %22
  ret void
}

declare dso_local i32 @listAddNodeHead(i32, i32) #1

declare dso_local i32 @slowlogCreateEntry(i32**, i32, i64) #1

declare dso_local i64 @listLength(i32) #1

declare dso_local i32 @listDelNode(i32, i32) #1

declare dso_local i32 @listLast(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
