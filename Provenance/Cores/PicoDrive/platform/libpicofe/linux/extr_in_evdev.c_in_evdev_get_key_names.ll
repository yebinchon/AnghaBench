; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_in_evdev.c_in_evdev_get_key_names.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_in_evdev.c_in_evdev_get_key_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.in_pdata* }
%struct.in_pdata = type { i8** }

@KEY_CNT = common dso_local global i32 0, align 4
@in_evdev_keys = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (%struct.TYPE_3__*, i32*)* @in_evdev_get_key_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @in_evdev_get_key_names(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.in_pdata*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.in_pdata*, %struct.in_pdata** %8, align 8
  store %struct.in_pdata* %9, %struct.in_pdata** %6, align 8
  %10 = load i32, i32* @KEY_CNT, align 4
  %11 = load i32*, i32** %5, align 8
  store i32 %10, i32* %11, align 4
  %12 = load %struct.in_pdata*, %struct.in_pdata** %6, align 8
  %13 = getelementptr inbounds %struct.in_pdata, %struct.in_pdata* %12, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  %15 = icmp ne i8** %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.in_pdata*, %struct.in_pdata** %6, align 8
  %18 = getelementptr inbounds %struct.in_pdata, %struct.in_pdata* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  store i8** %19, i8*** %3, align 8
  br label %22

20:                                               ; preds = %2
  %21 = load i8**, i8*** @in_evdev_keys, align 8
  store i8** %21, i8*** %3, align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i8**, i8*** %3, align 8
  ret i8** %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
