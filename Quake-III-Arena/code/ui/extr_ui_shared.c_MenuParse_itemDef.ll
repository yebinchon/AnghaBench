; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_MenuParse_itemDef.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_MenuParse_itemDef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }

@MAX_MENUITEMS = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MenuParse_itemDef(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %6, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MAX_MENUITEMS, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %66

14:                                               ; preds = %2
  %15 = call %struct.TYPE_7__* @UI_Alloc(i32 4)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %18, i64 %21
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %25, i64 %28
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = call i32 @Item_Init(%struct.TYPE_7__* %30)
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %34, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %35, i64 %38
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = call i32 @Item_Parse(i32 %32, %struct.TYPE_7__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %14
  %44 = load i32, i32* @qfalse, align 4
  store i32 %44, i32* %3, align 4
  br label %68

45:                                               ; preds = %14
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %47, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %48, i64 %51
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = call i32 @Item_InitControls(%struct.TYPE_7__* %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %57, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %58, i64 %61
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %65, align 8
  br label %66

66:                                               ; preds = %45, %2
  %67 = load i32, i32* @qtrue, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %43
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_7__* @UI_Alloc(i32) #1

declare dso_local i32 @Item_Init(%struct.TYPE_7__*) #1

declare dso_local i32 @Item_Parse(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @Item_InitControls(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
