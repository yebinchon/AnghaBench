; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_perlinuxjoy.c_LinuxJoyScan.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_perlinuxjoy.c_LinuxJoyScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32* }
%struct.js_event = type { i64, i64, i32 }

@JS_EVENT_AXIS = common dso_local global i64 0, align 8
@THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @LinuxJoyScan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LinuxJoyScan(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.js_event, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

14:                                               ; preds = %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @read(i32 %17, %struct.js_event* %4, i32 24)
  store i64 %18, i64* %5, align 8
  %19 = icmp ule i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %64

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.js_event, %struct.js_event* %4, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @JS_EVENT_AXIS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.js_event, %struct.js_event* %4, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp uge i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %64

35:                                               ; preds = %26
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = getelementptr inbounds %struct.js_event, %struct.js_event* %4, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %42, %44
  %46 = call i32 @abs(i32 %45) #3
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @THRESHOLD, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %64

51:                                               ; preds = %35
  %52 = getelementptr inbounds %struct.js_event, %struct.js_event* %4, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.js_event, %struct.js_event* %4, i32 0, i32 2
  store i32 -1, i32* %57, align 8
  br label %60

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.js_event, %struct.js_event* %4, i32 0, i32 2
  store i32 1, i32* %59, align 8
  br label %60

60:                                               ; preds = %58, %56
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61, %21
  %63 = call i32 @PACKEVENT(%struct.js_event* byval(%struct.js_event) align 8 %4)
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %50, %34, %20, %13
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @read(i32, %struct.js_event*, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @PACKEVENT(%struct.js_event* byval(%struct.js_event) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
