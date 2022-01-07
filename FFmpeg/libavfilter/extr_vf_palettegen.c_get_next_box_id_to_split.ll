; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_palettegen.c_get_next_box_id_to_split.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_palettegen.c_get_next_box_id_to_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, %struct.color_ref**, %struct.range_box* }
%struct.color_ref = type { i32, i32 }
%struct.range_box = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @get_next_box_id_to_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_next_box_id_to_split(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.range_box*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.color_ref*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %16, %19
  %21 = icmp eq i32 %13, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %111

23:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %106, %23
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %109

30:                                               ; preds = %24
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  %33 = load %struct.range_box*, %struct.range_box** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.range_box, %struct.range_box* %33, i64 %35
  store %struct.range_box* %36, %struct.range_box** %8, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 4
  %39 = load %struct.range_box*, %struct.range_box** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.range_box, %struct.range_box* %39, i64 %41
  %43 = getelementptr inbounds %struct.range_box, %struct.range_box* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sge i32 %44, 2
  br i1 %45, label %46, label %102

46:                                               ; preds = %30
  %47 = load %struct.range_box*, %struct.range_box** %8, align 8
  %48 = getelementptr inbounds %struct.range_box, %struct.range_box* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %90

51:                                               ; preds = %46
  store i32 0, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %83, %51
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.range_box*, %struct.range_box** %8, align 8
  %55 = getelementptr inbounds %struct.range_box, %struct.range_box* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %52
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load %struct.color_ref**, %struct.color_ref*** %60, align 8
  %62 = load %struct.range_box*, %struct.range_box** %8, align 8
  %63 = getelementptr inbounds %struct.range_box, %struct.range_box* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.color_ref*, %struct.color_ref** %61, i64 %67
  %69 = load %struct.color_ref*, %struct.color_ref** %68, align 8
  store %struct.color_ref* %69, %struct.color_ref** %10, align 8
  %70 = load %struct.color_ref*, %struct.color_ref** %10, align 8
  %71 = getelementptr inbounds %struct.color_ref, %struct.color_ref* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.range_box*, %struct.range_box** %8, align 8
  %74 = getelementptr inbounds %struct.range_box, %struct.range_box* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @diff(i32 %72, i32 %75)
  %77 = load %struct.color_ref*, %struct.color_ref** %10, align 8
  %78 = getelementptr inbounds %struct.color_ref, %struct.color_ref* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %76, %79
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %58
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %52

86:                                               ; preds = %52
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.range_box*, %struct.range_box** %8, align 8
  %89 = getelementptr inbounds %struct.range_box, %struct.range_box* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %46
  %91 = load %struct.range_box*, %struct.range_box** %8, align 8
  %92 = getelementptr inbounds %struct.range_box, %struct.range_box* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %6, align 4
  %98 = load %struct.range_box*, %struct.range_box** %8, align 8
  %99 = getelementptr inbounds %struct.range_box, %struct.range_box* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %96, %90
  br label %105

102:                                              ; preds = %30
  %103 = load %struct.range_box*, %struct.range_box** %8, align 8
  %104 = getelementptr inbounds %struct.range_box, %struct.range_box* %103, i32 0, i32 1
  store i32 -1, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %101
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %24

109:                                              ; preds = %24
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %109, %22
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @diff(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
