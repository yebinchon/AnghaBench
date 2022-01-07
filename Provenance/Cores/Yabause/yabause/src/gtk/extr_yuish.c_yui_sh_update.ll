; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuish.c_yui_sh_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuish.c_yui_sh_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__*, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@SSH2 = common dso_local global %struct.TYPE_14__* null, align 8
@yabsys = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yui_sh_update(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %4 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %7 = call i32 @SH2GetRegisters(%struct.TYPE_14__* %6, %struct.TYPE_11__* %3)
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @SH2UpdateCodeList(%struct.TYPE_12__* %8, i32 %10)
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = call i32 @SH2UpdateRegList(%struct.TYPE_12__* %12, %struct.TYPE_11__* %3)
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TRUE, align 4
  %18 = call i32 @gtk_widget_set_sensitive(i32 %16, i32 %17)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @TRUE, align 4
  %23 = call i32 @gtk_widget_set_sensitive(i32 %21, i32 %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TRUE, align 4
  %28 = call i32 @gtk_widget_set_sensitive(i32 %26, i32 %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @GTK_WIDGET(i32 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SSH2, align 8
  %44 = icmp eq %struct.TYPE_14__* %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @yabsys, i32 0, i32 0), align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %45, %39
  %50 = phi i1 [ false, %39 ], [ %48, %45 ]
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %49, %1
  %53 = phi i1 [ false, %1 ], [ %51, %49 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @gtk_widget_set_sensitive(i32 %32, i32 %54)
  ret void
}

declare dso_local i32 @SH2GetRegisters(%struct.TYPE_14__*, %struct.TYPE_11__*) #1

declare dso_local i32 @SH2UpdateCodeList(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @SH2UpdateRegList(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @gtk_widget_set_sensitive(i32, i32) #1

declare dso_local i32 @GTK_WIDGET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
