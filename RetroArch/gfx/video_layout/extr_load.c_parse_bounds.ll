; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_layout/extr_load.c_parse_bounds.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_layout/extr_load.c_parse_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"bottom\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32*)* @parse_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_bounds(%struct.TYPE_4__* noalias sret %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i32* %1, i32** %4, align 8
  store i32* %2, i32** %5, align 8
  call void (%struct.TYPE_4__*, ...) @make_bounds_unit(%struct.TYPE_4__* sret %0)
  %7 = load i32*, i32** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @rxml_node_attrib(i32* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = call i8* @scope_eval(i32* %7, i32 %9)
  store i8* %10, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @get_dec(i8* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  store i8* %14, i8** %15, align 8
  br label %16

16:                                               ; preds = %12, %3
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @rxml_node_attrib(i32* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i8* @scope_eval(i32* %17, i32 %19)
  store i8* %20, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i8*, i8** %6, align 8
  %24 = call i8* @get_dec(i8* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  store i8* %24, i8** %25, align 8
  br label %26

26:                                               ; preds = %22, %16
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @rxml_node_attrib(i32* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i8* @scope_eval(i32* %27, i32 %29)
  store i8* %30, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i8*, i8** %6, align 8
  %34 = call i8* @get_dec(i8* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 3
  store i8* %34, i8** %35, align 8
  br label %36

36:                                               ; preds = %32, %26
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @rxml_node_attrib(i32* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %40 = call i8* @scope_eval(i32* %37, i32 %39)
  store i8* %40, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i8*, i8** %6, align 8
  %44 = call i8* @get_dec(i8* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  store i8* %44, i8** %45, align 8
  br label %46

46:                                               ; preds = %42, %36
  %47 = load i32*, i32** %4, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @rxml_node_attrib(i32* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %50 = call i8* @scope_eval(i32* %47, i32 %49)
  store i8* %50, i8** %6, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i8*, i8** %6, align 8
  %54 = call i8* @get_dec(i8* %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  store i8* %54, i8** %55, align 8
  br label %56

56:                                               ; preds = %52, %46
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @rxml_node_attrib(i32* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %60 = call i8* @scope_eval(i32* %57, i32 %59)
  store i8* %60, i8** %6, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i8*, i8** %6, align 8
  %64 = call i8* @get_dec(i8* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  br label %66

66:                                               ; preds = %62, %56
  %67 = load i32*, i32** %4, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @rxml_node_attrib(i32* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %70 = call i8* @scope_eval(i32* %67, i32 %69)
  store i8* %70, i8** %6, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load i8*, i8** %6, align 8
  %74 = call i8* @get_dec(i8* %73)
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = ptrtoint i8* %74 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = inttoptr i64 %79 to i8*
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 3
  store i8* %80, i8** %81, align 8
  br label %82

82:                                               ; preds = %72, %66
  %83 = load i32*, i32** %4, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @rxml_node_attrib(i32* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %86 = call i8* @scope_eval(i32* %83, i32 %85)
  store i8* %86, i8** %6, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %82
  %89 = load i8*, i8** %6, align 8
  %90 = call i8* @get_dec(i8* %89)
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = ptrtoint i8* %90 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = inttoptr i64 %95 to i8*
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  store i8* %96, i8** %97, align 8
  br label %98

98:                                               ; preds = %88, %82
  ret void
}

declare dso_local void @make_bounds_unit(%struct.TYPE_4__* sret, ...) #1

declare dso_local i8* @scope_eval(i32*, i32) #1

declare dso_local i32 @rxml_node_attrib(i32*, i8*) #1

declare dso_local i8* @get_dec(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
