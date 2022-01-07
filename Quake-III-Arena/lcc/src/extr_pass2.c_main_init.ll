; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_pass2.c_main_init.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_pass2.c_main_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main_init.inited = internal global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-g\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"-g2\00", align 1
@glevel = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-w\00", align 1
@wflag = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@rcsid = common dso_local global i8* null, align 8
@verbose = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"-errout=\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"%s: can't write errors to `%s'\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@errlimit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main_init(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = load i32, i32* @main_init.inited, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %134

11:                                               ; preds = %2
  store i32 1, i32* @main_init.inited, align 4
  store i32 1, i32* %5, align 4
  br label %12

12:                                               ; preds = %131, %11
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %134

16:                                               ; preds = %12
  %17 = load i8**, i8*** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %16
  %25 = load i8**, i8*** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24, %16
  store i32 2, i32* @glevel, align 4
  br label %130

33:                                               ; preds = %24
  %34 = load i8**, i8*** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* @wflag, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @wflag, align 4
  br label %129

44:                                               ; preds = %33
  %45 = load i8**, i8*** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %44
  %53 = load i32, i32* @stderr, align 4
  %54 = load i8**, i8*** %4, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** @rcsid, align 8
  %58 = call i32 @fprint(i32 %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %56, i8* %57)
  %59 = load i32, i32* @verbose, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @verbose, align 4
  br label %128

61:                                               ; preds = %44
  %62 = load i8**, i8*** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strncmp(i8* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %106

69:                                               ; preds = %61
  %70 = load i8**, i8*** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 8
  %76 = call i32* @fopen(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %76, i32** %6, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %93

79:                                               ; preds = %69
  %80 = load i32, i32* @stderr, align 4
  %81 = load i8**, i8*** %4, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i8**, i8*** %4, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 8
  %90 = call i32 @fprint(i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %83, i8* %89)
  %91 = load i32, i32* @EXIT_FAILURE, align 4
  %92 = call i32 @exit(i32 %91) #3
  unreachable

93:                                               ; preds = %69
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @fclose(i32* %94)
  %96 = load i8**, i8*** %4, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 8
  %102 = load i32, i32* @stderr, align 4
  %103 = call i32* @freopen(i8* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %102)
  store i32* %103, i32** %6, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @assert(i32* %104)
  br label %127

106:                                              ; preds = %61
  %107 = load i8**, i8*** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @strncmp(i8* %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 2)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %106
  %115 = load i8**, i8*** %4, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 2
  %121 = call i32 @strtol(i8* %120, i32* null, i32 0)
  store i32 %121, i32* %7, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %114
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* @errlimit, align 4
  br label %125

125:                                              ; preds = %123, %114
  br label %126

126:                                              ; preds = %125, %106
  br label %127

127:                                              ; preds = %126, %93
  br label %128

128:                                              ; preds = %127, %52
  br label %129

129:                                              ; preds = %128, %41
  br label %130

130:                                              ; preds = %129, %32
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %5, align 4
  br label %12

134:                                              ; preds = %10, %12
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprint(i32, i8*, i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32* @freopen(i8*, i8*, i32) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
