; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_WebUI.c_WuAnalyzeTarget.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_WebUI.c_WuAnalyzeTarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8** }
%struct.TYPE_7__ = type { i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i64)* @WuAnalyzeTarget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @WuAnalyzeTarget(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %3
  store i32* null, i32** %4, align 8
  br label %150

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @StartWith(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 7
  store i8* %28, i8** %5, align 8
  br label %29

29:                                               ; preds = %41, %26
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 47
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ false, %29 ], [ %38, %34 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %5, align 8
  br label %29

44:                                               ; preds = %39
  %45 = load i8*, i8** %5, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32* null, i32** %4, align 8
  br label %150

50:                                               ; preds = %44
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %5, align 8
  br label %53

53:                                               ; preds = %50, %22
  %54 = load i8*, i8** %5, align 8
  store i8* %54, i8** %8, align 8
  br label %55

55:                                               ; preds = %67, %53
  %56 = load i8*, i8** %5, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 63
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i8*, i8** %5, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br label %65

65:                                               ; preds = %60, %55
  %66 = phi i1 [ false, %55 ], [ %64, %60 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %5, align 8
  br label %55

70:                                               ; preds = %65
  %71 = load i8*, i8** %5, align 8
  %72 = load i8, i8* %71, align 1
  store i8 %72, i8* %9, align 1
  %73 = load i8*, i8** %5, align 8
  store i8 0, i8* %73, align 1
  %74 = load i8*, i8** %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @StrCpy(i8* %74, i64 %75, i8* %76)
  %78 = load i8, i8* %9, align 1
  %79 = load i8*, i8** %5, align 8
  store i8 %78, i8* %79, align 1
  %80 = load i8*, i8** %5, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 63
  br i1 %83, label %84, label %149

84:                                               ; preds = %70
  %85 = call i32* (...) @NewStrMap()
  store i32* %85, i32** %10, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %5, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = call %struct.TYPE_6__* @ParseToken(i8* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_6__* %89, %struct.TYPE_6__** %12, align 8
  store i64 0, i64* %11, align 8
  br label %90

90:                                               ; preds = %142, %84
  %91 = load i64, i64* %11, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ult i64 %91, %94
  br i1 %95, label %96, label %145

96:                                               ; preds = %90
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i8**, i8*** %98, align 8
  %100 = load i64, i64* %11, align 8
  %101 = getelementptr inbounds i8*, i8** %99, i64 %100
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %13, align 8
  %103 = load i8*, i8** %13, align 8
  store i8* %103, i8** %14, align 8
  %104 = call i64 @Malloc(i32 16)
  %105 = inttoptr i64 %104 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %105, %struct.TYPE_7__** %15, align 8
  br label %106

106:                                              ; preds = %118, %96
  %107 = load i8*, i8** %14, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 61
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i8*, i8** %14, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 0
  br label %116

116:                                              ; preds = %111, %106
  %117 = phi i1 [ false, %106 ], [ %115, %111 ]
  br i1 %117, label %118, label %121

118:                                              ; preds = %116
  %119 = load i8*, i8** %14, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %14, align 8
  br label %106

121:                                              ; preds = %116
  %122 = load i8*, i8** %14, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 61
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i8*, i8** %14, align 8
  store i8 0, i8* %127, align 1
  %128 = load i8*, i8** %14, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %14, align 8
  br label %130

130:                                              ; preds = %126, %121
  %131 = load i8*, i8** %13, align 8
  %132 = call i8* @CopyStr(i8* %131)
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  %135 = load i8*, i8** %14, align 8
  %136 = call i8* @CopyStr(i8* %135)
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  %139 = load i32*, i32** %10, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %141 = call i32 @Add(i32* %139, %struct.TYPE_7__* %140)
  br label %142

142:                                              ; preds = %130
  %143 = load i64, i64* %11, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %11, align 8
  br label %90

145:                                              ; preds = %90
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %147 = call i32 @FreeToken(%struct.TYPE_6__* %146)
  %148 = load i32*, i32** %10, align 8
  store i32* %148, i32** %4, align 8
  br label %150

149:                                              ; preds = %70
  store i32* null, i32** %4, align 8
  br label %150

150:                                              ; preds = %149, %145, %49, %21
  %151 = load i32*, i32** %4, align 8
  ret i32* %151
}

declare dso_local i64 @StartWith(i8*, i8*) #1

declare dso_local i32 @StrCpy(i8*, i64, i8*) #1

declare dso_local i32* @NewStrMap(...) #1

declare dso_local %struct.TYPE_6__* @ParseToken(i8*, i8*) #1

declare dso_local i64 @Malloc(i32) #1

declare dso_local i8* @CopyStr(i8*) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @FreeToken(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
