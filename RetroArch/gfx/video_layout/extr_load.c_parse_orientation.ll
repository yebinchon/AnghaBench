; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_layout/extr_load.c_parse_orientation.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_layout/extr_load.c_parse_orientation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIDEO_LAYOUT_ROT0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"90\00", align 1
@VIDEO_LAYOUT_ROT90 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"180\00", align 1
@VIDEO_LAYOUT_ROT180 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"270\00", align 1
@VIDEO_LAYOUT_ROT270 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"swapxy\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@VIDEO_LAYOUT_SWAP_XY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"flipx\00", align 1
@VIDEO_LAYOUT_FLIP_X = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"flipy\00", align 1
@VIDEO_LAYOUT_FLIP_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @parse_orientation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_orientation(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @VIDEO_LAYOUT_ROT0, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @rxml_node_attrib(i32* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = call i8* @scope_eval(i32* %8, i32 %10)
  store i8* %11, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @VIDEO_LAYOUT_ROT90, align 4
  store i32 %18, i32* %6, align 4
  br label %33

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @VIDEO_LAYOUT_ROT180, align 4
  store i32 %24, i32* %6, align 4
  br label %32

25:                                               ; preds = %19
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @VIDEO_LAYOUT_ROT270, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %29, %25
  br label %32

32:                                               ; preds = %31, %23
  br label %33

33:                                               ; preds = %32, %17
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i32*, i32** %3, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @rxml_node_attrib(i32* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %38 = call i8* @scope_eval(i32* %35, i32 %37)
  store i8* %38, i8** %5, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @VIDEO_LAYOUT_SWAP_XY, align 4
  %46 = load i32, i32* %6, align 4
  %47 = xor i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %44, %40
  br label %49

49:                                               ; preds = %48, %34
  %50 = load i32*, i32** %3, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @rxml_node_attrib(i32* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %53 = call i8* @scope_eval(i32* %50, i32 %52)
  store i8* %53, i8** %5, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* @VIDEO_LAYOUT_FLIP_X, align 4
  %61 = load i32, i32* %6, align 4
  %62 = xor i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %59, %55
  br label %64

64:                                               ; preds = %63, %49
  %65 = load i32*, i32** %3, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @rxml_node_attrib(i32* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %68 = call i8* @scope_eval(i32* %65, i32 %67)
  store i8* %68, i8** %5, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load i8*, i8** %5, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* @VIDEO_LAYOUT_FLIP_Y, align 4
  %76 = load i32, i32* %6, align 4
  %77 = xor i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %74, %70
  br label %79

79:                                               ; preds = %78, %64
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i8* @scope_eval(i32*, i32) #1

declare dso_local i32 @rxml_node_attrib(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
