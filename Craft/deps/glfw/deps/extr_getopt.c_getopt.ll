; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/deps/extr_getopt.c_getopt.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/deps/extr_getopt.c_getopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optarg = common dso_local global i8* null, align 8
@opterr = common dso_local global i64 0, align 8
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@optcursor = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getopt(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 -1, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** @optarg, align 8
  store i64 0, i64* @opterr, align 8
  store i32 0, i32* @optopt, align 4
  %10 = load i32, i32* @optind, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %135

14:                                               ; preds = %3
  %15 = load i8**, i8*** %6, align 8
  %16 = load i32, i32* @optind, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %135

22:                                               ; preds = %14
  %23 = load i8**, i8*** %6, align 8
  %24 = load i32, i32* @optind, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 45
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %135

32:                                               ; preds = %22
  %33 = load i8**, i8*** %6, align 8
  %34 = load i32, i32* @optind, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %135

41:                                               ; preds = %32
  %42 = load i8**, i8*** %6, align 8
  %43 = load i32, i32* @optind, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @optind, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @optind, align 4
  br label %135

52:                                               ; preds = %41
  %53 = load i8*, i8** @optcursor, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = load i8*, i8** @optcursor, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55, %52
  %61 = load i8**, i8*** %6, align 8
  %62 = load i32, i32* @optind, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  store i8* %66, i8** @optcursor, align 8
  br label %67

67:                                               ; preds = %60, %55
  %68 = load i8*, i8** @optcursor, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* @optopt, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i8* @strchr(i8* %72, i32 %73)
  store i8* %74, i8** %9, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %120

77:                                               ; preds = %67
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 58
  br i1 %82, label %83, label %119

83:                                               ; preds = %77
  %84 = load i8*, i8** @optcursor, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** @optcursor, align 8
  store i8* %85, i8** @optarg, align 8
  %86 = load i8*, i8** @optarg, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %118

90:                                               ; preds = %83
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 58
  br i1 %95, label %96, label %116

96:                                               ; preds = %90
  %97 = load i32, i32* @optind, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* @optind, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load i8**, i8*** %6, align 8
  %103 = load i32, i32* @optind, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  store i8* %106, i8** @optarg, align 8
  br label %115

107:                                              ; preds = %96
  store i8* null, i8** @optarg, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 58
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 58, i32 63
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %107, %101
  br label %117

116:                                              ; preds = %90
  store i8* null, i8** @optarg, align 8
  br label %117

117:                                              ; preds = %116, %115
  br label %118

118:                                              ; preds = %117, %83
  store i8* null, i8** @optcursor, align 8
  br label %119

119:                                              ; preds = %118, %77
  br label %121

120:                                              ; preds = %67
  store i32 63, i32* %8, align 4
  br label %121

121:                                              ; preds = %120, %119
  %122 = load i8*, i8** @optcursor, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %130, label %124

124:                                              ; preds = %121
  %125 = load i8*, i8** @optcursor, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** @optcursor, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %124, %121
  %131 = load i32, i32* @optind, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* @optind, align 4
  br label %133

133:                                              ; preds = %130, %124
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %4, align 4
  br label %136

135:                                              ; preds = %49, %40, %31, %21, %13
  store i8* null, i8** @optcursor, align 8
  store i32 -1, i32* %4, align 4
  br label %136

136:                                              ; preds = %135, %133
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
