; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_layout.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32*, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { float, float, float, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @xmb_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_layout(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %17 = call %struct.TYPE_13__* (...) @config_get_ptr()
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %8, align 8
  %18 = call i32* @menu_entries_get_selection_buf_ptr(i32 0)
  store i32* %18, i32** %9, align 8
  %19 = call i64 (...) @menu_navigation_get_selection()
  store i64 %19, i64* %10, align 8
  %20 = call i32 @video_driver_get_size(i32* %3, i32* %4)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %63 [
    i32 0, label %25
    i32 1, label %51
    i32 2, label %57
  ]

25:                                               ; preds = %1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load i32, i32* %3, align 4
  %29 = icmp ugt i32 %28, 320
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = icmp ugt i32 %31, 240
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi i1 [ false, %25 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @xmb_layout_ps3(%struct.TYPE_12__* %43, i32 %44)
  br label %50

46:                                               ; preds = %33
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @xmb_layout_psp(%struct.TYPE_12__* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %42
  br label %63

51:                                               ; preds = %1
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @xmb_layout_ps3(%struct.TYPE_12__* %54, i32 %55)
  br label %63

57:                                               ; preds = %1
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @xmb_layout_psp(%struct.TYPE_12__* %60, i32 %61)
  br label %63

63:                                               ; preds = %1, %57, %51, %50
  %64 = load i64, i64* %10, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %6, align 4
  %66 = call i64 (...) @menu_entries_get_size()
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %113, %63
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %116

72:                                               ; preds = %68
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 12
  %75 = load float, float* %74, align 8
  store float %75, float* %11, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 13
  %78 = load float, float* %77, align 4
  store float %78, float* %12, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i64 @file_list_get_userdata_at_offset(i32* %79, i32 %80)
  %82 = inttoptr i64 %81 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %82, %struct.TYPE_11__** %13, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %84 = icmp ne %struct.TYPE_11__* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %72
  br label %113

86:                                               ; preds = %72
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 14
  %93 = load float, float* %92, align 8
  store float %93, float* %11, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 14
  %96 = load float, float* %95, align 8
  store float %96, float* %12, align 4
  br label %97

97:                                               ; preds = %90, %86
  %98 = load float, float* %11, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  store float %98, float* %100, align 8
  %101 = load float, float* %11, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  store float %101, float* %103, align 4
  %104 = load float, float* %12, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  store float %104, float* %106, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i8* @xmb_item_y(%struct.TYPE_12__* %107, i32 %108, i32 %109)
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %97, %85
  %114 = load i32, i32* %5, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %68

116:                                              ; preds = %68
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 15
  %119 = load i32, i32* %118, align 4
  %120 = icmp sle i32 %119, 1
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %185

122:                                              ; preds = %116
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 17
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %6, align 4
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 16
  %129 = load i32*, i32** %128, align 8
  %130 = call i64 @file_list_get_size(i32* %129)
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %182, %122
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %136, label %185

136:                                              ; preds = %132
  store float 0.000000e+00, float* %14, align 4
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 13
  %139 = load float, float* %138, align 4
  store float %139, float* %15, align 4
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 16
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = call i64 @file_list_get_userdata_at_offset(i32* %142, i32 %143)
  %145 = inttoptr i64 %144 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %145, %struct.TYPE_11__** %16, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %147 = icmp ne %struct.TYPE_11__* %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %136
  br label %182

149:                                              ; preds = %136
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 14
  %156 = load float, float* %155, align 8
  store float %156, float* %14, align 4
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 14
  %159 = load float, float* %158, align 8
  store float %159, float* %15, align 4
  br label %160

160:                                              ; preds = %153, %149
  %161 = load float, float* %14, align 4
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  store float %161, float* %163, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  store float 0.000000e+00, float* %165, align 4
  %166 = load float, float* %15, align 4
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 2
  store float %166, float* %168, align 8
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* %6, align 4
  %172 = call i8* @xmb_item_y(%struct.TYPE_12__* %169, i32 %170, i32 %171)
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 4
  store i8* %172, i8** %174, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 11
  %177 = load i32, i32* %176, align 4
  %178 = mul nsw i32 %177, 1
  %179 = mul nsw i32 %178, -2
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 4
  br label %182

182:                                              ; preds = %160, %148
  %183 = load i32, i32* %5, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %5, align 4
  br label %132

185:                                              ; preds = %121, %132
  ret void
}

declare dso_local %struct.TYPE_13__* @config_get_ptr(...) #1

declare dso_local i32* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i32 @xmb_layout_ps3(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @xmb_layout_psp(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @menu_entries_get_size(...) #1

declare dso_local i64 @file_list_get_userdata_at_offset(i32*, i32) #1

declare dso_local i8* @xmb_item_y(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @file_list_get_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
