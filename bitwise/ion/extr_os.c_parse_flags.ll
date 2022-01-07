; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_os.c_parse_flags.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_os.c_parse_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32*, i8**, i32* }

@.str = private unnamed_addr constant [17 x i8] c"Unknown flag %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"No value argument after -%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"No value after %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Invalid value '%s' for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Unhandled flag kind\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @parse_flags(i32* %0, i8*** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8*** %1, i8**** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i8***, i8**** %4, align 8
  %17 = load i8**, i8*** %16, align 8
  store i8** %17, i8*** %6, align 8
  store i32 1, i32* %7, align 4
  br label %18

18:                                               ; preds = %138, %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %141

22:                                               ; preds = %18
  %23 = load i8**, i8*** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 45
  br i1 %32, label %33, label %136

33:                                               ; preds = %22
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 45
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %9, align 8
  br label %43

43:                                               ; preds = %40, %33
  %44 = load i8*, i8** %9, align 8
  %45 = call %struct.TYPE_5__* @get_flag_def(i8* %44)
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %10, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %47 = icmp ne %struct.TYPE_5__* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %49)
  br label %138

51:                                               ; preds = %43
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %133 [
    i32 130, label %55
    i32 128, label %60
    i32 129, label %81
  ]

55:                                               ; preds = %51
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  store i32 1, i32* %59, align 4
  br label %135

60:                                               ; preds = %51
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  %68 = load i8**, i8*** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i8**, i8*** %75, align 8
  store i8* %72, i8** %76, align 8
  br label %80

77:                                               ; preds = %60
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %77, %65
  br label %135

81:                                               ; preds = %51
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  %89 = load i8**, i8*** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %11, align 8
  br label %97

94:                                               ; preds = %81
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %95)
  br label %135

97:                                               ; preds = %86
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %98

98:                                               ; preds = %122, %97
  %99 = load i32, i32* %13, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %125

104:                                              ; preds = %98
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %11, align 8
  %113 = call i32 @strcmp(i32 %111, i8* %112)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %104
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  store i32 %116, i32* %120, align 4
  store i32 1, i32* %12, align 4
  br label %125

121:                                              ; preds = %104
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %13, align 4
  br label %98

125:                                              ; preds = %115, %98
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %125
  %129 = load i8*, i8** %11, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %129, i8* %130)
  br label %132

132:                                              ; preds = %128, %125
  br label %135

133:                                              ; preds = %51
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %132, %94, %80, %55
  br label %137

136:                                              ; preds = %22
  br label %141

137:                                              ; preds = %135
  br label %138

138:                                              ; preds = %137, %48
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %18

141:                                              ; preds = %136, %18
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %7, align 4
  %144 = sub nsw i32 %142, %143
  %145 = load i32*, i32** %3, align 8
  store i32 %144, i32* %145, align 4
  %146 = load i8**, i8*** %6, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  %150 = load i8***, i8**** %4, align 8
  store i8** %149, i8*** %150, align 8
  %151 = load i8**, i8*** %6, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @strdup(i8* %153)
  %155 = call i8* @path_file(i32 %154)
  ret i8* %155
}

declare dso_local %struct.TYPE_5__* @get_flag_def(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i8* @path_file(i32) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
