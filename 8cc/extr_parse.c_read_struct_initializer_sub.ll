; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_struct_initializer_sub.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_struct_initializer_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.TYPE_12__ = type { i64, i8* }

@TIDENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"malformed desginated initializer: %s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"field does not exist: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*, i32, i32)* @read_struct_initializer_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_struct_initializer_sub(i32* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = call i32 (...) @maybe_read_brace()
  store i32 %16, i32* %9, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32* @dict_keys(i32 %19)
  store i32* %20, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %142, %4
  %22 = call %struct.TYPE_12__* (...) @get()
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %12, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %24 = call i64 @is_keyword(%struct.TYPE_12__* %23, i8 signext 125)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %31 = call i32 @unget_token(%struct.TYPE_12__* %30)
  br label %32

32:                                               ; preds = %29, %26
  br label %148

33:                                               ; preds = %21
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %35 = call i64 @is_keyword(%struct.TYPE_12__* %34, i8 signext 46)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %39 = call i64 @is_keyword(%struct.TYPE_12__* %38, i8 signext 91)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %49 = call i32 @unget_token(%struct.TYPE_12__* %48)
  br label %148

50:                                               ; preds = %44, %41, %37
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %52 = call i64 @is_keyword(%struct.TYPE_12__* %51, i8 signext 46)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %107

54:                                               ; preds = %50
  %55 = call %struct.TYPE_12__* (...) @get()
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %12, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %57 = icmp ne %struct.TYPE_12__* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TIDENT, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58, %54
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %67 = call i32 @tok2s(%struct.TYPE_12__* %66)
  %68 = call i32 @errort(%struct.TYPE_12__* %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %64, %58
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %13, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = call %struct.TYPE_11__* @dict_get(i32 %75, i8* %76)
  store %struct.TYPE_11__* %77, %struct.TYPE_11__** %14, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %79 = icmp ne %struct.TYPE_11__* %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %69
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %83 = call i32 @tok2s(%struct.TYPE_12__* %82)
  %84 = call i32 @errort(%struct.TYPE_12__* %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %80, %69
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32* @dict_keys(i32 %88)
  store i32* %89, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %105, %85
  %91 = load i32, i32* %11, align 4
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @vec_len(i32* %92)
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %90
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  %99 = call i8* @vec_get(i32* %96, i32 %97)
  store i8* %99, i8** %15, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = load i8*, i8** %15, align 8
  %102 = call i64 @strcmp(i8* %100, i8* %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %106

105:                                              ; preds = %95
  br label %90

106:                                              ; preds = %104, %90
  store i32 1, i32* %8, align 4
  br label %125

107:                                              ; preds = %50
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %109 = call i32 @unget_token(%struct.TYPE_12__* %108)
  %110 = load i32, i32* %11, align 4
  %111 = load i32*, i32** %10, align 8
  %112 = call i32 @vec_len(i32* %111)
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %143

115:                                              ; preds = %107
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  %119 = call i8* @vec_get(i32* %116, i32 %117)
  store i8* %119, i8** %13, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = call %struct.TYPE_11__* @dict_get(i32 %122, i8* %123)
  store %struct.TYPE_11__* %124, %struct.TYPE_11__** %14, align 8
  br label %125

125:                                              ; preds = %115, %106
  %126 = load i32*, i32** %5, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %129, %132
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @read_initializer_elem(i32* %126, %struct.TYPE_11__* %127, i64 %133, i32 %134)
  %136 = call i32 (...) @maybe_skip_comma()
  store i32 0, i32* %8, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %125
  br label %143

142:                                              ; preds = %125
  br label %21

143:                                              ; preds = %141, %114
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = call i32 (...) @skip_to_brace()
  br label %148

148:                                              ; preds = %32, %47, %146, %143
  ret void
}

declare dso_local i32 @maybe_read_brace(...) #1

declare dso_local i32* @dict_keys(i32) #1

declare dso_local %struct.TYPE_12__* @get(...) #1

declare dso_local i64 @is_keyword(%struct.TYPE_12__*, i8 signext) #1

declare dso_local i32 @unget_token(%struct.TYPE_12__*) #1

declare dso_local i32 @errort(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @tok2s(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_11__* @dict_get(i32, i8*) #1

declare dso_local i32 @vec_len(i32*) #1

declare dso_local i8* @vec_get(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @read_initializer_elem(i32*, %struct.TYPE_11__*, i64, i32) #1

declare dso_local i32 @maybe_skip_comma(...) #1

declare dso_local i32 @skip_to_brace(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
