; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_winraw_input.c_winraw_init_devices.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_winraw_input.c_winraw_init_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"[WINRAW]: GetRawInputDeviceList failed with error %lu.\0A\00", align 1
@RIM_TYPEMOUSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__**, i32*)* @winraw_init_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @winraw_init_devices(%struct.TYPE_9__** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  store i32 0, i32* %9, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  store i64 0, i64* %11, align 8
  %13 = call i64 @GetRawInputDeviceList(%struct.TYPE_9__* null, i64* %11, i32 24)
  store i64 %13, i64* %12, align 8
  %14 = load i64, i64* %12, align 8
  %15 = icmp eq i64 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = call i32 (...) @GetLastError()
  %18 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %134

19:                                               ; preds = %2
  %20 = load i64, i64* %11, align 8
  %21 = mul i64 %20, 24
  %22 = call i64 @malloc(i64 %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %10, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %134

27:                                               ; preds = %19
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %29 = call i64 @GetRawInputDeviceList(%struct.TYPE_9__* %28, i64* %11, i32 24)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp eq i64 %30, -1
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = call i32 (...) @GetLastError()
  %34 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %134

35:                                               ; preds = %27
  store i64 0, i64* %6, align 8
  br label %36

36:                                               ; preds = %52, %35
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @RIM_TYPEMOUSE, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  %50 = load i32, i32* %9, align 4
  %51 = add i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %40
  %53 = load i64, i64* %6, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %6, align 8
  br label %36

55:                                               ; preds = %36
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %95

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = mul i64 %60, 24
  %62 = trunc i64 %61 to i32
  %63 = call i64 @calloc(i32 1, i32 %62)
  %64 = inttoptr i64 %63 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %8, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = icmp ne %struct.TYPE_9__* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  br label %134

68:                                               ; preds = %58
  %69 = call i32 @GetCursorPos(%struct.TYPE_10__* %7)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  br label %134

72:                                               ; preds = %68
  store i64 0, i64* %6, align 8
  br label %73

73:                                               ; preds = %91, %72
  %74 = load i64, i64* %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = zext i32 %75 to i64
  %77 = icmp slt i64 %74, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %82 = load i64, i64* %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 4
  store i32 %80, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %88 = load i64, i64* %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 3
  store i32 %86, i32* %90, align 8
  br label %91

91:                                               ; preds = %78
  %92 = load i64, i64* %6, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %6, align 8
  br label %73

94:                                               ; preds = %73
  br label %95

95:                                               ; preds = %94, %55
  store i32 0, i32* %9, align 4
  store i64 0, i64* %6, align 8
  br label %96

96:                                               ; preds = %121, %95
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* %11, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %124

100:                                              ; preds = %96
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %102 = load i64, i64* %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @RIM_TYPEMOUSE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %100
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %110 = load i64, i64* %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %115 = load i32, i32* %9, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %9, align 4
  %117 = zext i32 %115 to i64
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  store i32 %113, i32* %119, align 4
  br label %120

120:                                              ; preds = %108, %100
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %6, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %6, align 8
  br label %96

124:                                              ; preds = %96
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @winraw_log_mice_info(%struct.TYPE_9__* %125, i32 %126)
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %129 = call i32 @free(%struct.TYPE_9__* %128)
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %131 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  store %struct.TYPE_9__* %130, %struct.TYPE_9__** %131, align 8
  %132 = load i32, i32* %9, align 4
  %133 = load i32*, i32** %5, align 8
  store i32 %132, i32* %133, align 4
  store i32 1, i32* %3, align 4
  br label %141

134:                                              ; preds = %71, %67, %32, %26, %16
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %136 = call i32 @free(%struct.TYPE_9__* %135)
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %138 = call i32 @free(%struct.TYPE_9__* %137)
  %139 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %139, align 8
  %140 = load i32*, i32** %5, align 8
  store i32 0, i32* %140, align 4
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %134, %124
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i64 @GetRawInputDeviceList(%struct.TYPE_9__*, i64*, i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @GetCursorPos(%struct.TYPE_10__*) #1

declare dso_local i32 @winraw_log_mice_info(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
