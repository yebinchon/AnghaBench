; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_preset_move.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_preset_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@.str = private unnamed_addr constant [26 x i8] c"hb_preset_move: not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_preset_move(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = bitcast %struct.TYPE_5__* %8 to i8*
  %15 = bitcast %struct.TYPE_5__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = bitcast %struct.TYPE_5__* %9 to i8*
  %18 = bitcast %struct.TYPE_5__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 16, i1 false)
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 8
  %25 = call i32* @hb_presets_get_folder_children(%struct.TYPE_5__* %8)
  store i32* %25, i32** %6, align 8
  %26 = call i32* @hb_presets_get_folder_children(%struct.TYPE_5__* %9)
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32*, i32** %7, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %2
  %33 = call i32 @hb_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %88

34:                                               ; preds = %29
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %37, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %12, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32* @hb_value_array_get(i32* %55, i32 %56)
  store i32* %57, i32** %10, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @hb_value_incref(i32* %58)
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @hb_value_array_remove(i32* %60, i32 %61)
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = icmp eq i32* %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %34
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %70, %66, %34
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @hb_value_array_len(i32* %74)
  %76 = load i32, i32* %12, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32*, i32** %7, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @hb_value_array_append(i32* %79, i32* %80)
  br label %87

82:                                               ; preds = %73
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @hb_value_array_insert(i32* %83, i32 %84, i32* %85)
  br label %87

87:                                               ; preds = %82, %78
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %32
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @hb_presets_get_folder_children(%struct.TYPE_5__*) #2

declare dso_local i32 @hb_error(i8*) #2

declare dso_local i32* @hb_value_array_get(i32*, i32) #2

declare dso_local i32 @hb_value_incref(i32*) #2

declare dso_local i32 @hb_value_array_remove(i32*, i32) #2

declare dso_local i32 @hb_value_array_len(i32*) #2

declare dso_local i32 @hb_value_array_append(i32*, i32*) #2

declare dso_local i32 @hb_value_array_insert(i32*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
