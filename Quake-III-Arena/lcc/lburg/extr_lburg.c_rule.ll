; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/lburg/extr_lburg.c_rule.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/lburg/extr_lburg.c_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i8*, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i64, %struct.TYPE_10__*, %struct.TYPE_12__*, %struct.TYPE_13__*, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, i32*, i32* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i64 }

@nrules = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@TERM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"illegal nonconstant cost `%s'\0A\00", align 1
@rules = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @rule(i8* %0, %struct.TYPE_10__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__**, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = call %struct.TYPE_12__* @alloc(i32 88)
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %9, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %11, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call %struct.TYPE_13__* @nonterm(i8* %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 9
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %21, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 9
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %25, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 10
  store i64 %27, i64* %29, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 9
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  store %struct.TYPE_12__** %33, %struct.TYPE_12__*** %10, align 8
  br label %34

34:                                               ; preds = %39, %4
  %35 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = icmp ne %struct.TYPE_12__* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 8
  store %struct.TYPE_12__** %42, %struct.TYPE_12__*** %10, align 8
  br label %34

43:                                               ; preds = %34
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %45 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %45, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 7
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %48, align 8
  %49 = load i64, i64* @nrules, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* @nrules, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 6
  store i64 %50, i64* %52, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @strtol(i8* %59, i8** %12, i32 10)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load i8, i8* %63, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %43
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  store i32 -1, i32* %68, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = call i8* @stringf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %69)
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %66, %43
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TERM, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %73
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  store %struct.TYPE_12__** %81, %struct.TYPE_12__*** %10, align 8
  br label %82

82:                                               ; preds = %87, %79
  %83 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = icmp ne %struct.TYPE_12__* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 5
  store %struct.TYPE_12__** %90, %struct.TYPE_12__*** %10, align 8
  br label %82

91:                                               ; preds = %82
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %93 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  store %struct.TYPE_12__* %92, %struct.TYPE_12__** %93, align 8
  br label %125

94:                                               ; preds = %73
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %124

99:                                               ; preds = %94
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %124

104:                                              ; preds = %99
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  store %struct.TYPE_11__* %107, %struct.TYPE_11__** %13, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 4
  store %struct.TYPE_12__* %110, %struct.TYPE_12__** %112, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  store %struct.TYPE_12__* %113, %struct.TYPE_12__** %115, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %123

120:                                              ; preds = %104
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @yyerror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %121)
  br label %123

123:                                              ; preds = %120, %104
  br label %124

124:                                              ; preds = %123, %99, %94
  br label %125

125:                                              ; preds = %124, %91
  store %struct.TYPE_12__** @rules, %struct.TYPE_12__*** %10, align 8
  br label %126

126:                                              ; preds = %131, %125
  %127 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = icmp ne %struct.TYPE_12__* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  br label %131

131:                                              ; preds = %130
  %132 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 3
  store %struct.TYPE_12__** %134, %struct.TYPE_12__*** %10, align 8
  br label %126

135:                                              ; preds = %126
  %136 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 3
  store %struct.TYPE_12__* %137, %struct.TYPE_12__** %139, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %141 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  store %struct.TYPE_12__* %140, %struct.TYPE_12__** %141, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  ret %struct.TYPE_12__* %142
}

declare dso_local %struct.TYPE_12__* @alloc(i32) #1

declare dso_local %struct.TYPE_13__* @nonterm(i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i8* @stringf(i8*, i8*) #1

declare dso_local i32 @yyerror(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
