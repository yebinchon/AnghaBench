; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiusb_hid.c_wiiusb_hid_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiusb_hid.c_wiiusb_hid_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiiusb_adapter = type { %struct.wiiusb_adapter* }
%struct.TYPE_3__ = type { i32, i32, %struct.wiiusb_adapter*, i32, i64 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @wiiusb_hid_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiiusb_hid_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.wiiusb_adapter*, align 8
  %4 = alloca %struct.wiiusb_adapter*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.wiiusb_adapter* null, %struct.wiiusb_adapter** %3, align 8
  store %struct.wiiusb_adapter* null, %struct.wiiusb_adapter** %4, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %48

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @sthread_join(i64 %21)
  br label %23

23:                                               ; preds = %18, %11
  %24 = load i32, i32* @TRUE, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %28, align 8
  store %struct.wiiusb_adapter* %29, %struct.wiiusb_adapter** %3, align 8
  br label %30

30:                                               ; preds = %39, %23
  %31 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %3, align 8
  %32 = icmp ne %struct.wiiusb_adapter* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %34, i32 0, i32 0
  %36 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %35, align 8
  store %struct.wiiusb_adapter* %36, %struct.wiiusb_adapter** %4, align 8
  %37 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %3, align 8
  %38 = call i32 @wiiusb_hid_remove_adapter(%struct.wiiusb_adapter* %37)
  br label %39

39:                                               ; preds = %33
  %40 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %4, align 8
  store %struct.wiiusb_adapter* %40, %struct.wiiusb_adapter** %3, align 8
  br label %30

41:                                               ; preds = %30
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pad_connection_destroy(i32 %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = call i32 @free(%struct.TYPE_3__* %46)
  br label %48

48:                                               ; preds = %41, %10
  ret void
}

declare dso_local i32 @sthread_join(i64) #1

declare dso_local i32 @wiiusb_hid_remove_adapter(%struct.wiiusb_adapter*) #1

declare dso_local i32 @pad_connection_destroy(i32) #1

declare dso_local i32 @free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
