; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_pointer_down.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_pointer_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, float, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i64 }

@MUI_THUMBNAIL_STREAM_DELAY_SCROLLBAR_DRAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32*, i32*, i32)* @materialui_pointer_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @materialui_pointer_down(i8* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %16, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %197

28:                                               ; preds = %7
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 11
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 10
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store float 0.000000e+00, float* %43, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  store i32 1, i32* %45, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %196

54:                                               ; preds = %28
  %55 = call i32 (...) @menu_display_get_header_height()
  store i32 %55, i32* %17, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 9
  %58 = ptrtoint i32* %57 to i64
  store i64 %58, i64* %18, align 8
  %59 = call i32 @video_driver_get_size(i32* %19, i32* %20)
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %71, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %20, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = sub i32 %65, %68
  %70 = icmp ugt i32 %64, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63, %54
  store i32 0, i32* %8, align 4
  br label %197

72:                                               ; preds = %63
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 2, %75
  store i32 %76, i32* %21, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %117, label %81

81:                                               ; preds = %72
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = icmp sle i32 %84, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %21, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %21, align 4
  br label %116

95:                                               ; preds = %81
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 2, %101
  %103 = icmp sle i32 %98, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %95
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 2, %107
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %108, %111
  %113 = load i32, i32* %21, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %21, align 4
  br label %115

115:                                              ; preds = %104, %95
  br label %116

116:                                              ; preds = %115, %89
  br label %117

117:                                              ; preds = %116, %72
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %21, align 4
  %124 = sub nsw i32 %122, %123
  %125 = icmp slt i32 %118, %124
  br i1 %125, label %139, label %126

126:                                              ; preds = %117
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 7
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 7
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  %137 = add nsw i32 %131, %136
  %138 = icmp sgt i32 %127, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %126, %117
  store i32 0, i32* %8, align 4
  br label %197

140:                                              ; preds = %126
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = mul nsw i32 2, %143
  store i32 %144, i32* %22, align 4
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 7
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = icmp slt i32 %148, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %140
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 7
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = sub nsw i32 %156, %160
  %162 = load i32, i32* %22, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %22, align 4
  br label %164

164:                                              ; preds = %153, %140
  %165 = load i32, i32* %11, align 4
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 7
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %22, align 4
  %171 = sub nsw i32 %169, %170
  %172 = icmp slt i32 %165, %171
  br i1 %172, label %187, label %173

173:                                              ; preds = %164
  %174 = load i32, i32* %11, align 4
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 7
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 7
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = add nsw i32 %178, %182
  %184 = load i32, i32* %22, align 4
  %185 = add nsw i32 %183, %184
  %186 = icmp sgt i32 %174, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %173, %164
  store i32 0, i32* %8, align 4
  br label %197

188:                                              ; preds = %173
  %189 = call i32 @menu_animation_kill_by_tag(i64* %18)
  %190 = call i32 @menu_input_set_pointer_y_accel(float 0.000000e+00)
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 7
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  store i32 1, i32* %193, align 8
  %194 = load i32, i32* @MUI_THUMBNAIL_STREAM_DELAY_SCROLLBAR_DRAG, align 4
  %195 = call i32 @menu_thumbnail_set_stream_delay(i32 %194)
  br label %196

196:                                              ; preds = %188, %28
  store i32 0, i32* %8, align 4
  br label %197

197:                                              ; preds = %196, %187, %139, %71, %27
  %198 = load i32, i32* %8, align 4
  ret i32 %198
}

declare dso_local i32 @menu_display_get_header_height(...) #1

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i32 @menu_animation_kill_by_tag(i64*) #1

declare dso_local i32 @menu_input_set_pointer_y_accel(float) #1

declare dso_local i32 @menu_thumbnail_set_stream_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
