; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_analysisLoader.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_analysisLoader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32*, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"unordered\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**, i8**)* @analysisLoader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analysisLoader(i8* %0, i32 %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 3
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i8**, i8*** %9, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @UNUSED_PARAMETER2(i8** %24, i32 %25)
  %27 = load i8**, i8*** %8, align 8
  %28 = icmp eq i8** %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %4
  %30 = load i8**, i8*** %8, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i8**, i8*** %8, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 2
  %37 = load i8*, i8** %36, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %29, %4
  store i32 0, i32* %5, align 4
  br label %153

40:                                               ; preds = %34
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8**, i8*** %8, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.TYPE_7__* @sqlite3FindTable(i32 %43, i8* %46, i32 %49)
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %12, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %52 = icmp eq %struct.TYPE_7__* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %153

54:                                               ; preds = %40
  %55 = load i8**, i8*** %8, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i8**, i8*** %8, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.TYPE_8__* @sqlite3FindIndex(i32 %62, i8* %65, i32 %68)
  store %struct.TYPE_8__* %69, %struct.TYPE_8__** %11, align 8
  br label %71

70:                                               ; preds = %54
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %11, align 8
  br label %71

71:                                               ; preds = %70, %59
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %73 = icmp ne %struct.TYPE_8__* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  br label %79

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78, %74
  %80 = phi i32 [ %77, %74 ], [ 0, %78 ]
  store i32 %80, i32* %15, align 4
  %81 = load i8**, i8*** %8, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 2
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %17, align 8
  store i32 0, i32* %13, align 4
  br label %84

84:                                               ; preds = %149, %79
  %85 = load i8*, i8** %17, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp sle i32 %90, %91
  br label %93

93:                                               ; preds = %89, %84
  %94 = phi i1 [ false, %84 ], [ %92, %89 ]
  br i1 %94, label %95, label %152

95:                                               ; preds = %93
  store i32 0, i32* %16, align 4
  br label %96

96:                                               ; preds = %107, %95
  %97 = load i8*, i8** %17, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  store i32 %100, i32* %14, align 4
  %101 = icmp sge i32 %100, 48
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* %14, align 4
  %104 = icmp sle i32 %103, 57
  br label %105

105:                                              ; preds = %102, %96
  %106 = phi i1 [ false, %96 ], [ %104, %102 ]
  br i1 %106, label %107, label %115

107:                                              ; preds = %105
  %108 = load i32, i32* %16, align 4
  %109 = mul nsw i32 %108, 10
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %109, %110
  %112 = sub nsw i32 %111, 48
  store i32 %112, i32* %16, align 4
  %113 = load i8*, i8** %17, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %17, align 8
  br label %96

115:                                              ; preds = %105
  %116 = load i32, i32* %13, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i32, i32* %16, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %118, %115
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %124 = icmp eq %struct.TYPE_8__* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  br label %152

126:                                              ; preds = %122
  %127 = load i32, i32* %16, align 4
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %127, i32* %133, align 4
  %134 = load i8*, i8** %17, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 32
  br i1 %137, label %138, label %141

138:                                              ; preds = %126
  %139 = load i8*, i8** %17, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %17, align 8
  br label %141

141:                                              ; preds = %138, %126
  %142 = load i8*, i8** %17, align 8
  %143 = call i64 @strcmp(i8* %142, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  store i32 1, i32* %147, align 8
  br label %152

148:                                              ; preds = %141
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %13, align 4
  br label %84

152:                                              ; preds = %145, %125, %93
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %152, %53, %39
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @UNUSED_PARAMETER2(i8**, i32) #1

declare dso_local %struct.TYPE_7__* @sqlite3FindTable(i32, i8*, i32) #1

declare dso_local %struct.TYPE_8__* @sqlite3FindIndex(i32, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
