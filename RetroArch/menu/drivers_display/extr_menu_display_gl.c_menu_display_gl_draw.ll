; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_gl.c_menu_display_gl_draw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_gl.c_menu_display_gl_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_19__*, i32, i64, i64 }
%struct.TYPE_19__ = type { i32, i8*, i8*, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_15__, i32, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 (i32, i32*)*, i32 (i32, %struct.TYPE_19__*)* }

@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_16__*)* @menu_display_gl_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_display_gl_draw(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %9, %struct.TYPE_18__** %5, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %11 = icmp ne %struct.TYPE_18__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = icmp ne %struct.TYPE_17__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %2
  br label %117

16:                                               ; preds = %12
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %16
  %24 = call i64 (...) @menu_display_gl_get_default_vertices()
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 3
  store i64 %24, i64* %28, align 8
  br label %29

29:                                               ; preds = %23, %16
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %29
  %37 = call i8* (...) @menu_display_gl_get_default_tex_coords()
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 2
  store i8* %37, i8** %41, align 8
  br label %42

42:                                               ; preds = %36, %29
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = call i8* (...) @menu_display_gl_get_default_tex_coords()
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 1
  store i8* %50, i8** %54, align 8
  br label %55

55:                                               ; preds = %49, %42
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %58 = call i32 @menu_display_gl_viewport(%struct.TYPE_17__* %56, %struct.TYPE_16__* %57)
  %59 = load i32, i32* @GL_TEXTURE_2D, align 4
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @glBindTexture(i32 %59, i32 %63)
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load i32 (i32, %struct.TYPE_19__*)*, i32 (i32, %struct.TYPE_19__*)** %68, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %74, align 8
  %76 = call i32 %69(i32 %72, %struct.TYPE_19__* %75)
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32 (i32, i32*)*, i32 (i32, i32*)** %80, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %55
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i32*
  br label %98

94:                                               ; preds = %55
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %96 = call i64 @menu_display_gl_get_default_mvp(%struct.TYPE_16__* %95)
  %97 = inttoptr i64 %96 to i32*
  br label %98

98:                                               ; preds = %94, %89
  %99 = phi i32* [ %93, %89 ], [ %97, %94 ]
  %100 = call i32 %81(i32 %84, i32* %99)
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @menu_display_prim_to_gl_enum(i32 %103)
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @glDrawArrays(i32 %104, i32 0, i32 %109)
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 4
  br label %117

117:                                              ; preds = %98, %15
  ret void
}

declare dso_local i64 @menu_display_gl_get_default_vertices(...) #1

declare dso_local i8* @menu_display_gl_get_default_tex_coords(...) #1

declare dso_local i32 @menu_display_gl_viewport(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i64 @menu_display_gl_get_default_mvp(%struct.TYPE_16__*) #1

declare dso_local i32 @glDrawArrays(i32, i32, i32) #1

declare dso_local i32 @menu_display_prim_to_gl_enum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
