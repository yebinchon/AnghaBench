; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/gregbook/extr_rpng2-x.c_rpng2_x_cleanup.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/gregbook/extr_rpng2-x.c_rpng2_x_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i8* }

@bg_image = common dso_local global i64 0, align 8
@bg_data = common dso_local global i8* null, align 8
@rpng2_info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@ximage = common dso_local global %struct.TYPE_4__* null, align 8
@have_gc = common dso_local global i64 0, align 8
@display = common dso_local global i32 0, align 4
@gc = common dso_local global i32 0, align 4
@have_window = common dso_local global i64 0, align 8
@window = common dso_local global i32 0, align 4
@have_colormap = common dso_local global i64 0, align 8
@colormap = common dso_local global i32 0, align 4
@have_nondefault_visual = common dso_local global i64 0, align 8
@visual_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rpng2_x_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpng2_x_cleanup() #0 {
  %1 = load i64, i64* @bg_image, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = load i8*, i8** @bg_data, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load i8*, i8** @bg_data, align 8
  %8 = call i32 @free(i8* %7)
  store i8* null, i8** @bg_data, align 8
  br label %9

9:                                                ; preds = %6, %3, %0
  %10 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rpng2_info, i32 0, i32 0), align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rpng2_info, i32 0, i32 0), align 8
  %14 = call i32 @free(i8* %13)
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rpng2_info, i32 0, i32 0), align 8
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rpng2_info, i32 0, i32 1), align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rpng2_info, i32 0, i32 1), align 8
  %20 = call i32 @free(i8* %19)
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rpng2_info, i32 0, i32 1), align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ximage, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ximage, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ximage, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @free(i8* %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ximage, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i8* null, i8** %35, align 8
  br label %36

36:                                               ; preds = %29, %24
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ximage, align 8
  %38 = call i32 @XDestroyImage(%struct.TYPE_4__* %37)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** @ximage, align 8
  br label %39

39:                                               ; preds = %36, %21
  %40 = load i64, i64* @have_gc, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* @display, align 4
  %44 = load i32, i32* @gc, align 4
  %45 = call i32 @XFreeGC(i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i64, i64* @have_window, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* @display, align 4
  %51 = load i32, i32* @window, align 4
  %52 = call i32 @XDestroyWindow(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i64, i64* @have_colormap, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* @display, align 4
  %58 = load i32, i32* @colormap, align 4
  %59 = call i32 @XFreeColormap(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i64, i64* @have_nondefault_visual, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @visual_list, align 4
  %65 = call i32 @XFree(i32 %64)
  br label %66

66:                                               ; preds = %63, %60
  ret void
}

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @XDestroyImage(%struct.TYPE_4__*) #1

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
