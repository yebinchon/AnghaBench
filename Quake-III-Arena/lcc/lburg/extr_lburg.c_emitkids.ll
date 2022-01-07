; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/lburg/extr_lburg.c_emitkids.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/lburg/extr_lburg.c_emitkids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_3__*, i32, %struct.TYPE_3__* }

@.str = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.1 = private unnamed_addr constant [190 x i8] c"static void %Pkids(NODEPTR_TYPE p, int eruleno, NODEPTR_TYPE kids[]) {\0A%1if (!p)\0A%2fatal(\22%Pkids\22, \22Null tree\\n\22, 0);\0A%1if (!kids)\0A%2fatal(\22%Pkids\22, \22Null kids\\n\22, 0);\0A%1switch (eruleno) {\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%1case %d: /* %R */\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%s%2break;\0A\00", align 1
@.str.4 = private unnamed_addr constant [72 x i8] c"%1default:\0A%2fatal(\22%Pkids\22, \22Bad rule number %%d\\n\22, eruleno);\0A%1}\0A}\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @emitkids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emitkids(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.TYPE_3__**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, 1
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 8
  %17 = trunc i64 %16 to i32
  %18 = call i8* @alloc(i32 %17)
  %19 = bitcast i8* %18 to %struct.TYPE_3__**
  store %struct.TYPE_3__** %19, %struct.TYPE_3__*** %7, align 8
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = call i8* @alloc(i32 %25)
  %27 = bitcast i8* %26 to i8**
  store i8** %27, i8*** %8, align 8
  store i32 0, i32* %5, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %6, align 8
  br label %29

29:                                               ; preds = %92, %2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = icmp ne %struct.TYPE_3__* %30, null
  br i1 %31, label %32, label %96

32:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  store i8* %33, i8** %11, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = call i64* @computekids(i32 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %37, i32* %9)
  store i64 0, i64* %38, align 8
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %58, %32
  %40 = load i8**, i8*** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load i8**, i8*** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %53 = call i64 @strcmp(i8* %51, i8* %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %46, %39
  %56 = phi i1 [ false, %39 ], [ %54, %46 ]
  br i1 %56, label %57, label %61

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %39

61:                                               ; preds = %55
  %62 = load i8**, i8*** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %61
  %69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %70 = call i32 @strlen(i8* %69)
  %71 = add nsw i32 %70, 1
  %72 = call i8* @alloc(i32 %71)
  %73 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %74 = call i8* @strcpy(i8* %72, i8* %73)
  %75 = load i8**, i8*** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  store i8* %74, i8** %78, align 8
  br label %79

79:                                               ; preds = %68, %61
  %80 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %80, i64 %82
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store %struct.TYPE_3__* %84, %struct.TYPE_3__** %86, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %88 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %88, i64 %90
  store %struct.TYPE_3__* %87, %struct.TYPE_3__** %91, align 8
  br label %92

92:                                               ; preds = %79
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  store %struct.TYPE_3__* %95, %struct.TYPE_3__** %6, align 8
  br label %29

96:                                               ; preds = %29
  %97 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([190 x i8], [190 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %126, %96
  %99 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %99, i64 %101
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  store %struct.TYPE_3__* %103, %struct.TYPE_3__** %6, align 8
  %104 = icmp ne %struct.TYPE_3__* %103, null
  br i1 %104, label %105, label %129

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %115, %105
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %108 = icmp ne %struct.TYPE_3__* %107, null
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %114 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %112, %struct.TYPE_3__* %113)
  br label %115

115:                                              ; preds = %109
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  store %struct.TYPE_3__* %118, %struct.TYPE_3__** %6, align 8
  br label %106

119:                                              ; preds = %106
  %120 = load i8**, i8*** %8, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %124)
  br label %126

126:                                              ; preds = %119
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %5, align 4
  br label %98

129:                                              ; preds = %98
  %130 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i8* @alloc(i32) #1

declare dso_local i64* @computekids(i32, i8*, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @print(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
