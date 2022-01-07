; ModuleID = '/home/carl/AnghaBench/FFmpeg/compat/extr_getopt.c_getopt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/compat/extr_getopt.c_getopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getopt.sp = internal global i32 1, align 4
@optind = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@optopt = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c": illegal option -- %c\0A\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c": option requires an argument -- %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @getopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getopt(i32 %0, i8** %1, i8* %2) #0 {
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
  br i1 %11, label %12, label %52

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
  br i1 %35, label %36, label %38

36:                                               ; preds = %26, %16, %12
  %37 = load i32, i32* @EOF, align 4
  store i32 %37, i32* %4, align 4
  br label %157

38:                                               ; preds = %26
  %39 = load i8**, i8*** %6, align 8
  %40 = load i32, i32* @optind, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @optind, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @optind, align 4
  %49 = load i32, i32* @EOF, align 4
  store i32 %49, i32* %4, align 4
  br label %157

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51, %3
  %53 = load i8**, i8*** %6, align 8
  %54 = load i32, i32* @optind, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* @getopt.sp, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  store i32 %62, i32* %8, align 4
  store i32 %62, i32* @optopt, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 58
  br i1 %64, label %70, label %65

65:                                               ; preds = %52
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i8* @strchr(i8* %66, i32 %67)
  store i8* %68, i8** %9, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %90, label %70

70:                                               ; preds = %65, %52
  %71 = load i32, i32* @stderr, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @fprintf(i32 %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i8**, i8*** %6, align 8
  %75 = load i32, i32* @optind, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* @getopt.sp, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @getopt.sp, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %70
  %87 = load i32, i32* @optind, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* @optind, align 4
  store i32 1, i32* @getopt.sp, align 4
  br label %89

89:                                               ; preds = %86, %70
  store i32 63, i32* %4, align 4
  br label %157

90:                                               ; preds = %65
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %9, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 58
  br i1 %95, label %96, label %138

96:                                               ; preds = %90
  %97 = load i8**, i8*** %6, align 8
  %98 = load i32, i32* @optind, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = load i32, i32* @getopt.sp, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %96
  %110 = load i8**, i8*** %6, align 8
  %111 = load i32, i32* @optind, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* @optind, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8*, i8** %110, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* @getopt.sp, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  store i8* %119, i8** @optarg, align 8
  br label %137

120:                                              ; preds = %96
  %121 = load i32, i32* @optind, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @optind, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load i32, i32* @stderr, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @fprintf(i32 %126, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  store i32 1, i32* @getopt.sp, align 4
  store i32 63, i32* %4, align 4
  br label %157

129:                                              ; preds = %120
  %130 = load i8**, i8*** %6, align 8
  %131 = load i32, i32* @optind, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* @optind, align 4
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i8*, i8** %130, i64 %133
  %135 = load i8*, i8** %134, align 8
  store i8* %135, i8** @optarg, align 8
  br label %136

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136, %109
  store i32 1, i32* @getopt.sp, align 4
  br label %155

138:                                              ; preds = %90
  %139 = load i8**, i8*** %6, align 8
  %140 = load i32, i32* @optind, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = load i32, i32* @getopt.sp, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* @getopt.sp, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %143, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %138
  store i32 1, i32* @getopt.sp, align 4
  %152 = load i32, i32* @optind, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* @optind, align 4
  br label %154

154:                                              ; preds = %151, %138
  store i8* null, i8** @optarg, align 8
  br label %155

155:                                              ; preds = %154, %137
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %155, %125, %89, %46, %36
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
