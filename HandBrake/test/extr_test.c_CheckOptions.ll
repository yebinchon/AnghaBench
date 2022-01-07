; ModuleID = '/home/carl/AnghaBench/HandBrake/test/extr_test.c_CheckOptions.c'
source_filename = "/home/carl/AnghaBench/HandBrake/test/extr_test.c_CheckOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@queue_import_name = common dso_local global i32* null, align 8
@preset_export_name = common dso_local global i32* null, align 8
@input = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Missing input device. Run %s --help for syntax.\0A\00", align 1
@titleindex = common dso_local global i64 0, align 8
@titlescan = common dso_local global i32 0, align 4
@output = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"Missing output file name. Run %s --help for syntax.\0A\00", align 1
@format = common dso_local global i32* null, align 8
@mux = common dso_local global i32 0, align 4
@subtracks = common dso_local global i32 0, align 4
@subtitle_lang_list = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [59 x i8] c"Incompatible options: --subtitle-lang-list and --subtitle\0A\00", align 1
@subtitle_all = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [71 x i8] c"Incompatible options: --all-subtitles/--first-subtitle and --subtitle\0A\00", align 1
@atracks = common dso_local global i32* null, align 8
@audio_lang_list = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [53 x i8] c"Incompatible options: --audio-lang-list and --audio\0A\00", align 1
@audio_all = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [61 x i8] c"Incompatible options: --all-audio/--first-audio and --audio\0A\00", align 1
@par_width = common dso_local global i64 0, align 8
@par_height = common dso_local global i64 0, align 8
@display_width = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [58 x i8] c"Incompatible options: --display-width and --pixel-aspect\0A\00", align 1
@preset_export_file = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [61 x i8] c"Error: --preset-export-file requires option --preset-export\0A\00", align 1
@preset_export_desc = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [61 x i8] c"Error: --preset-export-desc requires option --preset-export\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @CheckOptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckOptions(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32*, i32** @queue_import_name, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %148

12:                                               ; preds = %2
  %13 = load i32*, i32** @preset_export_name, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load i8*, i8** @input, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** @input, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18, %15
  %24 = load i32, i32* @stderr, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %27)
  store i32 1, i32* %3, align 4
  br label %148

29:                                               ; preds = %18, %12
  %30 = load i64, i64* @titleindex, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %79

32:                                               ; preds = %29
  %33 = load i32, i32* @titlescan, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %79, label %35

35:                                               ; preds = %32
  %36 = load i32*, i32** @preset_export_name, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load i8*, i8** @output, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** @output, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41, %38
  %47 = load i32, i32* @stderr, align 4
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  store i32 1, i32* %3, align 4
  br label %148

52:                                               ; preds = %41, %35
  %53 = load i32*, i32** @format, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %78

55:                                               ; preds = %52
  %56 = load i8*, i8** @output, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  %59 = load i8*, i8** @output, align 8
  %60 = call i8* @strrchr(i8* %59, i8 signext 46)
  store i8* %60, i8** %6, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = call i32 @hb_container_get_from_extension(i8* %65)
  store i32 %66, i32* @mux, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* @mux, align 4
  %69 = call %struct.TYPE_3__* @hb_container_get_from_format(i32 %68)
  store %struct.TYPE_3__* %69, %struct.TYPE_3__** %7, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %71 = icmp ne %struct.TYPE_3__* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32* @strdup(i32 %75)
  store i32* %76, i32** @format, align 8
  br label %77

77:                                               ; preds = %72, %67
  br label %78

78:                                               ; preds = %77, %55, %52
  br label %79

79:                                               ; preds = %78, %32, %29
  %80 = load i32, i32* @subtracks, align 4
  %81 = call i32 @count_subtitles(i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32*, i32** @subtitle_lang_list, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* @stderr, align 4
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %148

90:                                               ; preds = %84, %79
  %91 = load i32, i32* %8, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i32, i32* @subtitle_all, align 4
  %95 = icmp ne i32 %94, -1
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* @stderr, align 4
  %98 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %148

99:                                               ; preds = %93, %90
  %100 = load i32*, i32** @atracks, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i32*, i32** @audio_lang_list, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* @stderr, align 4
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %148

108:                                              ; preds = %102, %99
  %109 = load i32*, i32** @atracks, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i32, i32* @audio_all, align 4
  %113 = icmp ne i32 %112, -1
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* @stderr, align 4
  %116 = call i32 (i32, i8*, ...) @fprintf(i32 %115, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %148

117:                                              ; preds = %111, %108
  %118 = load i64, i64* @par_width, align 8
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load i64, i64* @par_height, align 8
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load i64, i64* @display_width, align 8
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* @stderr, align 4
  %128 = call i32 (i32, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %148

129:                                              ; preds = %123, %120, %117
  %130 = load i32*, i32** @preset_export_file, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load i32*, i32** @preset_export_name, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i32, i32* @stderr, align 4
  %137 = call i32 (i32, i8*, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %148

138:                                              ; preds = %132, %129
  %139 = load i32*, i32** @preset_export_desc, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = load i32*, i32** @preset_export_name, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* @stderr, align 4
  %146 = call i32 (i32, i8*, ...) @fprintf(i32 %145, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %148

147:                                              ; preds = %141, %138
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %147, %144, %135, %126, %114, %105, %96, %87, %46, %23, %11
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @hb_container_get_from_extension(i8*) #1

declare dso_local %struct.TYPE_3__* @hb_container_get_from_format(i32) #1

declare dso_local i32* @strdup(i32) #1

declare dso_local i32 @count_subtitles(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
