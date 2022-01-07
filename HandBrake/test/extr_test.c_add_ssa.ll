; ModuleID = '/home/carl/AnghaBench/HandBrake/test/extr_test.c_add_ssa.c'
source_filename = "/home/carl/AnghaBench/HandBrake/test/extr_test.c_add_ssa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"und\00", align 1
@ssaburn = common dso_local global i32 0, align 4
@IMPORTSRT = common dso_local global i32 0, align 4
@ssadefault = common dso_local global i32 0, align 4
@ssaoffset = common dso_local global i8** null, align 8
@ssalang = common dso_local global i8** null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Warning: Invalid SRT language (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Import\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Burn\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Format\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"SSA\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Filename\00", align 1
@ssafile = common dso_local global i8** null, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"Language\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @add_ssa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_ssa(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ssaburn, align 4
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @IMPORTSRT, align 4
  %24 = call i64 @hb_subtitle_can_burn(i32 %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %22, %17, %3
  %27 = phi i1 [ false, %17 ], [ false, %3 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @ssadefault, align 4
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  %36 = icmp eq i32 %33, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %10, align 4
  %38 = load i8**, i8*** @ssaoffset, align 8
  %39 = icmp ne i8** %38, null
  br i1 %39, label %40, label %59

40:                                               ; preds = %26
  %41 = load i32, i32* %5, align 4
  %42 = load i8**, i8*** @ssaoffset, align 8
  %43 = call i32 @hb_str_vlen(i8** %42)
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load i8**, i8*** @ssaoffset, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i8**, i8*** @ssaoffset, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @strtoll(i8* %57, i32* null, i32 0)
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %52, %45, %40, %26
  %60 = load i8**, i8*** @ssalang, align 8
  %61 = icmp ne i8** %60, null
  br i1 %61, label %62, label %96

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = load i8**, i8*** @ssalang, align 8
  %65 = call i32 @hb_str_vlen(i8** %64)
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %96

67:                                               ; preds = %62
  %68 = load i8**, i8*** @ssalang, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %96

74:                                               ; preds = %67
  %75 = load i8**, i8*** @ssalang, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call %struct.TYPE_3__* @lang_lookup(i8* %79)
  store %struct.TYPE_3__* %80, %struct.TYPE_3__** %11, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %82 = icmp ne %struct.TYPE_3__* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %8, align 8
  br label %95

87:                                               ; preds = %74
  %88 = load i32, i32* @stderr, align 4
  %89 = load i8**, i8*** @ssalang, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @fprintf(i32 %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %87, %83
  br label %96

96:                                               ; preds = %95, %67, %62, %59
  %97 = call i32* (...) @hb_dict_init()
  store i32* %97, i32** %12, align 8
  %98 = call i32* (...) @hb_dict_init()
  store i32* %98, i32** %13, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = call i32 @hb_dict_set(i32* %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %100)
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32* @hb_value_bool(i32 %103)
  %105 = call i32 @hb_dict_set(i32* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %104)
  %106 = load i32*, i32** %12, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32* @hb_value_bool(i32 %107)
  %109 = call i32 @hb_dict_set(i32* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %108)
  %110 = load i32*, i32** %12, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32* @hb_value_int(i32 %111)
  %113 = call i32 @hb_dict_set(i32* %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* %112)
  %114 = load i32*, i32** %13, align 8
  %115 = call i32* @hb_value_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %116 = call i32 @hb_dict_set(i32* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* %115)
  %117 = load i32*, i32** %13, align 8
  %118 = load i8**, i8*** @ssafile, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i32* @hb_value_string(i8* %122)
  %124 = call i32 @hb_dict_set(i32* %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* %123)
  %125 = load i32*, i32** %13, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = call i32* @hb_value_string(i8* %126)
  %128 = call i32 @hb_dict_set(i32* %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32* %127)
  %129 = load i32*, i32** %4, align 8
  %130 = load i32*, i32** %12, align 8
  %131 = call i32 @hb_value_array_append(i32* %129, i32* %130)
  ret i32 0
}

declare dso_local i64 @hb_subtitle_can_burn(i32) #1

declare dso_local i32 @hb_str_vlen(i8**) #1

declare dso_local i32 @strtoll(i8*, i32*, i32) #1

declare dso_local %struct.TYPE_3__* @lang_lookup(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32* @hb_dict_init(...) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32*) #1

declare dso_local i32* @hb_value_bool(i32) #1

declare dso_local i32* @hb_value_int(i32) #1

declare dso_local i32* @hb_value_string(i8*) #1

declare dso_local i32 @hb_value_array_append(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
