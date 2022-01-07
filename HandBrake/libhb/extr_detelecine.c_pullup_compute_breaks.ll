; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_compute_breaks.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_compute_breaks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pullup_context = type { i32 }
%struct.pullup_field = type { i32, i64, i32*, i32, %struct.pullup_field* }

@PULLUP_HAVE_BREAKS = common dso_local global i32 0, align 4
@PULLUP_BREAK_RIGHT = common dso_local global i32 0, align 4
@PULLUP_BREAK_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pullup_context*, %struct.pullup_field*)* @pullup_compute_breaks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pullup_compute_breaks(%struct.pullup_context* %0, %struct.pullup_field* %1) #0 {
  %3 = alloca %struct.pullup_context*, align 8
  %4 = alloca %struct.pullup_field*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pullup_field*, align 8
  %7 = alloca %struct.pullup_field*, align 8
  %8 = alloca %struct.pullup_field*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pullup_context* %0, %struct.pullup_context** %3, align 8
  store %struct.pullup_field* %1, %struct.pullup_field** %4, align 8
  %12 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %13 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %12, i32 0, i32 4
  %14 = load %struct.pullup_field*, %struct.pullup_field** %13, align 8
  store %struct.pullup_field* %14, %struct.pullup_field** %6, align 8
  %15 = load %struct.pullup_field*, %struct.pullup_field** %6, align 8
  %16 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %15, i32 0, i32 4
  %17 = load %struct.pullup_field*, %struct.pullup_field** %16, align 8
  store %struct.pullup_field* %17, %struct.pullup_field** %7, align 8
  %18 = load %struct.pullup_field*, %struct.pullup_field** %7, align 8
  %19 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %18, i32 0, i32 4
  %20 = load %struct.pullup_field*, %struct.pullup_field** %19, align 8
  store %struct.pullup_field* %20, %struct.pullup_field** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %22 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PULLUP_HAVE_BREAKS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %145

28:                                               ; preds = %2
  %29 = load i32, i32* @PULLUP_HAVE_BREAKS, align 4
  %30 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %31 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %35 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.pullup_field*, %struct.pullup_field** %7, align 8
  %38 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %28
  %42 = load %struct.pullup_field*, %struct.pullup_field** %6, align 8
  %43 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.pullup_field*, %struct.pullup_field** %8, align 8
  %46 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load i32, i32* @PULLUP_BREAK_RIGHT, align 4
  %51 = load %struct.pullup_field*, %struct.pullup_field** %7, align 8
  %52 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %145

55:                                               ; preds = %41, %28
  %56 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %57 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.pullup_field*, %struct.pullup_field** %7, align 8
  %60 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %55
  %64 = load %struct.pullup_field*, %struct.pullup_field** %6, align 8
  %65 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.pullup_field*, %struct.pullup_field** %8, align 8
  %68 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load i32, i32* @PULLUP_BREAK_LEFT, align 4
  %73 = load %struct.pullup_field*, %struct.pullup_field** %6, align 8
  %74 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %145

77:                                               ; preds = %63, %55
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %114, %77
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %81 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %117

84:                                               ; preds = %78
  %85 = load %struct.pullup_field*, %struct.pullup_field** %7, align 8
  %86 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.pullup_field*, %struct.pullup_field** %8, align 8
  %93 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %91, %98
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %84
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %103, %84
  %106 = load i32, i32* %9, align 4
  %107 = sub nsw i32 0, %106
  %108 = load i32, i32* %11, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32, i32* %9, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %110, %105
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %78

117:                                              ; preds = %78
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %118, %119
  %121 = icmp slt i32 %120, 128
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %145

123:                                              ; preds = %117
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %11, align 4
  %126 = mul nsw i32 4, %125
  %127 = icmp sgt i32 %124, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load i32, i32* @PULLUP_BREAK_LEFT, align 4
  %130 = load %struct.pullup_field*, %struct.pullup_field** %6, align 8
  %131 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %128, %123
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %10, align 4
  %137 = mul nsw i32 4, %136
  %138 = icmp sgt i32 %135, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load i32, i32* @PULLUP_BREAK_RIGHT, align 4
  %141 = load %struct.pullup_field*, %struct.pullup_field** %7, align 8
  %142 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %27, %49, %71, %122, %139, %134
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
