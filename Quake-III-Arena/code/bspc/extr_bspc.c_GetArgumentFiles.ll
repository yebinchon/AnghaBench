; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_bspc.c_GetArgumentFiles.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_bspc.c_GetArgumentFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @GetArgumentFiles(i32 %0, i8** %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [1024 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %10, align 8
  br label %14

14:                                               ; preds = %105, %4
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load i8**, i8*** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %21, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 45
  br label %32

32:                                               ; preds = %20, %14
  %33 = phi i1 [ false, %14 ], [ %31, %20 ]
  br i1 %33, label %34, label %109

34:                                               ; preds = %32
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %36 = load i8**, i8*** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %36, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strcpy(i8* %35, i8* %42)
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %45 = call i32 @strlen(i8* %44)
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %62, %34
  %48 = load i32, i32* %12, align 4
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %50 = call i32 @strlen(i8* %49)
  %51 = sub nsw i32 %50, 4
  %52 = icmp sge i32 %48, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 46
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %65

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %12, align 4
  br label %47

65:                                               ; preds = %60, %47
  %66 = load i32, i32* %12, align 4
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %68 = call i32 @strlen(i8* %67)
  %69 = sub nsw i32 %68, 4
  %70 = icmp sge i32 %66, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 %74
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @strcpy(i8* %75, i8* %76)
  br label %78

78:                                               ; preds = %71, %65
  %79 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %80 = call %struct.TYPE_4__* @FindQuakeFiles(i8* %79)
  store %struct.TYPE_4__* %80, %struct.TYPE_4__** %11, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %82 = icmp ne %struct.TYPE_4__* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  br label %105

84:                                               ; preds = %78
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %86 = icmp ne %struct.TYPE_4__* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store %struct.TYPE_4__* %88, %struct.TYPE_4__** %90, align 8
  br label %93

91:                                               ; preds = %84
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %92, %struct.TYPE_4__** %9, align 8
  br label %93

93:                                               ; preds = %91, %87
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %94, %struct.TYPE_4__** %10, align 8
  br label %95

95:                                               ; preds = %100, %93
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = icmp ne %struct.TYPE_4__* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  store %struct.TYPE_4__* %103, %struct.TYPE_4__** %10, align 8
  br label %95

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %83
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  br label %14

109:                                              ; preds = %32
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  ret %struct.TYPE_4__* %110
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_4__* @FindQuakeFiles(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
