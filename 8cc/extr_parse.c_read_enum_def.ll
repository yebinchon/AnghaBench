; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_enum_def.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_enum_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64, i8* }

@TIDENT = common dso_local global i64 0, align 8
@tags = common dso_local global i32 0, align 4
@KIND_ENUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"declarations of %s does not match\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"enum tag %s is not defined\00", align 1
@type_int = common dso_local global %struct.TYPE_13__* null, align 8
@type_enum = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"identifier expected, but got %s\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"',' or '}' expected, but got %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* ()* @read_enum_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @read_enum_def() #0 {
  %1 = alloca %struct.TYPE_13__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i8* null, i8** %2, align 8
  %8 = call %struct.TYPE_14__* (...) @get()
  store %struct.TYPE_14__* %8, %struct.TYPE_14__** %3, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TIDENT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %2, align 8
  %18 = call %struct.TYPE_14__* (...) @get()
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %3, align 8
  br label %19

19:                                               ; preds = %14, %0
  %20 = load i8*, i8** %2, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load i32, i32* @tags, align 4
  %24 = load i8*, i8** %2, align 8
  %25 = call %struct.TYPE_13__* @map_get(i32 %23, i8* %24)
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %4, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = icmp ne %struct.TYPE_13__* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @KIND_ENUM, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = load i8*, i8** %2, align 8
  %37 = call i32 @errort(%struct.TYPE_14__* %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %34, %28, %22
  br label %39

39:                                               ; preds = %38, %19
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %41 = call i64 @is_keyword(%struct.TYPE_14__* %40, i8 signext 123)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %2, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* @tags, align 4
  %48 = load i8*, i8** %2, align 8
  %49 = call %struct.TYPE_13__* @map_get(i32 %47, i8* %48)
  %50 = icmp ne %struct.TYPE_13__* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %46, %43
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = load i8*, i8** %2, align 8
  %54 = call i32 @errort(%struct.TYPE_14__* %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %51, %46
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %57 = call i32 @unget_token(%struct.TYPE_14__* %56)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** @type_int, align 8
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %1, align 8
  br label %116

59:                                               ; preds = %39
  %60 = load i8*, i8** %2, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32, i32* @tags, align 4
  %64 = load i8*, i8** %2, align 8
  %65 = load i32*, i32** @type_enum, align 8
  %66 = call i32 @map_put(i32 %63, i8* %64, i32* %65)
  br label %67

67:                                               ; preds = %62, %59
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %109, %104, %67
  %69 = call %struct.TYPE_14__* (...) @get()
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %3, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %71 = call i64 @is_keyword(%struct.TYPE_14__* %70, i8 signext 125)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %114

74:                                               ; preds = %68
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @TIDENT, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %83 = call i8* @tok2s(%struct.TYPE_14__* %82)
  %84 = call i32 @errort(%struct.TYPE_14__* %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %80, %74
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %6, align 8
  %89 = call i64 @next_token(i8 signext 61)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = call i32 (...) @read_intexpr()
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %85
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** @type_int, align 8
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  %97 = call i32* @ast_inttype(%struct.TYPE_13__* %94, i32 %95)
  store i32* %97, i32** %7, align 8
  %98 = call i32 (...) @env()
  %99 = load i8*, i8** %6, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @map_put(i32 %98, i8* %99, i32* %100)
  %102 = call i64 @next_token(i8 signext 44)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  br label %68

105:                                              ; preds = %93
  %106 = call i64 @next_token(i8 signext 125)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %114

109:                                              ; preds = %105
  %110 = call %struct.TYPE_14__* (...) @peek()
  %111 = call %struct.TYPE_14__* (...) @peek()
  %112 = call i8* @tok2s(%struct.TYPE_14__* %111)
  %113 = call i32 @errort(%struct.TYPE_14__* %110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %112)
  br label %68

114:                                              ; preds = %108, %73
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** @type_int, align 8
  store %struct.TYPE_13__* %115, %struct.TYPE_13__** %1, align 8
  br label %116

116:                                              ; preds = %114, %55
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  ret %struct.TYPE_13__* %117
}

declare dso_local %struct.TYPE_14__* @get(...) #1

declare dso_local %struct.TYPE_13__* @map_get(i32, i8*) #1

declare dso_local i32 @errort(%struct.TYPE_14__*, i8*, i8*) #1

declare dso_local i64 @is_keyword(%struct.TYPE_14__*, i8 signext) #1

declare dso_local i32 @unget_token(%struct.TYPE_14__*) #1

declare dso_local i32 @map_put(i32, i8*, i32*) #1

declare dso_local i8* @tok2s(%struct.TYPE_14__*) #1

declare dso_local i64 @next_token(i8 signext) #1

declare dso_local i32 @read_intexpr(...) #1

declare dso_local i32* @ast_inttype(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @env(...) #1

declare dso_local %struct.TYPE_14__* @peek(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
