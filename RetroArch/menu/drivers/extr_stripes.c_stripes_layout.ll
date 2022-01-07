; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_layout.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float, float, float, i32, i32, i32*, i64 }
%struct.TYPE_7__ = type { float, float, float, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @stripes_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_layout(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %16 = call i32* @menu_entries_get_selection_buf_ptr(i32 0)
  store i32* %16, i32** %8, align 8
  %17 = call i64 (...) @menu_navigation_get_selection()
  store i64 %17, i64* %9, align 8
  %18 = call i32 @video_driver_get_size(i32* %3, i32* %4)
  %19 = load i32, i32* %3, align 4
  %20 = icmp ugt i32 %19, 320
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp ugt i32 %22, 240
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @stripes_layout_ps3(%struct.TYPE_8__* %25, i32 %26, i32 %27)
  br label %33

29:                                               ; preds = %21, %1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @stripes_layout_psp(%struct.TYPE_8__* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i64, i64* %9, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = call i64 (...) @menu_entries_get_size()
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %83, %33
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %86

42:                                               ; preds = %38
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load float, float* %44, align 8
  store float %45, float* %10, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load float, float* %47, align 4
  store float %48, float* %11, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @file_list_get_userdata_at_offset(i32* %49, i32 %50)
  %52 = inttoptr i64 %51 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %12, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %54 = icmp ne %struct.TYPE_7__* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %42
  br label %83

56:                                               ; preds = %42
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load float, float* %62, align 8
  store float %63, float* %10, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load float, float* %65, align 8
  store float %66, float* %11, align 4
  br label %67

67:                                               ; preds = %60, %56
  %68 = load float, float* %10, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store float %68, float* %70, align 8
  %71 = load float, float* %10, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store float %71, float* %73, align 4
  %74 = load float, float* %11, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  store float %74, float* %76, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i8* @stripes_item_y(%struct.TYPE_8__* %77, i32 %78, i32 %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 4
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %67, %55
  %84 = load i32, i32* %5, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %38

86:                                               ; preds = %38
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp sle i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %155

92:                                               ; preds = %86
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %6, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 5
  %99 = load i32*, i32** %98, align 8
  %100 = call i64 @file_list_get_size(i32* %99)
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %152, %92
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %106, label %155

106:                                              ; preds = %102
  store float 0.000000e+00, float* %13, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load float, float* %108, align 4
  store float %109, float* %14, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 5
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = call i64 @file_list_get_userdata_at_offset(i32* %112, i32 %113)
  %115 = inttoptr i64 %114 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %115, %struct.TYPE_7__** %15, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %117 = icmp ne %struct.TYPE_7__* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %106
  br label %152

119:                                              ; preds = %106
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load float, float* %125, align 8
  store float %126, float* %13, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load float, float* %128, align 8
  store float %129, float* %14, align 4
  br label %130

130:                                              ; preds = %123, %119
  %131 = load float, float* %13, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store float %131, float* %133, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store float 0.000000e+00, float* %135, align 4
  %136 = load float, float* %14, align 4
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  store float %136, float* %138, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* %6, align 4
  %142 = call i8* @stripes_item_y(%struct.TYPE_8__* %139, i32 %140, i32 %141)
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 4
  store i8* %142, i8** %144, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = mul nsw i32 %147, 1
  %149 = mul nsw i32 %148, -2
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %130, %118
  %153 = load i32, i32* %5, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %5, align 4
  br label %102

155:                                              ; preds = %91, %102
  ret void
}

declare dso_local i32* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i32 @stripes_layout_ps3(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @stripes_layout_psp(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @menu_entries_get_size(...) #1

declare dso_local i64 @file_list_get_userdata_at_offset(i32*, i32) #1

declare dso_local i8* @stripes_item_y(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @file_list_get_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
