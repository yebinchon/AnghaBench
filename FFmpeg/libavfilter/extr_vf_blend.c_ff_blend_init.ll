; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_blend.c_ff_blend_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_blend.c_ff_blend_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i8* }

@BLEND_NORMAL = common dso_local global i64 0, align 8
@blend_copytop_16 = common dso_local global i8* null, align 8
@blend_copytop_8 = common dso_local global i8* null, align 8
@blend_copybottom_16 = common dso_local global i8* null, align 8
@blend_copybottom_8 = common dso_local global i8* null, align 8
@ARCH_X86 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_blend_init(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %21 [
    i32 8, label %6
    i32 9, label %9
    i32 10, label %12
    i32 12, label %15
    i32 16, label %18
  ]

6:                                                ; preds = %2
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = call i32 @init_blend_func_8_8bit(%struct.TYPE_9__* %7)
  br label %21

9:                                                ; preds = %2
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = call i32 @init_blend_func_9_16bit(%struct.TYPE_9__* %10)
  br label %21

12:                                               ; preds = %2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = call i32 @init_blend_func_10_16bit(%struct.TYPE_9__* %13)
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = call i32 @init_blend_func_12_16bit(%struct.TYPE_9__* %16)
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = call i32 @init_blend_func_16_16bit(%struct.TYPE_9__* %19)
  br label %21

21:                                               ; preds = %2, %18, %15, %12, %9, %6
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BLEND_NORMAL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = icmp sgt i32 %33, 8
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i8*, i8** @blend_copytop_16, align 8
  br label %39

37:                                               ; preds = %32
  %38 = load i8*, i8** @blend_copytop_8, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i8* [ %36, %35 ], [ %38, %37 ]
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  br label %84

43:                                               ; preds = %26, %21
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BLEND_NORMAL, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %83

49:                                               ; preds = %43
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = icmp sgt i32 %55, 8
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i8*, i8** @blend_copytop_16, align 8
  br label %61

59:                                               ; preds = %54
  %60 = load i8*, i8** @blend_copytop_8, align 8
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i8* [ %58, %57 ], [ %60, %59 ]
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  br label %82

65:                                               ; preds = %49
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load i32, i32* %4, align 4
  %72 = icmp sgt i32 %71, 8
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i8*, i8** @blend_copybottom_16, align 8
  br label %77

75:                                               ; preds = %70
  %76 = load i8*, i8** @blend_copybottom_8, align 8
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i8* [ %74, %73 ], [ %76, %75 ]
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %77, %65
  br label %82

82:                                               ; preds = %81, %61
  br label %83

83:                                               ; preds = %82, %43
  br label %84

84:                                               ; preds = %83, %39
  %85 = load i64, i64* @ARCH_X86, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @ff_blend_init_x86(%struct.TYPE_9__* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %84
  ret void
}

declare dso_local i32 @init_blend_func_8_8bit(%struct.TYPE_9__*) #1

declare dso_local i32 @init_blend_func_9_16bit(%struct.TYPE_9__*) #1

declare dso_local i32 @init_blend_func_10_16bit(%struct.TYPE_9__*) #1

declare dso_local i32 @init_blend_func_12_16bit(%struct.TYPE_9__*) #1

declare dso_local i32 @init_blend_func_16_16bit(%struct.TYPE_9__*) #1

declare dso_local i32 @ff_blend_init_x86(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
