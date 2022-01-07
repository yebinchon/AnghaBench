; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_presets_import.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_presets_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@do_preset_import = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_presets_import(i32* %0, i32** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32** %1, i32*** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @hb_value_dup(i32* %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %18 = call i32 @hb_presets_version(i32* %14, i32* %15, i32* %16, i32* %17)
  %19 = load i32, i32* @do_preset_import, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = bitcast %struct.TYPE_6__* %5 to i32*
  %22 = call i32 @presets_do(i32 %19, i32* %20, i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @cmpVersion(i32 %24, i32 %26, i32 %28, i32 29, i32 0, i32 0)
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load i32*, i32** %6, align 8
  %33 = call i32* @import_hierarchy_29_0_0(i32* %32)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32* @hb_presets_update_version(i32* %34)
  %36 = load i32**, i32*** %4, align 8
  store i32* %35, i32** %36, align 8
  %37 = call i32 @hb_value_free(i32** %7)
  br label %51

38:                                               ; preds = %2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32*, i32** %6, align 8
  %44 = call i32* @hb_presets_update_version(i32* %43)
  %45 = load i32**, i32*** %4, align 8
  store i32* %44, i32** %45, align 8
  br label %50

46:                                               ; preds = %38
  %47 = load i32*, i32** %6, align 8
  %48 = call i32* @hb_value_dup(i32* %47)
  %49 = load i32**, i32*** %4, align 8
  store i32* %48, i32** %49, align 8
  br label %50

50:                                               ; preds = %46, %42
  br label %51

51:                                               ; preds = %50, %31
  %52 = call i32 @hb_value_free(i32** %6)
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  ret i32 %54
}

declare dso_local i32* @hb_value_dup(i32*) #1

declare dso_local i32 @hb_presets_version(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @presets_do(i32, i32*, i32*) #1

declare dso_local i64 @cmpVersion(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32* @import_hierarchy_29_0_0(i32*) #1

declare dso_local i32* @hb_presets_update_version(i32*) #1

declare dso_local i32 @hb_value_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
