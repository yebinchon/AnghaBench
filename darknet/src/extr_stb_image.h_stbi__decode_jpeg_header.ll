; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__decode_jpeg_header.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__decode_jpeg_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i64 }

@STBI__MARKER_none = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"no SOI\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Corrupt JPEG\00", align 1
@STBI__SCAN_type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"no SOF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @stbi__decode_jpeg_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__decode_jpeg_header(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 -1, i32* %10, align 8
  %11 = load i32, i32* @STBI__MARKER_none, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = call i32 @stbi__get_marker(%struct.TYPE_6__* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @stbi__SOI(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = call i32 @stbi__err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %20, i32* %3, align 4
  br label %70

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @STBI__SCAN_type, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %70

26:                                               ; preds = %21
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = call i32 @stbi__get_marker(%struct.TYPE_6__* %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %58, %26
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @stbi__SOF(i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %59

34:                                               ; preds = %29
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @stbi__process_marker(%struct.TYPE_6__* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %70

40:                                               ; preds = %34
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = call i32 @stbi__get_marker(%struct.TYPE_6__* %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %55, %40
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @STBI__MARKER_none, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @stbi__at_eof(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i32 @stbi__err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %54, i32* %3, align 4
  br label %70

55:                                               ; preds = %47
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = call i32 @stbi__get_marker(%struct.TYPE_6__* %56)
  store i32 %57, i32* %6, align 4
  br label %43

58:                                               ; preds = %43
  br label %29

59:                                               ; preds = %29
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @stbi__SOF_progressive(i32 %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @stbi__process_frame_header(%struct.TYPE_6__* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %70

69:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %68, %53, %39, %25, %19
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @stbi__get_marker(%struct.TYPE_6__*) #1

declare dso_local i32 @stbi__SOI(i32) #1

declare dso_local i32 @stbi__err(i8*, i8*) #1

declare dso_local i32 @stbi__SOF(i32) #1

declare dso_local i32 @stbi__process_marker(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @stbi__at_eof(i32) #1

declare dso_local i32 @stbi__SOF_progressive(i32) #1

declare dso_local i32 @stbi__process_frame_header(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
