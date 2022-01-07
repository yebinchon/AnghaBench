; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_cocoa_input.c_cocoa_input_find_any_axis.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_cocoa_input.c_cocoa_input_find_any_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 (i32, i32)*, i32 (...)* }
%struct.TYPE_4__ = type { i64 (i32, i32)*, i32 (...)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cocoa_input_find_any_axis(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = call i64 (...) @input_driver_get_data()
  %8 = inttoptr i64 %7 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32 (...)*, i32 (...)** %20, align 8
  %22 = call i32 (...) %21()
  br label %23

23:                                               ; preds = %16, %11, %1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32 (...)*, i32 (...)** %35, align 8
  %37 = call i32 (...) %36()
  br label %38

38:                                               ; preds = %31, %26, %23
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %108, %38
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 6
  br i1 %41, label %42, label %111

42:                                               ; preds = %39
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = icmp ne %struct.TYPE_4__* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64 (i32, i32)*, i64 (i32, i32)** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i64 %52(i32 %53, i32 %54)
  br label %57

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %47
  %58 = phi i64 [ %55, %47 ], [ 0, %56 ]
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @abs(i64 %59)
  %61 = icmp sgt i32 %60, 16384
  br i1 %61, label %62, label %74

62:                                               ; preds = %57
  %63 = load i64, i64* %6, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  %68 = sub nsw i32 0, %67
  br label %72

69:                                               ; preds = %62
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  br label %72

72:                                               ; preds = %69, %65
  %73 = phi i32 [ %68, %65 ], [ %71, %69 ]
  store i32 %73, i32* %2, align 4
  br label %112

74:                                               ; preds = %57
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = icmp ne %struct.TYPE_5__* %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64 (i32, i32)*, i64 (i32, i32)** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i64 %84(i32 %85, i32 %86)
  br label %90

88:                                               ; preds = %74
  %89 = load i64, i64* %6, align 8
  br label %90

90:                                               ; preds = %88, %79
  %91 = phi i64 [ %87, %79 ], [ %89, %88 ]
  store i64 %91, i64* %6, align 8
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @abs(i64 %92)
  %94 = icmp sgt i32 %93, 16384
  br i1 %94, label %95, label %107

95:                                               ; preds = %90
  %96 = load i64, i64* %6, align 8
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 1
  %101 = sub nsw i32 0, %100
  br label %105

102:                                              ; preds = %95
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  br label %105

105:                                              ; preds = %102, %98
  %106 = phi i32 [ %101, %98 ], [ %104, %102 ]
  store i32 %106, i32* %2, align 4
  br label %112

107:                                              ; preds = %90
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %39

111:                                              ; preds = %39
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %105, %72
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i64 @input_driver_get_data(...) #1

declare dso_local i32 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
