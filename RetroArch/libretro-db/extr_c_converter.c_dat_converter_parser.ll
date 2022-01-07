; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_c_converter.c_dat_converter_parser.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_c_converter.c_dat_converter_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i8*, i32, i8*, i32 }
%struct.TYPE_18__ = type { i8*, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i8*, %struct.TYPE_16__, i8* }
%struct.TYPE_16__ = type { i32* }

@DAT_CONVERTER_LIST_MAP = common dso_local global i8* null, align 8
@DAT_CONVERTER_MAP_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"game\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"    - Missing match key '\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s.\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"%s' on line %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"%s:%d:%d: fatal error: Expected '(' found '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (%struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_18__*)* @dat_converter_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @dat_converter_parser(%struct.TYPE_20__* %0, %struct.TYPE_20__* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_19__, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %6, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %8, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  store i8* null, i8** %15, align 8
  %16 = load i8*, i8** @DAT_CONVERTER_LIST_MAP, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 2
  store i8* %16, i8** %17, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %19 = icmp ne %struct.TYPE_20__* %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @DAT_CONVERTER_MAP_LIST, align 4
  %22 = call %struct.TYPE_20__* @dat_converter_list_create(i32 %21)
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i8* null, i8** %23, align 8
  %24 = load i8*, i8** @DAT_CONVERTER_LIST_MAP, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %29 = call i32 @dat_converter_list_append(%struct.TYPE_20__* %28, %struct.TYPE_19__* %11)
  br label %30

30:                                               ; preds = %20, %3
  br label %31

31:                                               ; preds = %150, %30
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %151

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %57, label %41

41:                                               ; preds = %37
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @string_is_equal(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %48, %41
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  store i8* %53, i8** %54, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 1
  store %struct.TYPE_21__* %56, %struct.TYPE_21__** %8, align 8
  br label %150

57:                                               ; preds = %37
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @string_is_equal(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %130

64:                                               ; preds = %57
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 1
  store %struct.TYPE_21__* %66, %struct.TYPE_21__** %8, align 8
  %67 = call i32* @dat_parser_table(%struct.TYPE_21__** %8)
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  store i32* %67, i32** %69, align 8
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %123, label %72

72:                                               ; preds = %64
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %74 = icmp ne %struct.TYPE_18__* %73, null
  br i1 %74, label %75, label %114

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %80 = call i8* @dat_converter_get_match(i32* %78, %struct.TYPE_18__* %79)
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  store i8* %80, i8** %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %113, label %85

85:                                               ; preds = %75
  %86 = load i32, i32* %10, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %112

88:                                               ; preds = %85
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %95, %88
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = icmp ne %struct.TYPE_18__* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %98)
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  store %struct.TYPE_18__* %102, %struct.TYPE_18__** %6, align 8
  br label %90

103:                                              ; preds = %90
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %106, i32 %110)
  store i32 1, i32* %10, align 4
  br label %112

112:                                              ; preds = %103, %85
  store i32 1, i32* %9, align 4
  br label %113

113:                                              ; preds = %112, %75
  br label %116

114:                                              ; preds = %72
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  store i8* null, i8** %115, align 8
  br label %116

116:                                              ; preds = %114, %113
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %121 = call i32 @dat_converter_list_append(%struct.TYPE_20__* %120, %struct.TYPE_19__* %7)
  store i32 1, i32* %9, align 4
  br label %122

122:                                              ; preds = %119, %116
  br label %128

123:                                              ; preds = %64
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @dat_converter_list_free(i32* %126)
  br label %128

128:                                              ; preds = %123, %122
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  store i8* null, i8** %129, align 8
  br label %149

130:                                              ; preds = %57
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8* %134, i32 %138, i32 %142, i8* %146)
  %148 = call i32 @dat_converter_exit(i32 1)
  br label %149

149:                                              ; preds = %130, %128
  br label %150

150:                                              ; preds = %149, %49
  br label %31

151:                                              ; preds = %31
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  ret %struct.TYPE_20__* %152
}

declare dso_local %struct.TYPE_20__* @dat_converter_list_create(i32) #1

declare dso_local i32 @dat_converter_list_append(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i32* @dat_parser_table(%struct.TYPE_21__**) #1

declare dso_local i8* @dat_converter_get_match(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dat_converter_list_free(i32*) #1

declare dso_local i32 @dat_converter_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
