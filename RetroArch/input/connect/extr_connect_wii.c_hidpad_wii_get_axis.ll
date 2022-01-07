; ModuleID = '/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_wii.c_hidpad_wii_get_axis.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_wii.c_hidpad_wii_get_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connect_wii_wiimote_t = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @hidpad_wii_get_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpad_wii_get_axis(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.connect_wii_wiimote_t*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.connect_wii_wiimote_t*
  store %struct.connect_wii_wiimote_t* %8, %struct.connect_wii_wiimote_t** %6, align 8
  %9 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %10 = icmp ne %struct.connect_wii_wiimote_t* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

12:                                               ; preds = %2
  %13 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %14 = getelementptr inbounds %struct.connect_wii_wiimote_t, %struct.connect_wii_wiimote_t* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %60 [
    i32 128, label %17
  ]

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %59 [
    i32 0, label %19
    i32 1, label %29
    i32 2, label %39
    i32 3, label %49
  ]

19:                                               ; preds = %17
  %20 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %21 = getelementptr inbounds %struct.connect_wii_wiimote_t, %struct.connect_wii_wiimote_t* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 32767
  store i32 %28, i32* %3, align 4
  br label %62

29:                                               ; preds = %17
  %30 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %31 = getelementptr inbounds %struct.connect_wii_wiimote_t, %struct.connect_wii_wiimote_t* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 32767
  store i32 %38, i32* %3, align 4
  br label %62

39:                                               ; preds = %17
  %40 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %41 = getelementptr inbounds %struct.connect_wii_wiimote_t, %struct.connect_wii_wiimote_t* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 32767
  store i32 %48, i32* %3, align 4
  br label %62

49:                                               ; preds = %17
  %50 = load %struct.connect_wii_wiimote_t*, %struct.connect_wii_wiimote_t** %6, align 8
  %51 = getelementptr inbounds %struct.connect_wii_wiimote_t, %struct.connect_wii_wiimote_t* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, 32767
  store i32 %58, i32* %3, align 4
  br label %62

59:                                               ; preds = %17
  br label %61

60:                                               ; preds = %12
  br label %61

61:                                               ; preds = %60, %59
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %49, %39, %29, %19, %11
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
