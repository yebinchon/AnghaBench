; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_presets_builtin_update.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_presets_builtin_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@do_delete_builtin = common dso_local global i32 0, align 4
@hb_presets = common dso_local global i32* null, align 8
@hb_presets_builtin = common dso_local global i32 0, align 4
@do_clear_default = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hb_presets_builtin_update() #0 {
  %1 = alloca %struct.TYPE_8__, align 4
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = load i32, i32* @do_delete_builtin, align 4
  %9 = load i32*, i32** @hb_presets, align 8
  %10 = call i32 @presets_do(i32 %8, i32* %9, %struct.TYPE_8__* %1)
  %11 = load i32, i32* @hb_presets_builtin, align 4
  %12 = call i32* @hb_value_dup(i32 %11)
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** @hb_presets, align 8
  %14 = call %struct.TYPE_9__* @lookup_default_index(i32* %13)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %2, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @do_clear_default, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @presets_do(i32 %25, i32* %26, %struct.TYPE_8__* %1)
  br label %28

28:                                               ; preds = %22, %17, %0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = call i32 @free(%struct.TYPE_9__* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @hb_value_array_len(i32* %31)
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %46, %28
  %35 = load i32, i32* %4, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32* @hb_value_array_get(i32* %38, i32 %39)
  store i32* %40, i32** %5, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @hb_value_incref(i32* %41)
  %43 = load i32*, i32** @hb_presets, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @hb_value_array_insert(i32* %43, i32 0, i32* %44)
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %4, align 4
  br label %34

49:                                               ; preds = %34
  %50 = call i32 @hb_value_free(i32** %3)
  ret void
}

declare dso_local i32 @presets_do(i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32* @hb_value_dup(i32) #1

declare dso_local %struct.TYPE_9__* @lookup_default_index(i32*) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i32 @hb_value_array_len(i32*) #1

declare dso_local i32* @hb_value_array_get(i32*, i32) #1

declare dso_local i32 @hb_value_incref(i32*) #1

declare dso_local i32 @hb_value_array_insert(i32*, i32, i32*) #1

declare dso_local i32 @hb_value_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
