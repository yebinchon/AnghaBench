; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_update_tex_filter_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_update_tex_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32, i64, i32*, i32, i32, %struct.TYPE_11__, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32, i32*)* }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@GL_LINEAR_MIPMAP_LINEAR = common dso_local global i64 0, align 8
@GL_NEAREST_MIPMAP_NEAREST = common dso_local global i64 0, align 8
@GL_LINEAR = common dso_local global i64 0, align 8
@GL_NEAREST = common dso_local global i64 0, align 8
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @gl2_update_tex_filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl2_update_tex_filter_frame(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  store i32 0, i32* %8, align 4
  %10 = call %struct.TYPE_12__* (...) @config_get_ptr()
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %9, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = call i32 @gl2_context_bind_hw_render(%struct.TYPE_13__* %11, i32 0)
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 9
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %16, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 %17(i32 %20, i32 1, i32* %8)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %23, %1
  store i32 1, i32* %4, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 9
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32 (i32, i32)*, i32 (i32, i32)** %32, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 %33(i32 %36, i32 1)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @gl2_wrap_type_to_enum(i32 %38)
  store i64 %39, i64* %5, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 9
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32 (i32, i32)*, i32 (i32, i32)** %43, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 %44(i32 %47, i32 %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 7
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %28
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i64, i64* @GL_LINEAR_MIPMAP_LINEAR, align 8
  br label %67

65:                                               ; preds = %60
  %66 = load i64, i64* @GL_NEAREST_MIPMAP_NEAREST, align 8
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i64 [ %64, %63 ], [ %66, %65 ]
  br label %78

69:                                               ; preds = %28
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i64, i64* @GL_LINEAR, align 8
  br label %76

74:                                               ; preds = %69
  %75 = load i64, i64* @GL_NEAREST, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i64 [ %73, %72 ], [ %75, %74 ]
  br label %78

78:                                               ; preds = %76, %67
  %79 = phi i64 [ %68, %67 ], [ %77, %76 ]
  store i64 %79, i64* %6, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load i64, i64* %5, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %155

92:                                               ; preds = %85, %78
  %93 = load i64, i64* %6, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @gl2_min_filter_to_mag(i64 %98)
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 8
  %102 = load i64, i64* %5, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %139, %92
  %106 = load i32, i32* %3, align 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp ult i32 %106, %109
  br i1 %110, label %111, label %142

111:                                              ; preds = %105
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 4
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %3, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %111
  br label %139

121:                                              ; preds = %111
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %3, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @gl_bind_texture(i32 %128, i64 %131, i32 %134, i64 %137)
  br label %139

139:                                              ; preds = %121, %120
  %140 = load i32, i32* %3, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %3, align 4
  br label %105

142:                                              ; preds = %105
  %143 = load i32, i32* @GL_TEXTURE_2D, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @glBindTexture(i32 %143, i32 %151)
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %154 = call i32 @gl2_context_bind_hw_render(%struct.TYPE_13__* %153, i32 1)
  br label %155

155:                                              ; preds = %142, %91
  ret void
}

declare dso_local %struct.TYPE_12__* @config_get_ptr(...) #1

declare dso_local i32 @gl2_context_bind_hw_render(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @gl2_wrap_type_to_enum(i32) #1

declare dso_local i32 @gl2_min_filter_to_mag(i64) #1

declare dso_local i32 @gl_bind_texture(i32, i64, i32, i64) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
