; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/cpp/extr_getopt.c_getopt.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/cpp/extr_getopt.c_getopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getopt.sp = internal global i32 1, align 4
@optind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@optopt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c": illegal option -- \00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c": option requires an argument -- \00", align 1

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
  %10 = load i32, i32* @getopt.sp, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %50

12:                                               ; preds = %3
  %13 = load i32, i32* @optind, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %36, label %16

16:                                               ; preds = %12
  %17 = load i8**, i8*** %6, align 8
  %18 = load i32, i32* @optind, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 45
  br i1 %25, label %36, label %26

26:                                               ; preds = %16
  %27 = load i8**, i8*** %6, align 8
  %28 = load i32, i32* @optind, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26, %16, %12
  store i32 -1, i32* %4, align 4
  br label %153

37:                                               ; preds = %26
  %38 = load i8**, i8*** %6, align 8
  %39 = load i32, i32* @optind, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @optind, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @optind, align 4
  store i32 -1, i32* %4, align 4
  br label %153

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49, %3
  %51 = load i8**, i8*** %6, align 8
  %52 = load i32, i32* @optind, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* @getopt.sp, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  store i32 %60, i32* %8, align 4
  store i32 %60, i32* @optopt, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 58
  br i1 %62, label %68, label %63

63:                                               ; preds = %50
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i8* @strchr(i8* %64, i32 %65)
  store i8* %66, i8** %9, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %87

68:                                               ; preds = %63, %50
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i8**, i8*** %6, align 8
  %72 = load i32, i32* @optind, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* @getopt.sp, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* @getopt.sp, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %68
  %84 = load i32, i32* @optind, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* @optind, align 4
  store i32 1, i32* @getopt.sp, align 4
  br label %86

86:                                               ; preds = %83, %68
  store i32 63, i32* %4, align 4
  br label %153

87:                                               ; preds = %63
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %9, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 58
  br i1 %92, label %93, label %134

93:                                               ; preds = %87
  %94 = load i8**, i8*** %6, align 8
  %95 = load i32, i32* @optind, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* @getopt.sp, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %93
  %107 = load i8**, i8*** %6, align 8
  %108 = load i32, i32* @optind, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* @optind, align 4
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i8*, i8** %107, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* @getopt.sp, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  store i8* %116, i8** @optarg, align 8
  br label %133

117:                                              ; preds = %93
  %118 = load i32, i32* @optind, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* @optind, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp sge i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  store i32 1, i32* @getopt.sp, align 4
  store i32 63, i32* %4, align 4
  br label %153

125:                                              ; preds = %117
  %126 = load i8**, i8*** %6, align 8
  %127 = load i32, i32* @optind, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* @optind, align 4
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i8*, i8** %126, i64 %129
  %131 = load i8*, i8** %130, align 8
  store i8* %131, i8** @optarg, align 8
  br label %132

132:                                              ; preds = %125
  br label %133

133:                                              ; preds = %132, %106
  store i32 1, i32* @getopt.sp, align 4
  br label %151

134:                                              ; preds = %87
  %135 = load i8**, i8*** %6, align 8
  %136 = load i32, i32* @optind, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* @getopt.sp, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* @getopt.sp, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %139, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %134
  store i32 1, i32* @getopt.sp, align 4
  %148 = load i32, i32* @optind, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* @optind, align 4
  br label %150

150:                                              ; preds = %147, %134
  store i8* null, i8** @optarg, align 8
  br label %151

151:                                              ; preds = %150, %133
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %151, %122, %86, %45, %36
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
