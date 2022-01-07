; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..file_path_special.c_fill_pathname_application_special.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..file_path_special.c_fill_pathname_application_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }

@RARCH_PATH_CONFIG = common dso_local global i32 0, align 4
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"discord\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"avatars\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"cheevos\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"badges\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_pathname_application_special(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %162 [
    i32 132, label %16
    i32 131, label %30
    i32 133, label %58
    i32 135, label %59
    i32 137, label %60
    i32 138, label %61
    i32 136, label %62
    i32 141, label %63
    i32 139, label %64
    i32 140, label %65
    i32 134, label %66
    i32 129, label %67
    i32 130, label %114
    i32 128, label %161
  ]

16:                                               ; preds = %3
  %17 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %7, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @fill_pathname_join(i8* %18, i8* %22, i8* %26, i32 %28)
  br label %163

30:                                               ; preds = %3
  %31 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %8, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @string_is_empty(i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %30
  %39 = load i8*, i8** %4, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @strlcpy(i8* %39, i8* %43, i64 %44)
  br label %57

46:                                               ; preds = %30
  %47 = load i32, i32* @RARCH_PATH_CONFIG, align 4
  %48 = call i32 @path_is_empty(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* @RARCH_PATH_CONFIG, align 4
  %53 = call i32 @path_get(i32 %52)
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @fill_pathname_basedir(i8* %51, i32 %53, i64 %54)
  br label %56

56:                                               ; preds = %50, %46
  br label %57

57:                                               ; preds = %56, %38
  br label %163

58:                                               ; preds = %3
  br label %163

59:                                               ; preds = %3
  br label %163

60:                                               ; preds = %3
  br label %163

61:                                               ; preds = %3
  br label %163

62:                                               ; preds = %3
  br label %163

63:                                               ; preds = %3
  br label %163

64:                                               ; preds = %3
  br label %163

65:                                               ; preds = %3
  br label %163

66:                                               ; preds = %3
  br label %163

67:                                               ; preds = %3
  %68 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 1
  %71 = trunc i64 %70 to i32
  %72 = call i64 @malloc(i32 %71)
  %73 = inttoptr i64 %72 to i8*
  store i8* %73, i8** %9, align 8
  %74 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 1
  %77 = trunc i64 %76 to i32
  %78 = call i64 @malloc(i32 %77)
  %79 = inttoptr i64 %78 to i8*
  store i8* %79, i8** %10, align 8
  %80 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %80, %struct.TYPE_7__** %11, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  store i8 0, i8* %82, align 1
  %83 = load i8*, i8** %10, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  store i8 0, i8* %84, align 1
  %85 = load i8*, i8** %9, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 5
  %89 = load i8*, i8** %88, align 8
  %90 = load i64, i64* %5, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @fill_pathname_join(i8* %85, i8* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load i8*, i8** %10, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 1
  %98 = trunc i64 %97 to i32
  %99 = call i32 @fill_pathname_join(i8* %93, i8* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load i8*, i8** %10, align 8
  %101 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 1
  %104 = trunc i64 %103 to i32
  %105 = call i32 @fill_pathname_slash(i8* %100, i32 %104)
  %106 = load i8*, i8** %4, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = load i64, i64* %5, align 8
  %109 = call i32 @strlcpy(i8* %106, i8* %107, i64 %108)
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @free(i8* %110)
  %112 = load i8*, i8** %10, align 8
  %113 = call i32 @free(i8* %112)
  br label %163

114:                                              ; preds = %3
  %115 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 1
  %118 = trunc i64 %117 to i32
  %119 = call i64 @malloc(i32 %118)
  %120 = inttoptr i64 %119 to i8*
  store i8* %120, i8** %12, align 8
  %121 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %122 = sext i32 %121 to i64
  %123 = mul i64 %122, 1
  %124 = trunc i64 %123 to i32
  %125 = call i64 @malloc(i32 %124)
  %126 = inttoptr i64 %125 to i8*
  store i8* %126, i8** %13, align 8
  %127 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %127, %struct.TYPE_7__** %14, align 8
  %128 = load i8*, i8** %12, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  store i8 0, i8* %129, align 1
  %130 = load i8*, i8** %13, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  store i8 0, i8* %131, align 1
  %132 = load i8*, i8** %12, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 5
  %136 = load i8*, i8** %135, align 8
  %137 = load i64, i64* %5, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i32 @fill_pathname_join(i8* %132, i8* %136, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = load i8*, i8** %13, align 8
  %141 = load i8*, i8** %12, align 8
  %142 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %143 = sext i32 %142 to i64
  %144 = mul i64 %143, 1
  %145 = trunc i64 %144 to i32
  %146 = call i32 @fill_pathname_join(i8* %140, i8* %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %145)
  %147 = load i8*, i8** %13, align 8
  %148 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %149 = sext i32 %148 to i64
  %150 = mul i64 %149, 1
  %151 = trunc i64 %150 to i32
  %152 = call i32 @fill_pathname_slash(i8* %147, i32 %151)
  %153 = load i8*, i8** %4, align 8
  %154 = load i8*, i8** %13, align 8
  %155 = load i64, i64* %5, align 8
  %156 = call i32 @strlcpy(i8* %153, i8* %154, i64 %155)
  %157 = load i8*, i8** %12, align 8
  %158 = call i32 @free(i8* %157)
  %159 = load i8*, i8** %13, align 8
  %160 = call i32 @free(i8* %159)
  br label %163

161:                                              ; preds = %3
  br label %162

162:                                              ; preds = %3, %161
  br label %163

163:                                              ; preds = %162, %114, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %16
  ret void
}

declare dso_local %struct.TYPE_7__* @config_get_ptr(...) #1

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @path_is_empty(i32) #1

declare dso_local i32 @fill_pathname_basedir(i8*, i32, i64) #1

declare dso_local i32 @path_get(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fill_pathname_slash(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
