; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_layout/extr_load.c_merge_group.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_layout/extr_load.c_merge_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32*, i32 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_19__, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32, i64, i64, i32, i32)* @merge_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_group(i32* %0, %struct.TYPE_21__* %1, %struct.TYPE_21__* %2, i32 %3, i64 %4, i64 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_22__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_23__*, align 8
  %21 = alloca %struct.TYPE_23__*, align 8
  %22 = alloca %struct.TYPE_24__*, align 8
  %23 = bitcast %struct.TYPE_22__* %9 to { i64, i64 }*
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 0
  store i64 %4, i64* %24, align 8
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 1
  store i64 %5, i64* %25, align 8
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 %7, i32* %15, align 4
  %26 = call i32 @bounds_valid(%struct.TYPE_22__* %9)
  store i32 %26, i32* %19, align 4
  store i32 0, i32* %16, align 4
  br label %27

27:                                               ; preds = %125, %8
  %28 = load i32, i32* %16, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %128

33:                                               ; preds = %27
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %35, align 8
  %37 = load i32, i32* %16, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i64 %38
  store %struct.TYPE_23__* %39, %struct.TYPE_23__** %20, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.TYPE_23__* @view_emplace_layer(%struct.TYPE_21__* %40, i32 %43)
  store %struct.TYPE_23__* %44, %struct.TYPE_23__** %21, align 8
  store i32 0, i32* %17, align 4
  br label %45

45:                                               ; preds = %121, %33
  %46 = load i32, i32* %17, align 4
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %124

51:                                               ; preds = %45
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %53 = call %struct.TYPE_24__* @layer_add_element(%struct.TYPE_23__* %52)
  store %struct.TYPE_24__* %53, %struct.TYPE_24__** %22, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i32 @element_copy(%struct.TYPE_24__* %54, i32* %60)
  store i32 0, i32* %18, align 4
  br label %62

62:                                               ; preds = %74, %51
  %63 = load i32, i32* %18, align 4
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = call i32 @color_mod(i32* %72, i32* %15)
  br label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %18, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %18, align 4
  br label %62

77:                                               ; preds = %62
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @element_apply_orientation(%struct.TYPE_24__* %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %77
  %85 = load i32, i32* %19, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %84
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 1
  %90 = call i32 @bounds_scale(%struct.TYPE_19__* %89, %struct.TYPE_22__* %9)
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %92
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %95, align 4
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %101
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 4
  br label %109

109:                                              ; preds = %87, %84
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %109
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 1
  %117 = call i32 @bounds_union(i32* %114, %struct.TYPE_19__* %116)
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %112, %109
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %17, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %17, align 4
  br label %45

124:                                              ; preds = %45
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %16, align 4
  br label %27

128:                                              ; preds = %27
  ret void
}

declare dso_local i32 @bounds_valid(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_23__* @view_emplace_layer(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_24__* @layer_add_element(%struct.TYPE_23__*) #1

declare dso_local i32 @element_copy(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @color_mod(i32*, i32*) #1

declare dso_local i32 @element_apply_orientation(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @bounds_scale(%struct.TYPE_19__*, %struct.TYPE_22__*) #1

declare dso_local i32 @bounds_union(i32*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
