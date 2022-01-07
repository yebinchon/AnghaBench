; ModuleID = '/home/carl/AnghaBench/HandBrake/test/extr_test.c_ShowPresets.c'
source_filename = "/home/carl/AnghaBench/HandBrake/test/extr_test.c_ShowPresets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"PresetName\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Folder\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s/\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"ChildrenArray\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"PresetDescription\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @ShowPresets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ShowPresets(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32* (...) @hb_presets_get()
  store i32* %18, i32** %4, align 8
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @hb_value_array_len(i32* %20)
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %106, %19
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %109

26:                                               ; preds = %22
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32* @hb_value_array_get(i32* %27, i32 %28)
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32* @hb_dict_get(i32* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %32 = call i8* @hb_value_get_string(i32* %31)
  store i8* %32, i8** %9, align 8
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @Indent(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %10, align 8
  %37 = call i32* @hb_dict_get(i32* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i64 @hb_value_get_bool(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %26
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @stderr, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %46 = load i32*, i32** %10, align 8
  %47 = call i32* @hb_dict_get(i32* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32* %47, i32** %11, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %106

51:                                               ; preds = %40
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  call void @ShowPresets(i32* %52, i32 %53, i32 %54)
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %5, align 4
  br label %105

57:                                               ; preds = %26
  %58 = load i32, i32* @stderr, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %104

63:                                               ; preds = %57
  %64 = load i32*, i32** %10, align 8
  %65 = call i32* @hb_dict_get(i32* %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %66 = call i8* @hb_value_get_string(i32* %65)
  store i8* %66, i8** %12, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %103

69:                                               ; preds = %63
  %70 = load i8*, i8** %12, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %103

75:                                               ; preds = %69
  %76 = load i8*, i8** %12, align 8
  %77 = call i8** @str_width_split(i8* %76, i32 60)
  store i8** %77, i8*** %14, align 8
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %97, %75
  %79 = load i8**, i8*** %14, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %100

85:                                               ; preds = %78
  %86 = load i32, i32* @stderr, align 4
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  %89 = call i32 @Indent(i32 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @stderr, align 4
  %91 = load i8**, i8*** %14, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @fprintf(i32 %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %85
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %78

100:                                              ; preds = %78
  %101 = load i8**, i8*** %14, align 8
  %102 = call i32 @hb_str_vfree(i8** %101)
  br label %103

103:                                              ; preds = %100, %69, %63
  br label %104

104:                                              ; preds = %103, %57
  br label %105

105:                                              ; preds = %104, %51
  br label %106

106:                                              ; preds = %105, %50
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %22

109:                                              ; preds = %22
  ret void
}

declare dso_local i32* @hb_presets_get(...) #1

declare dso_local i32 @hb_value_array_len(i32*) #1

declare dso_local i32* @hb_value_array_get(i32*, i32) #1

declare dso_local i8* @hb_value_get_string(i32*) #1

declare dso_local i32* @hb_dict_get(i32*, i8*) #1

declare dso_local i32 @Indent(i32, i8*, i32) #1

declare dso_local i64 @hb_value_get_bool(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8** @str_width_split(i8*, i32) #1

declare dso_local i32 @hb_str_vfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
