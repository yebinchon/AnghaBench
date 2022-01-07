; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_o.c_process_metadata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_asfdec_o.c_process_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"WM/Picture\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ID3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32, i32, i32, i32**)* @process_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_metadata(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32** %5, i32*** %13, align 8
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %68

18:                                               ; preds = %6
  %19 = load i32, i32* %12, align 4
  switch i32 %19, label %57 [
    i32 128, label %20
    i32 130, label %27
    i32 129, label %52
  ]

20:                                               ; preds = %18
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32**, i32*** %13, align 8
  %26 = call i32 @asf_read_value(%struct.TYPE_7__* %21, i32* %22, i32 %23, i32 %24, i32** %25)
  br label %67

27:                                               ; preds = %18
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @strcmp(i32* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @asf_read_picture(%struct.TYPE_7__* %32, i32 %33)
  br label %51

35:                                               ; preds = %27
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @strcmp(i32* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @get_id3_tag(%struct.TYPE_7__* %40, i32 %41)
  br label %50

43:                                               ; preds = %35
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32**, i32*** %13, align 8
  %49 = call i32 @asf_read_value(%struct.TYPE_7__* %44, i32* %45, i32 %46, i32 %47, i32** %48)
  br label %50

50:                                               ; preds = %43, %39
  br label %51

51:                                               ; preds = %50, %31
  br label %67

52:                                               ; preds = %18
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ff_get_guid(i32 %55, i32* %15)
  br label %67

57:                                               ; preds = %18
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32**, i32*** %13, align 8
  %62 = call i32 @asf_set_metadata(%struct.TYPE_7__* %58, i32* %59, i32 %60, i32** %61)
  store i32 %62, i32* %14, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %7, align 4
  br label %69

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %52, %51, %20
  br label %68

68:                                               ; preds = %67, %6
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %68, %64
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @asf_read_value(%struct.TYPE_7__*, i32*, i32, i32, i32**) #1

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i32 @asf_read_picture(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @get_id3_tag(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ff_get_guid(i32, i32*) #1

declare dso_local i32 @asf_set_metadata(%struct.TYPE_7__*, i32*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
