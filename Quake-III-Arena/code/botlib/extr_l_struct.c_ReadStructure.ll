; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_l_struct.c_ReadStructure.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_l_struct.c_ReadStructure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_11__* }

@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"unknown structure field %s\00", align 1
@FT_ARRAY = common dso_local global i32 0, align 4
@FT_TYPE = common dso_local global i32 0, align 4
@MAX_STRINGFIELD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"BUG: no sub structure defined\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"expected a comma, found %s\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReadStructure(i32* %0, %struct.TYPE_11__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @PC_ExpectTokenString(i32* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %197

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %194
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @PC_ExpectAnyToken(i32* %18, %struct.TYPE_10__* %8)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @qfalse, align 4
  store i32 %22, i32* %4, align 4
  br label %197

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @strcmp(i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %195

29:                                               ; preds = %23
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.TYPE_12__* @FindField(i32 %32, i32 %34)
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %9, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %37 = icmp ne %struct.TYPE_12__* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %29
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32*, i8*, ...) @SourceError(i32* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @qfalse, align 4
  store i32 %43, i32* %4, align 4
  br label %197

44:                                               ; preds = %29
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @FT_ARRAY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %11, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @PC_ExpectTokenString(i32* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @qfalse, align 4
  store i32 %59, i32* %4, align 4
  br label %197

60:                                               ; preds = %51
  br label %62

61:                                               ; preds = %44
  store i32 1, i32* %11, align 4
  br label %62

62:                                               ; preds = %61, %60
  %63 = load i8*, i8** %7, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  store i8* %68, i8** %10, align 8
  br label %69

69:                                               ; preds = %193, %62
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %11, align 4
  %72 = icmp sgt i32 %70, 0
  br i1 %72, label %73, label %194

73:                                               ; preds = %69
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @FT_ARRAY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i32*, i32** %5, align 8
  %82 = call i64 @PC_CheckTokenString(i32* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %194

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85, %73
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @FT_TYPE, align 4
  %91 = and i32 %89, %90
  switch i32 %91, label %162 [
    i32 132, label %92
    i32 130, label %103
    i32 131, label %114
    i32 129, label %125
    i32 128, label %138
  ]

92:                                               ; preds = %86
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @ReadChar(i32* %93, %struct.TYPE_12__* %94, i8* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* @qfalse, align 4
  store i32 %99, i32* %4, align 4
  br label %197

100:                                              ; preds = %92
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  store i8* %102, i8** %10, align 8
  br label %162

103:                                              ; preds = %86
  %104 = load i32*, i32** %5, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = call i32 @ReadNumber(i32* %104, %struct.TYPE_12__* %105, i8* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* @qfalse, align 4
  store i32 %110, i32* %4, align 4
  br label %197

111:                                              ; preds = %103
  %112 = load i8*, i8** %10, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 4
  store i8* %113, i8** %10, align 8
  br label %162

114:                                              ; preds = %86
  %115 = load i32*, i32** %5, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = call i32 @ReadNumber(i32* %115, %struct.TYPE_12__* %116, i8* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %114
  %121 = load i32, i32* @qfalse, align 4
  store i32 %121, i32* %4, align 4
  br label %197

122:                                              ; preds = %114
  %123 = load i8*, i8** %10, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 4
  store i8* %124, i8** %10, align 8
  br label %162

125:                                              ; preds = %86
  %126 = load i32*, i32** %5, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = call i32 @ReadString(i32* %126, %struct.TYPE_12__* %127, i8* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %125
  %132 = load i32, i32* @qfalse, align 4
  store i32 %132, i32* %4, align 4
  br label %197

133:                                              ; preds = %125
  %134 = load i8*, i8** %10, align 8
  %135 = load i32, i32* @MAX_STRINGFIELD, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  store i8* %137, i8** %10, align 8
  br label %162

138:                                              ; preds = %86
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = icmp ne %struct.TYPE_11__* %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %138
  %144 = load i32*, i32** %5, align 8
  %145 = call i32 (i32*, i8*, ...) @SourceError(i32* %144, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %146 = load i32, i32* @qfalse, align 4
  store i32 %146, i32* %4, align 4
  br label %197

147:                                              ; preds = %138
  %148 = load i32*, i32** %5, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = load i8*, i8** %10, align 8
  %153 = call i32 @ReadStructure(i32* %148, %struct.TYPE_11__* %151, i8* %152)
  %154 = load i8*, i8** %10, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 3
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %154, i64 %160
  store i8* %161, i8** %10, align 8
  br label %162

162:                                              ; preds = %86, %147, %133, %122, %111, %100
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @FT_ARRAY, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %193

169:                                              ; preds = %162
  %170 = load i32*, i32** %5, align 8
  %171 = call i32 @PC_ExpectAnyToken(i32* %170, %struct.TYPE_10__* %8)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %169
  %174 = load i32, i32* @qfalse, align 4
  store i32 %174, i32* %4, align 4
  br label %197

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @strcmp(i32 %177, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %175
  br label %194

181:                                              ; preds = %175
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i64 @strcmp(i32 %183, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %181
  %187 = load i32*, i32** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 (i32*, i8*, ...) @SourceError(i32* %187, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* @qfalse, align 4
  store i32 %191, i32* %4, align 4
  br label %197

192:                                              ; preds = %181
  br label %193

193:                                              ; preds = %192, %162
  br label %69

194:                                              ; preds = %180, %84, %69
  br label %17

195:                                              ; preds = %28
  %196 = load i32, i32* @qtrue, align 4
  store i32 %196, i32* %4, align 4
  br label %197

197:                                              ; preds = %195, %186, %173, %143, %131, %120, %109, %98, %58, %38, %21, %15
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @PC_ExpectTokenString(i32*, i8*) #1

declare dso_local i32 @PC_ExpectAnyToken(i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_12__* @FindField(i32, i32) #1

declare dso_local i32 @SourceError(i32*, i8*, ...) #1

declare dso_local i64 @PC_CheckTokenString(i32*, i8*) #1

declare dso_local i32 @ReadChar(i32*, %struct.TYPE_12__*, i8*) #1

declare dso_local i32 @ReadNumber(i32*, %struct.TYPE_12__*, i8*) #1

declare dso_local i32 @ReadString(i32*, %struct.TYPE_12__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
