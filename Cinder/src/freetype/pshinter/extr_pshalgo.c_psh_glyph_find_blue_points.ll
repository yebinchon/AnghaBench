; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/pshinter/extr_pshalgo.c_psh_glyph_find_blue_points.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/pshinter/extr_pshalgo.c_psh_glyph_find_blue_points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, %struct.TYPE_15__, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, i32, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32, i32, i32 }

@PSH_DIR_HORIZONTAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_12__*)* @psh_glyph_find_blue_points to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psh_glyph_find_blue_points(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %9, align 8
  br label %19

19:                                               ; preds = %175, %2
  %20 = load i64, i64* %7, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %180

22:                                               ; preds = %19
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PSH_DIR_HORIZONTAL, align 4
  %27 = call i32 @PSH_DIR_COMPARE(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %22
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PSH_DIR_HORIZONTAL, align 4
  %34 = call i32 @PSH_DIR_COMPARE(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %175

37:                                               ; preds = %29, %22
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %39 = call i64 @psh_point_is_strong(%struct.TYPE_11__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %175

42:                                               ; preds = %37
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %10, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 4
  store %struct.TYPE_15__* %47, %struct.TYPE_15__** %5, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %8, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  store %struct.TYPE_14__* %53, %struct.TYPE_14__** %6, align 8
  br label %54

54:                                               ; preds = %103, %42
  %55 = load i64, i64* %8, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %108

57:                                               ; preds = %54
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 0, %66
  %68 = icmp slt i64 %63, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %108

70:                                               ; preds = %57
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %74, %77
  %79 = icmp sle i64 %71, %78
  br i1 %79, label %80, label %102

80:                                               ; preds = %70
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %80
  %86 = load i64, i64* %11, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp sle i64 %86, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %85, %80
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %98 = call i32 @psh_point_set_strong(%struct.TYPE_11__* %97)
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %100 = call i32 @psh_point_set_fitted(%struct.TYPE_11__* %99)
  br label %101

101:                                              ; preds = %91, %85
  br label %102

102:                                              ; preds = %101, %70
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %8, align 8
  %105 = add nsw i64 %104, -1
  store i64 %105, i64* %8, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 1
  store %struct.TYPE_14__* %107, %struct.TYPE_14__** %6, align 8
  br label %54

108:                                              ; preds = %69, %54
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 3
  store %struct.TYPE_15__* %110, %struct.TYPE_15__** %5, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %8, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = load i64, i64* %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i64 -1
  store %struct.TYPE_14__* %119, %struct.TYPE_14__** %6, align 8
  br label %120

120:                                              ; preds = %169, %108
  %121 = load i64, i64* %8, align 8
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %174

123:                                              ; preds = %120
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %10, align 8
  %128 = sub nsw i64 %126, %127
  store i64 %128, i64* %12, align 8
  %129 = load i64, i64* %12, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 0, %132
  %134 = icmp slt i64 %129, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %123
  br label %174

136:                                              ; preds = %123
  %137 = load i64, i64* %10, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %140, %143
  %145 = icmp sge i64 %137, %144
  br i1 %145, label %146, label %168

146:                                              ; preds = %136
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %146
  %152 = load i64, i64* %12, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp slt i64 %152, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %151, %146
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %164 = call i32 @psh_point_set_strong(%struct.TYPE_11__* %163)
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %166 = call i32 @psh_point_set_fitted(%struct.TYPE_11__* %165)
  br label %167

167:                                              ; preds = %157, %151
  br label %168

168:                                              ; preds = %167, %136
  br label %169

169:                                              ; preds = %168
  %170 = load i64, i64* %8, align 8
  %171 = add nsw i64 %170, -1
  store i64 %171, i64* %8, align 8
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 -1
  store %struct.TYPE_14__* %173, %struct.TYPE_14__** %6, align 8
  br label %120

174:                                              ; preds = %135, %120
  br label %175

175:                                              ; preds = %174, %41, %36
  %176 = load i64, i64* %7, align 8
  %177 = add nsw i64 %176, -1
  store i64 %177, i64* %7, align 8
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 1
  store %struct.TYPE_11__* %179, %struct.TYPE_11__** %9, align 8
  br label %19

180:                                              ; preds = %19
  ret void
}

declare dso_local i32 @PSH_DIR_COMPARE(i32, i32) #1

declare dso_local i64 @psh_point_is_strong(%struct.TYPE_11__*) #1

declare dso_local i32 @psh_point_set_strong(%struct.TYPE_11__*) #1

declare dso_local i32 @psh_point_set_fitted(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
