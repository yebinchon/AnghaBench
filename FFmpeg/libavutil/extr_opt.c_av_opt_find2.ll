; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_av_opt_find2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_av_opt_find2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i64 }

@AV_OPT_SEARCH_CHILDREN = common dso_local global i32 0, align 4
@AV_OPT_SEARCH_FAKE_OBJ = common dso_local global i32 0, align 4
@AV_OPT_TYPE_CONST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @av_opt_find2(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i8** %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %15, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  br label %145

21:                                               ; preds = %6
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to i32**
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %14, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  br label %145

28:                                               ; preds = %21
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @AV_OPT_SEARCH_CHILDREN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %76

33:                                               ; preds = %28
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @AV_OPT_SEARCH_FAKE_OBJ, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %33
  store i32* null, i32** %16, align 8
  br label %39

39:                                               ; preds = %54, %38
  %40 = load i32*, i32** %14, align 8
  %41 = load i32*, i32** %16, align 8
  %42 = call i32* @av_opt_child_class_next(i32* %40, i32* %41)
  store i32* %42, i32** %16, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = bitcast i32** %16 to i8*
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call %struct.TYPE_5__* @av_opt_find2(i8* %45, i8* %46, i8* %47, i32 %48, i32 %49, i8** null)
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %15, align 8
  %51 = icmp ne %struct.TYPE_5__* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %7, align 8
  br label %145

54:                                               ; preds = %44
  br label %39

55:                                               ; preds = %39
  br label %75

56:                                               ; preds = %33
  store i8* null, i8** %17, align 8
  br label %57

57:                                               ; preds = %73, %56
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %17, align 8
  %60 = call i8* @av_opt_child_next(i8* %58, i8* %59)
  store i8* %60, i8** %17, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %74

62:                                               ; preds = %57
  %63 = load i8*, i8** %17, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i8**, i8*** %13, align 8
  %69 = call %struct.TYPE_5__* @av_opt_find2(i8* %63, i8* %64, i8* %65, i32 %66, i32 %67, i8** %68)
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %15, align 8
  %70 = icmp ne %struct.TYPE_5__* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %72, %struct.TYPE_5__** %7, align 8
  br label %145

73:                                               ; preds = %62
  br label %57

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74, %55
  br label %76

76:                                               ; preds = %75, %28
  br label %77

77:                                               ; preds = %143, %76
  %78 = load i8*, i8** %8, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %80 = call %struct.TYPE_5__* @av_opt_next(i8* %78, %struct.TYPE_5__* %79)
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** %15, align 8
  %81 = icmp ne %struct.TYPE_5__* %80, null
  br i1 %81, label %82, label %144

82:                                               ; preds = %77
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @strcmp(i64 %85, i8* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %143, label %89

89:                                               ; preds = %82
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* %11, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %143

97:                                               ; preds = %89
  %98 = load i8*, i8** %10, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %106, label %100

100:                                              ; preds = %97
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @AV_OPT_TYPE_CONST, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %127, label %106

106:                                              ; preds = %100, %97
  %107 = load i8*, i8** %10, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %143

109:                                              ; preds = %106
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @AV_OPT_TYPE_CONST, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %143

115:                                              ; preds = %109
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %143

120:                                              ; preds = %115
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = call i32 @strcmp(i64 %123, i8* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %143, label %127

127:                                              ; preds = %120, %100
  %128 = load i8**, i8*** %13, align 8
  %129 = icmp ne i8** %128, null
  br i1 %129, label %130, label %141

130:                                              ; preds = %127
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @AV_OPT_SEARCH_FAKE_OBJ, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = load i8*, i8** %8, align 8
  %137 = load i8**, i8*** %13, align 8
  store i8* %136, i8** %137, align 8
  br label %140

138:                                              ; preds = %130
  %139 = load i8**, i8*** %13, align 8
  store i8* null, i8** %139, align 8
  br label %140

140:                                              ; preds = %138, %135
  br label %141

141:                                              ; preds = %140, %127
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %142, %struct.TYPE_5__** %7, align 8
  br label %145

143:                                              ; preds = %120, %115, %109, %106, %89, %82
  br label %77

144:                                              ; preds = %77
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  br label %145

145:                                              ; preds = %144, %141, %71, %52, %27, %20
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  ret %struct.TYPE_5__* %146
}

declare dso_local i32* @av_opt_child_class_next(i32*, i32*) #1

declare dso_local i8* @av_opt_child_next(i8*, i8*) #1

declare dso_local %struct.TYPE_5__* @av_opt_next(i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
