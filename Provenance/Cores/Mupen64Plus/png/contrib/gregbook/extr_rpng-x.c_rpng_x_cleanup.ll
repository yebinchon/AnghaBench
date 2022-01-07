; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/gregbook/extr_rpng-x.c_rpng_x_cleanup.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/gregbook/extr_rpng-x.c_rpng_x_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@image_data = common dso_local global i8* null, align 8
@ximage = common dso_local global %struct.TYPE_3__* null, align 8
@have_gc = common dso_local global i64 0, align 8
@display = common dso_local global i32 0, align 4
@gc = common dso_local global i32 0, align 4
@have_window = common dso_local global i64 0, align 8
@window = common dso_local global i32 0, align 4
@have_colormap = common dso_local global i64 0, align 8
@colormap = common dso_local global i32 0, align 4
@have_nondefault_visual = common dso_local global i64 0, align 8
@visual_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rpng_x_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpng_x_cleanup() #0 {
  %1 = load i8*, i8** @image_data, align 8
  %2 = icmp ne i8* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i8*, i8** @image_data, align 8
  %5 = call i32 @free(i8* %4)
  store i8* null, i8** @image_data, align 8
  br label %6

6:                                                ; preds = %3, %0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ximage, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ximage, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ximage, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @free(i8* %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ximage, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i8* null, i8** %20, align 8
  br label %21

21:                                               ; preds = %14, %9
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ximage, align 8
  %23 = call i32 @XDestroyImage(%struct.TYPE_3__* %22)
  store %struct.TYPE_3__* null, %struct.TYPE_3__** @ximage, align 8
  br label %24

24:                                               ; preds = %21, %6
  %25 = load i64, i64* @have_gc, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @display, align 4
  %29 = load i32, i32* @gc, align 4
  %30 = call i32 @XFreeGC(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i64, i64* @have_window, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* @display, align 4
  %36 = load i32, i32* @window, align 4
  %37 = call i32 @XDestroyWindow(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i64, i64* @have_colormap, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* @display, align 4
  %43 = load i32, i32* @colormap, align 4
  %44 = call i32 @XFreeColormap(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i64, i64* @have_nondefault_visual, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @visual_list, align 4
  %50 = call i32 @XFree(i32 %49)
  br label %51

51:                                               ; preds = %48, %45
  ret void
}

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @XDestroyImage(%struct.TYPE_3__*) #1

declare dso_local i32 @XFreeGC(i32, i32) #1

declare dso_local i32 @XDestroyWindow(i32, i32) #1

declare dso_local i32 @XFreeColormap(i32, i32) #1

declare dso_local i32 @XFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
