; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_decide_frame_length.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_decide_frame_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pullup_context = type { i64, i32, i32, %struct.pullup_field* }
%struct.pullup_field = type { i32, i32, %struct.TYPE_2__*, %struct.pullup_field* }
%struct.TYPE_2__ = type { i32 }

@PULLUP_BREAK_RIGHT = common dso_local global i32 0, align 4
@PULLUP_BREAK_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pullup_context*)* @pullup_decide_frame_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pullup_decide_frame_length(%struct.pullup_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pullup_context*, align 8
  %4 = alloca %struct.pullup_field*, align 8
  %5 = alloca %struct.pullup_field*, align 8
  %6 = alloca %struct.pullup_field*, align 8
  %7 = alloca i32, align 4
  store %struct.pullup_context* %0, %struct.pullup_context** %3, align 8
  %8 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %9 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %8, i32 0, i32 3
  %10 = load %struct.pullup_field*, %struct.pullup_field** %9, align 8
  store %struct.pullup_field* %10, %struct.pullup_field** %4, align 8
  %11 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %12 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %11, i32 0, i32 3
  %13 = load %struct.pullup_field*, %struct.pullup_field** %12, align 8
  store %struct.pullup_field* %13, %struct.pullup_field** %5, align 8
  %14 = load %struct.pullup_field*, %struct.pullup_field** %5, align 8
  %15 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %14, i32 0, i32 3
  %16 = load %struct.pullup_field*, %struct.pullup_field** %15, align 8
  store %struct.pullup_field* %16, %struct.pullup_field** %6, align 8
  %17 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %18 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %17, i32 0, i32 3
  %19 = load %struct.pullup_field*, %struct.pullup_field** %18, align 8
  %20 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %21 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pullup_queue_length(%struct.pullup_field* %19, i32 %22)
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %135

26:                                               ; preds = %1
  %27 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %28 = call i32 @pullup_foo(%struct.pullup_context* %27)
  %29 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %30 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %135

34:                                               ; preds = %26
  %35 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %36 = call i32 @pullup_find_first_break(%struct.pullup_field* %35, i32 3)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %41 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %39, %34
  %46 = load i32, i32* %7, align 4
  switch i32 %46, label %110 [
    i32 1, label %47
    i32 2, label %64
    i32 3, label %103
  ]

47:                                               ; preds = %45
  %48 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %49 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %50, 1
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %54 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.pullup_field*, %struct.pullup_field** %5, align 8
  %59 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 2, i32* %2, align 4
  br label %135

63:                                               ; preds = %57, %52, %47
  store i32 1, i32* %2, align 4
  br label %135

64:                                               ; preds = %45
  %65 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %66 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %96

69:                                               ; preds = %64
  %70 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %71 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PULLUP_BREAK_RIGHT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %69
  %79 = load %struct.pullup_field*, %struct.pullup_field** %6, align 8
  %80 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @PULLUP_BREAK_LEFT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %78
  %86 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %87 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 1
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load %struct.pullup_field*, %struct.pullup_field** %5, align 8
  %92 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, -1
  br i1 %94, label %95, label %96

95:                                               ; preds = %90, %85
  store i32 1, i32* %2, align 4
  br label %135

96:                                               ; preds = %90, %78, %69, %64
  %97 = load %struct.pullup_field*, %struct.pullup_field** %5, align 8
  %98 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 1, i32* %2, align 4
  br label %135

102:                                              ; preds = %96
  store i32 2, i32* %2, align 4
  br label %135

103:                                              ; preds = %45
  %104 = load %struct.pullup_field*, %struct.pullup_field** %6, align 8
  %105 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i32 2, i32* %2, align 4
  br label %135

109:                                              ; preds = %103
  store i32 3, i32* %2, align 4
  br label %135

110:                                              ; preds = %45
  %111 = load %struct.pullup_field*, %struct.pullup_field** %5, align 8
  %112 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  store i32 1, i32* %2, align 4
  br label %135

116:                                              ; preds = %110
  %117 = load %struct.pullup_field*, %struct.pullup_field** %5, align 8
  %118 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i32 2, i32* %2, align 4
  br label %135

122:                                              ; preds = %116
  %123 = load %struct.pullup_field*, %struct.pullup_field** %6, align 8
  %124 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %129 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  store i32 3, i32* %2, align 4
  br label %135

133:                                              ; preds = %127
  store i32 1, i32* %2, align 4
  br label %135

134:                                              ; preds = %122
  store i32 2, i32* %2, align 4
  br label %135

135:                                              ; preds = %134, %133, %132, %121, %115, %109, %108, %102, %101, %95, %63, %62, %33, %25
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @pullup_queue_length(%struct.pullup_field*, i32) #1

declare dso_local i32 @pullup_foo(%struct.pullup_context*) #1

declare dso_local i32 @pullup_find_first_break(%struct.pullup_field*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
