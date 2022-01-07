; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiusb_hid.c_wiiusb_get_description.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiusb_hid.c_wiiusb_get_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiiusb_adapter = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i8, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@USB_ENDPOINT_INTERRUPT = common dso_local global i32 0, align 4
@USB_ENDPOINT_OUT = common dso_local global i32 0, align 4
@USB_ENDPOINT_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.wiiusb_adapter*, %struct.TYPE_8__*)* @wiiusb_get_description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiiusb_get_description(i32* %0, %struct.wiiusb_adapter* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wiiusb_adapter*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.wiiusb_adapter* %1, %struct.wiiusb_adapter** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  store i8 0, i8* %7, align 1
  br label %16

16:                                               ; preds = %120, %3
  %17 = load i8, i8* %7, align 1
  %18 = zext i8 %17 to i32
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 8
  %22 = zext i8 %21 to i32
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %123

24:                                               ; preds = %16
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = load i8, i8* %7, align 1
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i64 %29
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %10, align 8
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %116, %24
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = icmp ult i32 %32, %36
  br i1 %37, label %38, label %119

38:                                               ; preds = %31
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %11, align 8
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %112, %38
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = icmp ult i32 %46, %50
  br i1 %51, label %52, label %115

52:                                               ; preds = %45
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %12, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 3
  %63 = load i32, i32* @USB_ENDPOINT_INTERRUPT, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %13, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 128
  %70 = load i32, i32* @USB_ENDPOINT_OUT, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %14, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 128
  %77 = load i32, i32* @USB_ENDPOINT_IN, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %111

82:                                               ; preds = %52
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %5, align 8
  %90 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %5, align 8
  %95 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %85, %82
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %96
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %5, align 8
  %104 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %5, align 8
  %109 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %99, %96
  br label %111

111:                                              ; preds = %110, %52
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %9, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %45

115:                                              ; preds = %45
  br label %119

116:                                              ; No predecessors!
  %117 = load i32, i32* %8, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %31

119:                                              ; preds = %115, %31
  br label %120

120:                                              ; preds = %119
  %121 = load i8, i8* %7, align 1
  %122 = add i8 %121, 1
  store i8 %122, i8* %7, align 1
  br label %16

123:                                              ; preds = %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
