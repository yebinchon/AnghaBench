; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_unzip.c_unzlocal_SearchCentralDir.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_unzip.c_unzlocal_SearchCentralDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_END = common dso_local global i32 0, align 4
@BUFREADCOMMENT = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzlocal_SearchCentralDir(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 65535, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @SEEK_END, align 4
  %14 = call i64 @fseek(i32* %12, i32 0, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %138

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @ftell(i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %23, %17
  %26 = load i32, i32* @BUFREADCOMMENT, align 4
  %27 = add nsw i32 %26, 4
  %28 = call i64 @ALLOC(i32 %27)
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %138

33:                                               ; preds = %25
  store i32 4, i32* %6, align 4
  br label %34

34:                                               ; preds = %133, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %134

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @BUFREADCOMMENT, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* %7, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %6, align 4
  br label %50

46:                                               ; preds = %38
  %47 = load i32, i32* @BUFREADCOMMENT, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %46, %44
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* @BUFREADCOMMENT, align 4
  %55 = add nsw i32 %54, 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %56, %57
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load i32, i32* @BUFREADCOMMENT, align 4
  %62 = add nsw i32 %61, 4
  br label %67

63:                                               ; preds = %50
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 %64, %65
  br label %67

67:                                               ; preds = %63, %60
  %68 = phi i32 [ %62, %60 ], [ %66, %63 ]
  store i32 %68, i32* %9, align 4
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @SEEK_SET, align 4
  %72 = call i64 @fseek(i32* %69, i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %134

75:                                               ; preds = %67
  %76 = load i8*, i8** %4, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @fread(i8* %76, i32 %77, i32 1, i32* %78)
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %134

82:                                               ; preds = %75
  %83 = load i32, i32* %9, align 4
  %84 = sub nsw i32 %83, 3
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %128, %82
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %11, align 4
  %88 = icmp sgt i32 %86, 0
  br i1 %88, label %89, label %129

89:                                               ; preds = %85
  %90 = load i8*, i8** %4, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %95, 80
  br i1 %96, label %97, label %128

97:                                               ; preds = %89
  %98 = load i8*, i8** %4, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, 75
  br i1 %105, label %106, label %128

106:                                              ; preds = %97
  %107 = load i8*, i8** %4, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 5
  br i1 %114, label %115, label %128

115:                                              ; preds = %106
  %116 = load i8*, i8** %4, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = getelementptr inbounds i8, i8* %119, i64 3
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp eq i32 %122, 6
  br i1 %123, label %124, label %128

124:                                              ; preds = %115
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %125, %126
  store i32 %127, i32* %8, align 4
  br label %129

128:                                              ; preds = %115, %106, %97, %89
  br label %85

129:                                              ; preds = %124, %85
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %134

133:                                              ; preds = %129
  br label %34

134:                                              ; preds = %132, %81, %74, %34
  %135 = load i8*, i8** %4, align 8
  %136 = call i32 @TRYFREE(i8* %135)
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %134, %32, %16
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i64 @ALLOC(i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @TRYFREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
