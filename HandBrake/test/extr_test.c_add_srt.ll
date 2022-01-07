; ModuleID = '/home/carl/AnghaBench/HandBrake/test/extr_test.c_add_srt.c'
source_filename = "/home/carl/AnghaBench/HandBrake/test/extr_test.c_add_srt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"ISO-8859-1\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"und\00", align 1
@srtburn = common dso_local global i32 0, align 4
@IMPORTSRT = common dso_local global i32 0, align 4
@srtdefault = common dso_local global i32 0, align 4
@srtcodeset = common dso_local global i8** null, align 8
@srtoffset = common dso_local global i8** null, align 8
@srtlang = common dso_local global i8** null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Warning: Invalid SRT language (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Import\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Burn\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Format\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"SRT\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Filename\00", align 1
@srtfile = common dso_local global i8** null, align 8
@.str.10 = private unnamed_addr constant [9 x i8] c"Language\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Codeset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @add_srt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_srt(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @srtburn, align 4
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @IMPORTSRT, align 4
  %25 = call i64 @hb_subtitle_can_burn(i32 %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %23, %18, %3
  %28 = phi i1 [ false, %18 ], [ false, %3 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @srtdefault, align 4
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  %37 = icmp eq i32 %34, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load i8**, i8*** @srtcodeset, align 8
  %40 = icmp ne i8** %39, null
  br i1 %40, label %41, label %59

41:                                               ; preds = %27
  %42 = load i32, i32* %5, align 4
  %43 = load i8**, i8*** @srtcodeset, align 8
  %44 = call i32 @hb_str_vlen(i8** %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load i8**, i8*** @srtcodeset, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i8**, i8*** @srtcodeset, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %7, align 8
  br label %59

59:                                               ; preds = %53, %46, %41, %27
  %60 = load i8**, i8*** @srtoffset, align 8
  %61 = icmp ne i8** %60, null
  br i1 %61, label %62, label %81

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = load i8**, i8*** @srtoffset, align 8
  %65 = call i32 @hb_str_vlen(i8** %64)
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %62
  %68 = load i8**, i8*** @srtoffset, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load i8**, i8*** @srtoffset, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strtoll(i8* %79, i32* null, i32 0)
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %74, %67, %62, %59
  %82 = load i8**, i8*** @srtlang, align 8
  %83 = icmp ne i8** %82, null
  br i1 %83, label %84, label %118

84:                                               ; preds = %81
  %85 = load i32, i32* %5, align 4
  %86 = load i8**, i8*** @srtlang, align 8
  %87 = call i32 @hb_str_vlen(i8** %86)
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %118

89:                                               ; preds = %84
  %90 = load i8**, i8*** @srtlang, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %118

96:                                               ; preds = %89
  %97 = load i8**, i8*** @srtlang, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call %struct.TYPE_3__* @lang_lookup(i8* %101)
  store %struct.TYPE_3__* %102, %struct.TYPE_3__** %12, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %104 = icmp ne %struct.TYPE_3__* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %9, align 8
  br label %117

109:                                              ; preds = %96
  %110 = load i32, i32* @stderr, align 4
  %111 = load i8**, i8*** @srtlang, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @fprintf(i32 %110, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %109, %105
  br label %118

118:                                              ; preds = %117, %89, %84, %81
  %119 = call i32* (...) @hb_dict_init()
  store i32* %119, i32** %13, align 8
  %120 = call i32* (...) @hb_dict_init()
  store i32* %120, i32** %14, align 8
  %121 = load i32*, i32** %13, align 8
  %122 = load i32*, i32** %14, align 8
  %123 = call i32 @hb_dict_set(i32* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %122)
  %124 = load i32*, i32** %13, align 8
  %125 = load i32, i32* %11, align 4
  %126 = call i32* @hb_value_bool(i32 %125)
  %127 = call i32 @hb_dict_set(i32* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %126)
  %128 = load i32*, i32** %13, align 8
  %129 = load i32, i32* %10, align 4
  %130 = call i32* @hb_value_bool(i32 %129)
  %131 = call i32 @hb_dict_set(i32* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %130)
  %132 = load i32*, i32** %13, align 8
  %133 = load i32, i32* %8, align 4
  %134 = call i32* @hb_value_int(i32 %133)
  %135 = call i32 @hb_dict_set(i32* %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* %134)
  %136 = load i32*, i32** %14, align 8
  %137 = call i32* @hb_value_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %138 = call i32 @hb_dict_set(i32* %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* %137)
  %139 = load i32*, i32** %14, align 8
  %140 = load i8**, i8*** @srtfile, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = call i32* @hb_value_string(i8* %144)
  %146 = call i32 @hb_dict_set(i32* %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32* %145)
  %147 = load i32*, i32** %14, align 8
  %148 = load i8*, i8** %9, align 8
  %149 = call i32* @hb_value_string(i8* %148)
  %150 = call i32 @hb_dict_set(i32* %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32* %149)
  %151 = load i32*, i32** %14, align 8
  %152 = load i8*, i8** %7, align 8
  %153 = call i32* @hb_value_string(i8* %152)
  %154 = call i32 @hb_dict_set(i32* %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32* %153)
  %155 = load i32*, i32** %4, align 8
  %156 = load i32*, i32** %13, align 8
  %157 = call i32 @hb_value_array_append(i32* %155, i32* %156)
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
