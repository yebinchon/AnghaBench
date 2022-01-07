; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_l_precomp.c_PC_ExpectTokenType.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_l_precomp.c_PC_ExpectTokenType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@MAX_TOKEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"couldn't read expected token\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TT_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@TT_LITERAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@TT_NUMBER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@TT_NAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@TT_PUNCTUATION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"punctuation\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"expected a %s, found %s\00", align 1
@TT_DECIMAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"decimal\00", align 1
@TT_HEX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@TT_OCTAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"octal\00", align 1
@TT_BINARY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@TT_LONG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c" long\00", align 1
@TT_UNSIGNED = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c" unsigned\00", align 1
@TT_FLOAT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c" float\00", align 1
@TT_INTEGER = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c" integer\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"expected %s, found %s\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"found %s\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PC_ExpectTokenType(i32* %0, i32 %1, i32 %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  %13 = load i32, i32* @MAX_TOKEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %19 = call i32 @PC_ReadToken(i32* %17, %struct.TYPE_4__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 (i32*, i8*, ...) @SourceError(i32* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @qfalse, align 4
  store i32 %24, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %170

25:                                               ; preds = %4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %69

31:                                               ; preds = %25
  %32 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @TT_STRING, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @TT_LITERAL, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @TT_NUMBER, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @TT_NAME, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @TT_PUNCTUATION, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %56
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32*, i8*, ...) @SourceError(i32* %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %16, i32 %66)
  %68 = load i32, i32* @qfalse, align 4
  store i32 %68, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %170

69:                                               ; preds = %25
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @TT_NUMBER, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %147

75:                                               ; preds = %69
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %146

83:                                               ; preds = %75
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @TT_DECIMAL, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %83
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @TT_HEX, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %90
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @TT_OCTAL, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %97
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @TT_BINARY, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %104
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @TT_LONG, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = call i32 @strcat(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %111
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @TT_UNSIGNED, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = call i32 @strcat(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %118
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @TT_FLOAT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = call i32 @strcat(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %125
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @TT_INTEGER, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = call i32 @strcat(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %132
  %140 = load i32*, i32** %6, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i32*, i8*, ...) @SourceError(i32* %140, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* %16, i32 %143)
  %145 = load i32, i32* @qfalse, align 4
  store i32 %145, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %170

146:                                              ; preds = %75
  br label %168

147:                                              ; preds = %69
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @TT_PUNCTUATION, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %167

153:                                              ; preds = %147
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %153
  %160 = load i32*, i32** %6, align 8
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i32*, i8*, ...) @SourceError(i32* %160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* @qfalse, align 4
  store i32 %165, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %170

166:                                              ; preds = %153
  br label %167

167:                                              ; preds = %166, %147
  br label %168

168:                                              ; preds = %167, %146
  %169 = load i32, i32* @qtrue, align 4
  store i32 %169, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %170

170:                                              ; preds = %168, %159, %139, %62, %21
  %171 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %171)
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PC_ReadToken(i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @SourceError(i32*, i8*, ...) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
