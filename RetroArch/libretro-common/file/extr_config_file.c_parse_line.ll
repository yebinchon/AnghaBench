; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_config_file.c_parse_line.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_config_file.c_parse_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.config_entry_list = type { i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"include \00", align 1
@MAX_INCLUDE_DEPTH = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"!!! #include depth exceeded for config. Might be a cycle.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.config_entry_list*, i8*, i32*)* @parse_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_line(%struct.TYPE_4__* %0, %struct.config_entry_list* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.config_entry_list*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store %struct.config_entry_list* %1, %struct.config_entry_list** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i64 8, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i8* @strip_comment(i8* %17)
  store i8* %18, i8** %14, align 8
  %19 = load i8*, i8** %14, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %19, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %4
  %23 = load i8*, i8** %14, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %14, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = call i8* @strstr(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %14, align 8
  %28 = icmp eq i8* %26, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %22
  %30 = load i8*, i8** %14, align 8
  %31 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8* %33, i8** %15, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = call i8* @extract_value(i8* %34, i32 0)
  store i8* %35, i8** %16, align 8
  %36 = load i8*, i8** %16, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %124

39:                                               ; preds = %29
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MAX_INCLUDE_DEPTH, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 @fprintf(i32 %46, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %53

48:                                               ; preds = %39
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = load i8*, i8** %16, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @add_sub_conf(%struct.TYPE_4__* %49, i8* %50, i32* %51)
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i8*, i8** %16, align 8
  %55 = call i32 @free(i8* %54)
  br label %56

56:                                               ; preds = %53, %22
  br label %57

57:                                               ; preds = %56, %4
  br label %58

58:                                               ; preds = %64, %57
  %59 = load i8*, i8** %8, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = call i64 @isspace(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %8, align 8
  br label %58

67:                                               ; preds = %58
  %68 = call i64 @malloc(i32 9)
  %69 = inttoptr i64 %68 to i8*
  store i8* %69, i8** %10, align 8
  br label %70

70:                                               ; preds = %95, %67
  %71 = load i8*, i8** %8, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = call i64 @isgraph(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %103

76:                                               ; preds = %70
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* %12, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %76
  %81 = load i64, i64* %12, align 8
  %82 = mul i64 %81, 2
  store i64 %82, i64* %12, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load i64, i64* %12, align 8
  %85 = add i64 %84, 1
  %86 = call i64 @realloc(i8* %83, i64 %85)
  %87 = inttoptr i64 %86 to i8*
  store i8* %87, i8** %11, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %80
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @free(i8* %91)
  store i32 0, i32* %5, align 4
  br label %124

93:                                               ; preds = %80
  %94 = load i8*, i8** %11, align 8
  store i8* %94, i8** %10, align 8
  br label %95

95:                                               ; preds = %93, %76
  %96 = load i8*, i8** %8, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %8, align 8
  %98 = load i8, i8* %96, align 1
  %99 = load i8*, i8** %10, align 8
  %100 = load i64, i64* %13, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %13, align 8
  %102 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8 %98, i8* %102, align 1
  br label %70

103:                                              ; preds = %70
  %104 = load i8*, i8** %10, align 8
  %105 = load i64, i64* %13, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8 0, i8* %106, align 1
  %107 = load i8*, i8** %10, align 8
  %108 = load %struct.config_entry_list*, %struct.config_entry_list** %7, align 8
  %109 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = call i8* @extract_value(i8* %110, i32 1)
  %112 = load %struct.config_entry_list*, %struct.config_entry_list** %7, align 8
  %113 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load %struct.config_entry_list*, %struct.config_entry_list** %7, align 8
  %115 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %103
  %119 = load %struct.config_entry_list*, %struct.config_entry_list** %7, align 8
  %120 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %119, i32 0, i32 0
  store i8* null, i8** %120, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = call i32 @free(i8* %121)
  store i32 0, i32* %5, align 4
  br label %124

123:                                              ; preds = %103
  store i32 1, i32* %5, align 4
  br label %124

124:                                              ; preds = %123, %118, %90, %38
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i8* @strip_comment(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @STRLEN_CONST(i8*) #1

declare dso_local i8* @extract_value(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @add_sub_conf(%struct.TYPE_4__*, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @isgraph(i32) #1

declare dso_local i64 @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
