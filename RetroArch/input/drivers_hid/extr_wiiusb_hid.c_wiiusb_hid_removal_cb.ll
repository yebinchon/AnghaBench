; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiusb_hid.c_wiiusb_hid_removal_cb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiusb_hid.c_wiiusb_hid_removal_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiiusb_adapter = type { %struct.wiiusb_adapter*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.wiiusb_adapter*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wiiusb_hid_removal_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiiusb_hid_removal_cb(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wiiusb_adapter*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca %struct.wiiusb_adapter*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.wiiusb_adapter*
  store %struct.wiiusb_adapter* %10, %struct.wiiusb_adapter** %6, align 8
  %11 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %6, align 8
  %12 = icmp ne %struct.wiiusb_adapter* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi %struct.TYPE_2__* [ %16, %13 ], [ null, %17 ]
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %7, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %24, align 8
  br label %27

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi %struct.wiiusb_adapter* [ %25, %22 ], [ null, %26 ]
  store %struct.wiiusb_adapter* %28, %struct.wiiusb_adapter** %8, align 8
  %29 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %6, align 8
  %30 = icmp ne %struct.wiiusb_adapter* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %8, align 8
  %36 = icmp ne %struct.wiiusb_adapter* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %34, %31, %27
  store i32 -1, i32* %3, align 4
  br label %81

43:                                               ; preds = %37
  %44 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %8, align 8
  %45 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %6, align 8
  %46 = icmp eq %struct.wiiusb_adapter* %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %6, align 8
  %49 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %48, i32 0, i32 0
  %50 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %49, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store %struct.wiiusb_adapter* %50, %struct.wiiusb_adapter** %52, align 8
  br label %76

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %71, %53
  %55 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %8, align 8
  %56 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %55, i32 0, i32 0
  %57 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %56, align 8
  %58 = icmp ne %struct.wiiusb_adapter* %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %8, align 8
  %61 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %60, i32 0, i32 0
  %62 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %61, align 8
  %63 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %6, align 8
  %64 = icmp eq %struct.wiiusb_adapter* %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %6, align 8
  %67 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %66, i32 0, i32 0
  %68 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %67, align 8
  %69 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %8, align 8
  %70 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %69, i32 0, i32 0
  store %struct.wiiusb_adapter* %68, %struct.wiiusb_adapter** %70, align 8
  br label %75

71:                                               ; preds = %59
  %72 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %8, align 8
  %73 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %72, i32 0, i32 0
  %74 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %73, align 8
  store %struct.wiiusb_adapter* %74, %struct.wiiusb_adapter** %8, align 8
  br label %54

75:                                               ; preds = %65, %54
  br label %76

76:                                               ; preds = %75, %47
  %77 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %6, align 8
  %78 = call i32 @wiiusb_hid_release_adapter(%struct.wiiusb_adapter* %77)
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %76, %42
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @wiiusb_hid_release_adapter(%struct.wiiusb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
