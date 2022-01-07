; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_perlinuxjoy.c_LinuxJoyHandleEvents.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_perlinuxjoy.c_LinuxJoyHandleEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32* }
%struct.js_event = type { i64, i64, i32 }

@JS_EVENT_AXIS = common dso_local global i64 0, align 8
@THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @LinuxJoyHandleEvents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LinuxJoyHandleEvents(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.js_event, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %76

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %75, %13
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @read(i32 %17, %struct.js_event* %3, i32 24)
  store i64 %18, i64* %4, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %76

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.js_event, %struct.js_event* %3, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @JS_EVENT_AXIS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %62

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.js_event, %struct.js_event* %3, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp uge i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %76

34:                                               ; preds = %25
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = getelementptr inbounds %struct.js_event, %struct.js_event* %3, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %41, %43
  %45 = call i32 @abs(i32 %44) #3
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @THRESHOLD, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = getelementptr inbounds %struct.js_event, %struct.js_event* %3, i32 0, i32 2
  store i32 0, i32* %50, align 8
  br label %61

51:                                               ; preds = %34
  %52 = getelementptr inbounds %struct.js_event, %struct.js_event* %3, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.js_event, %struct.js_event* %3, i32 0, i32 2
  store i32 -1, i32* %57, align 8
  br label %60

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.js_event, %struct.js_event* %3, i32 0, i32 2
  store i32 1, i32* %59, align 8
  br label %60

60:                                               ; preds = %58, %56
  br label %61

61:                                               ; preds = %60, %49
  br label %62

62:                                               ; preds = %61, %20
  %63 = getelementptr inbounds %struct.js_event, %struct.js_event* %3, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = call i32 @PACKEVENT(%struct.js_event* byval(%struct.js_event) align 8 %3)
  %68 = call i32 @PerKeyDown(i32 %67)
  br label %75

69:                                               ; preds = %62
  %70 = call i32 @PACKEVENT(%struct.js_event* byval(%struct.js_event) align 8 %3)
  %71 = call i32 @PerKeyUp(i32 %70)
  %72 = call i32 @PACKEVENT(%struct.js_event* byval(%struct.js_event) align 8 %3)
  %73 = or i32 65536, %72
  %74 = call i32 @PerKeyUp(i32 %73)
  br label %75

75:                                               ; preds = %69, %66
  br label %14

76:                                               ; preds = %12, %33, %14
  ret void
}

declare dso_local i64 @read(i32, %struct.js_event*, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @PerKeyDown(i32) #1

declare dso_local i32 @PACKEVENT(%struct.js_event* byval(%struct.js_event) align 8) #1

declare dso_local i32 @PerKeyUp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
