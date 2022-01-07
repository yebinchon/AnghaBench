; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_event.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_event_msg = type { i64, i32*, i32, i32, i32, i32 }
%struct.kev_msg = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@KEV_MSG_HEADER_SIZE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_event(i32* %0, %struct.kern_event_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.kern_event_msg*, align 8
  %6 = alloca %struct.kev_msg, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.kern_event_msg* %1, %struct.kern_event_msg** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.kern_event_msg*, %struct.kern_event_msg** %5, align 8
  %12 = icmp eq %struct.kern_event_msg* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %58

15:                                               ; preds = %10
  %16 = call i32 @bzero(%struct.kev_msg* %6, i32 24)
  %17 = load %struct.kern_event_msg*, %struct.kern_event_msg** %5, align 8
  %18 = getelementptr inbounds %struct.kern_event_msg, %struct.kern_event_msg* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 4
  store i32 %19, i32* %20, align 4
  %21 = load %struct.kern_event_msg*, %struct.kern_event_msg** %5, align 8
  %22 = getelementptr inbounds %struct.kern_event_msg, %struct.kern_event_msg* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 3
  store i32 %23, i32* %24, align 8
  %25 = load %struct.kern_event_msg*, %struct.kern_event_msg** %5, align 8
  %26 = getelementptr inbounds %struct.kern_event_msg, %struct.kern_event_msg* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load %struct.kern_event_msg*, %struct.kern_event_msg** %5, align 8
  %30 = getelementptr inbounds %struct.kern_event_msg, %struct.kern_event_msg* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 1
  store i32 %31, i32* %32, align 8
  %33 = load %struct.kern_event_msg*, %struct.kern_event_msg** %5, align 8
  %34 = getelementptr inbounds %struct.kern_event_msg, %struct.kern_event_msg* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32* %36, i32** %40, align 8
  %41 = load %struct.kern_event_msg*, %struct.kern_event_msg** %5, align 8
  %42 = getelementptr inbounds %struct.kern_event_msg, %struct.kern_event_msg* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @KEV_MSG_HEADER_SIZE, align 8
  %45 = sub nsw i64 %43, %44
  %46 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i64 %45, i64* %49, align 8
  %50 = getelementptr inbounds %struct.kev_msg, %struct.kev_msg* %6, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @TRUE, align 4
  %56 = call i32 @dlil_event_internal(i32* %54, %struct.kev_msg* %6, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %15, %13
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @bzero(%struct.kev_msg*, i32) #1

declare dso_local i32 @dlil_event_internal(i32*, %struct.kev_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
