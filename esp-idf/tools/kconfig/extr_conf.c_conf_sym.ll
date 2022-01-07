; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_conf.c_conf_sym.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_conf.c_conf_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { %struct.TYPE_2__*, %struct.symbol* }
%struct.TYPE_2__ = type { i32 }
%struct.symbol = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"%*s%s \00", align 1
@indent = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"(%s) \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"/n\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"/m\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"/y\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"/?\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@line = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"es\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.menu*)* @conf_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_sym(%struct.menu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.menu*, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.menu* %0, %struct.menu** %3, align 8
  %7 = load %struct.menu*, %struct.menu** %3, align 8
  %8 = getelementptr inbounds %struct.menu, %struct.menu* %7, i32 0, i32 1
  %9 = load %struct.symbol*, %struct.symbol** %8, align 8
  store %struct.symbol* %9, %struct.symbol** %4, align 8
  br label %10

10:                                               ; preds = %1, %98, %105, %117, %121, %129
  %11 = load i8*, i8** @indent, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 -1
  %13 = load %struct.menu*, %struct.menu** %3, align 8
  %14 = getelementptr inbounds %struct.menu, %struct.menu* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @_(i32 %17)
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.symbol*, %struct.symbol** %4, align 8
  %21 = getelementptr inbounds %struct.symbol, %struct.symbol* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %10
  %25 = load %struct.symbol*, %struct.symbol** %4, align 8
  %26 = getelementptr inbounds %struct.symbol, %struct.symbol* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %24, %10
  %30 = call i32 @putchar(i8 signext 91)
  %31 = load %struct.symbol*, %struct.symbol** %4, align 8
  %32 = call i32 @sym_get_tristate_value(%struct.symbol* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  switch i32 %33, label %40 [
    i32 129, label %34
    i32 130, label %36
    i32 128, label %38
  ]

34:                                               ; preds = %29
  %35 = call i32 @putchar(i8 signext 78)
  br label %40

36:                                               ; preds = %29
  %37 = call i32 @putchar(i8 signext 77)
  br label %40

38:                                               ; preds = %29
  %39 = call i32 @putchar(i8 signext 89)
  br label %40

40:                                               ; preds = %29, %38, %36, %34
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 129
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.symbol*, %struct.symbol** %4, align 8
  %45 = call i64 @sym_tristate_within_range(%struct.symbol* %44, i32 129)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %43, %40
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 130
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.symbol*, %struct.symbol** %4, align 8
  %54 = call i64 @sym_tristate_within_range(%struct.symbol* %53, i32 130)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %52, %49
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 128
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.symbol*, %struct.symbol** %4, align 8
  %63 = call i64 @sym_tristate_within_range(%struct.symbol* %62, i32 128)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %61, %58
  %68 = load %struct.menu*, %struct.menu** %3, align 8
  %69 = call i64 @menu_has_help(%struct.menu* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %67
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %75 = load %struct.symbol*, %struct.symbol** %4, align 8
  %76 = load %struct.symbol*, %struct.symbol** %4, align 8
  %77 = call i32 @sym_get_string_value(%struct.symbol* %76)
  %78 = call i32 @conf_askvalue(%struct.symbol* %75, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %132

81:                                               ; preds = %73
  %82 = load i32*, i32** @line, align 8
  %83 = call i32 @strip(i32* %82)
  %84 = load i32*, i32** @line, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %121 [
    i32 110, label %87
    i32 78, label %87
    i32 109, label %99
    i32 77, label %99
    i32 121, label %106
    i32 89, label %106
    i32 0, label %118
    i32 63, label %120
  ]

87:                                               ; preds = %81, %81
  store i32 129, i32* %6, align 4
  %88 = load i32*, i32** @line, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i32*, i32** @line, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = call i32 @strcmp(i32* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92, %87
  br label %122

98:                                               ; preds = %92
  br label %10

99:                                               ; preds = %81, %81
  store i32 130, i32* %6, align 4
  %100 = load i32*, i32** @line, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  br label %122

105:                                              ; preds = %99
  br label %10

106:                                              ; preds = %81, %81
  store i32 128, i32* %6, align 4
  %107 = load i32*, i32** @line, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i32*, i32** @line, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = call i32 @strcmp(i32* %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %111, %106
  br label %122

117:                                              ; preds = %111
  br label %10

118:                                              ; preds = %81
  %119 = load i32, i32* %5, align 4
  store i32 %119, i32* %6, align 4
  br label %122

120:                                              ; preds = %81
  br label %129

121:                                              ; preds = %81
  br label %10

122:                                              ; preds = %118, %116, %104, %97
  %123 = load %struct.symbol*, %struct.symbol** %4, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i64 @sym_set_tristate_value(%struct.symbol* %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  store i32 0, i32* %2, align 4
  br label %132

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %128, %120
  %130 = load %struct.menu*, %struct.menu** %3, align 8
  %131 = call i32 @print_help(%struct.menu* %130)
  br label %10

132:                                              ; preds = %127, %80
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @_(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @sym_get_tristate_value(%struct.symbol*) #1

declare dso_local i64 @sym_tristate_within_range(%struct.symbol*, i32) #1

declare dso_local i64 @menu_has_help(%struct.menu*) #1

declare dso_local i32 @conf_askvalue(%struct.symbol*, i32) #1

declare dso_local i32 @sym_get_string_value(%struct.symbol*) #1

declare dso_local i32 @strip(i32*) #1

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i64 @sym_set_tristate_value(%struct.symbol*, i32) #1

declare dso_local i32 @print_help(%struct.menu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
