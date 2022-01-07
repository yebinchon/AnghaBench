; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_preview.c_do_preview_scaling.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_preview.c_do_preview_scaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@GDK_INTERP_BILINEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @do_preview_scaling(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %153

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @gdk_pixbuf_get_width(i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @gdk_pixbuf_get_height(i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %17
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28, %17
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @preview_set_render_size(%struct.TYPE_6__* %36, i32 %37, i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @g_object_ref(i32* %40)
  %42 = load i32*, i32** %5, align 8
  store i32* %42, i32** %3, align 8
  br label %153

43:                                               ; preds = %28
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %44, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %52, %57
  br i1 %58, label %59, label %148

59:                                               ; preds = %51, %43
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sitofp i32 %64 to double
  %66 = load i32, i32* %6, align 4
  %67 = sitofp i32 %66 to double
  %68 = fdiv double %65, %67
  store double %68, double* %11, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sitofp i32 %73 to double
  %75 = load i32, i32* %7, align 4
  %76 = sitofp i32 %75 to double
  %77 = fdiv double %74, %76
  store double %77, double* %12, align 8
  %78 = load double, double* %11, align 8
  %79 = load double, double* %12, align 8
  %80 = fcmp ole double %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %59
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = sitofp i32 %87 to double
  %89 = load double, double* %11, align 8
  %90 = fmul double %88, %89
  %91 = fptosi double %90 to i32
  store i32 %91, i32* %9, align 4
  br label %103

92:                                               ; preds = %59
  %93 = load i32, i32* %6, align 4
  %94 = sitofp i32 %93 to double
  %95 = load double, double* %12, align 8
  %96 = fmul double %94, %95
  %97 = fptosi double %96 to i32
  store i32 %97, i32* %8, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %92, %81
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %8, align 4
  %110 = sub nsw i32 %108, %109
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %103
  %114 = load i32, i32* %13, align 4
  %115 = icmp sle i32 %114, 16
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %116, %113, %103
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %9, align 4
  %129 = sub nsw i32 %127, %128
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %122
  %133 = load i32, i32* %13, align 4
  %134 = icmp sle i32 %133, 16
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %9, align 4
  br label %141

141:                                              ; preds = %135, %132, %122
  %142 = load i32*, i32** %5, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @GDK_INTERP_BILINEAR, align 4
  %146 = call i32* @gdk_pixbuf_scale_simple(i32* %142, i32 %143, i32 %144, i32 %145)
  store i32* %146, i32** %10, align 8
  %147 = load i32*, i32** %10, align 8
  store i32* %147, i32** %3, align 8
  br label %153

148:                                              ; preds = %51
  %149 = load i32*, i32** %5, align 8
  %150 = call i32 @g_object_ref(i32* %149)
  br label %151

151:                                              ; preds = %148
  %152 = load i32*, i32** %5, align 8
  store i32* %152, i32** %3, align 8
  br label %153

153:                                              ; preds = %151, %141, %35, %16
  %154 = load i32*, i32** %3, align 8
  ret i32* %154
}

declare dso_local i32 @gdk_pixbuf_get_width(i32*) #1

declare dso_local i32 @gdk_pixbuf_get_height(i32*) #1

declare dso_local i32 @preview_set_render_size(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @g_object_ref(i32*) #1

declare dso_local i32* @gdk_pixbuf_scale_simple(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
