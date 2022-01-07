; ModuleID = '/home/carl/AnghaBench/8cc/extr_cpp.c_read_directive.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_cpp.c_read_directive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i8*, i32 }

@TNEWLINE = common dso_local global i64 0, align 8
@TNUMBER = common dso_local global i64 0, align 8
@TIDENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"define\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"elif\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"endif\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ifdef\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"ifndef\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"include_next\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"pragma\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"unsupported preprocessor directive: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @read_directive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_directive(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %5 = call %struct.TYPE_14__* (...) @lex()
  store %struct.TYPE_14__* %5, %struct.TYPE_14__** %3, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TNEWLINE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %159

12:                                               ; preds = %1
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TNUMBER, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = call i32 @read_linemarker(%struct.TYPE_14__* %19)
  br label %159

21:                                               ; preds = %12
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TIDENT, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %154

28:                                               ; preds = %21
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = call i32 (...) @read_define()
  br label %153

37:                                               ; preds = %28
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %43 = call i32 @read_elif(%struct.TYPE_14__* %42)
  br label %152

44:                                               ; preds = %37
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %50 = call i32 @read_else(%struct.TYPE_14__* %49)
  br label %151

51:                                               ; preds = %44
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %57 = call i32 @read_endif(%struct.TYPE_14__* %56)
  br label %150

58:                                               ; preds = %51
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %64 = call i32 @read_error(%struct.TYPE_14__* %63)
  br label %149

65:                                               ; preds = %58
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = call i32 (...) @read_if()
  br label %148

71:                                               ; preds = %65
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = call i32 (...) @read_ifdef()
  br label %147

77:                                               ; preds = %71
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = call i32 (...) @read_ifndef()
  br label %146

83:                                               ; preds = %77
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @read_include(%struct.TYPE_14__* %88, i32 %91, i32 1)
  br label %145

93:                                               ; preds = %83
  %94 = load i8*, i8** %4, align 8
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @read_include(%struct.TYPE_14__* %98, i32 %101, i32 0)
  br label %144

103:                                              ; preds = %93
  %104 = load i8*, i8** %4, align 8
  %105 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %103
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @read_include_next(%struct.TYPE_14__* %108, i32 %111)
  br label %143

113:                                              ; preds = %103
  %114 = load i8*, i8** %4, align 8
  %115 = call i32 @strcmp(i8* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  %118 = call i32 (...) @read_line()
  br label %142

119:                                              ; preds = %113
  %120 = load i8*, i8** %4, align 8
  %121 = call i32 @strcmp(i8* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %119
  %124 = call i32 (...) @read_pragma()
  br label %141

125:                                              ; preds = %119
  %126 = load i8*, i8** %4, align 8
  %127 = call i32 @strcmp(i8* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %125
  %130 = call i32 (...) @read_undef()
  br label %140

131:                                              ; preds = %125
  %132 = load i8*, i8** %4, align 8
  %133 = call i32 @strcmp(i8* %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %137 = call i32 @read_warning(%struct.TYPE_14__* %136)
  br label %139

138:                                              ; preds = %131
  br label %154

139:                                              ; preds = %135
  br label %140

140:                                              ; preds = %139, %129
  br label %141

141:                                              ; preds = %140, %123
  br label %142

142:                                              ; preds = %141, %117
  br label %143

143:                                              ; preds = %142, %107
  br label %144

144:                                              ; preds = %143, %97
  br label %145

145:                                              ; preds = %144, %87
  br label %146

146:                                              ; preds = %145, %81
  br label %147

147:                                              ; preds = %146, %75
  br label %148

148:                                              ; preds = %147, %69
  br label %149

149:                                              ; preds = %148, %62
  br label %150

150:                                              ; preds = %149, %55
  br label %151

151:                                              ; preds = %150, %48
  br label %152

152:                                              ; preds = %151, %41
  br label %153

153:                                              ; preds = %152, %35
  br label %159

154:                                              ; preds = %138, %27
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %157 = call i32 @tok2s(%struct.TYPE_14__* %156)
  %158 = call i32 @errort(%struct.TYPE_14__* %155, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %154, %153, %18, %11
  ret void
}

declare dso_local %struct.TYPE_14__* @lex(...) #1

declare dso_local i32 @read_linemarker(%struct.TYPE_14__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @read_define(...) #1

declare dso_local i32 @read_elif(%struct.TYPE_14__*) #1

declare dso_local i32 @read_else(%struct.TYPE_14__*) #1

declare dso_local i32 @read_endif(%struct.TYPE_14__*) #1

declare dso_local i32 @read_error(%struct.TYPE_14__*) #1

declare dso_local i32 @read_if(...) #1

declare dso_local i32 @read_ifdef(...) #1

declare dso_local i32 @read_ifndef(...) #1

declare dso_local i32 @read_include(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @read_include_next(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @read_line(...) #1

declare dso_local i32 @read_pragma(...) #1

declare dso_local i32 @read_undef(...) #1

declare dso_local i32 @read_warning(%struct.TYPE_14__*) #1

declare dso_local i32 @errort(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @tok2s(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
