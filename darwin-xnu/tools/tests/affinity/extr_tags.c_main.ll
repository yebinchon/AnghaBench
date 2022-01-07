; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/affinity/extr_tags.c_main.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/affinity/extr_tags.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Must be run as root\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"hiv:\00", align 1
@TRUE = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@verbosity = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"task_for_pid(,%d,) returned %d\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"task %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"task_threads() returned %d\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c" %d: thread 0x%08x tag %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Enter new tag or <return> to skip or ^D to quit\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c" %d: thread 0x%08x tag %d: \00", align 1
@stdout = common dso_local global i32 0, align 4
@input = common dso_local global i8* null, align 8
@stdin = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %13, align 8
  %16 = call i64 (...) @geteuid()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %37, %21
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %9, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  switch i32 %28, label %35 [
    i32 105, label %29
    i32 118, label %31
    i32 104, label %34
    i32 63, label %34
  ]

29:                                               ; preds = %27
  %30 = load i64, i64* @TRUE, align 8
  store i64 %30, i64* %13, align 8
  br label %37

31:                                               ; preds = %27
  %32 = load i8*, i8** @optarg, align 8
  %33 = call i8* @atoi(i8* %32)
  store i8* %33, i8** @verbosity, align 8
  br label %37

34:                                               ; preds = %27, %27
  br label %35

35:                                               ; preds = %27, %34
  %36 = call i32 (...) @usage()
  br label %37

37:                                               ; preds = %35, %31, %29
  br label %22

38:                                               ; preds = %22
  %39 = load i64, i64* @optind, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = sub nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %4, align 4
  %44 = load i64, i64* @optind, align 8
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 %44
  store i8** %46, i8*** %5, align 8
  %47 = load i32, i32* %4, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load i8**, i8*** %5, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @atoi(i8* %51)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %49, %38
  %55 = call i32 (...) @mach_task_self()
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @task_for_pid(i32 %55, i32 %56, i32* %7)
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @KERN_SUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* %8, align 4
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @err(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %62, i64 %63)
  br label %65

65:                                               ; preds = %61, %54
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @mutter(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = call i64 @task_threads(i32 %68, i32** %10, i32* %11)
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @KERN_SUCCESS, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i32, i32* %8, align 4
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %74, i64 %75)
  br label %77

77:                                               ; preds = %73, %65
  store i32 0, i32* %12, align 4
  br label %78

78:                                               ; preds = %96, %77
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %99

82:                                               ; preds = %78
  %83 = load i32, i32* %12, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @thread_tag_get(i32 %93)
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %83, i32 %88, i32 %94)
  br label %96

96:                                               ; preds = %82
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %78

99:                                               ; preds = %78
  br label %100

100:                                              ; preds = %154, %99
  %101 = load i64, i64* %13, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %155

103:                                              ; preds = %100
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %105

105:                                              ; preds = %151, %103
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %154

109:                                              ; preds = %105
  %110 = load i32*, i32** %10, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @thread_tag_get(i32 %114)
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %12, align 4
  %117 = load i32*, i32** %10, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %14, align 4
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %116, i32 %121, i32 %122)
  %124 = load i32, i32* @stdout, align 4
  %125 = call i32 @fflush(i32 %124)
  %126 = load i8*, i8** @input, align 8
  %127 = load i32, i32* @stdin, align 4
  %128 = call i32 @fgets(i8* %126, i32 20, i32 %127)
  %129 = load i32, i32* @stdin, align 4
  %130 = call i64 @feof(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %109
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %134 = load i64, i64* @FALSE, align 8
  store i64 %134, i64* %13, align 8
  br label %154

135:                                              ; preds = %109
  %136 = load i8*, i8** @input, align 8
  %137 = call i32 @strlen(i8* %136)
  %138 = icmp sgt i32 %137, 1
  br i1 %138, label %139, label %150

139:                                              ; preds = %135
  %140 = load i8*, i8** @input, align 8
  %141 = call i8* @atoi(i8* %140)
  %142 = ptrtoint i8* %141 to i32
  store i32 %142, i32* %14, align 4
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %14, align 4
  %149 = call i32 @thread_tag_set(i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %139, %135
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %12, align 4
  br label %105

154:                                              ; preds = %132, %105
  br label %100

155:                                              ; preds = %100
  ret i32 0
}

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @task_for_pid(i32, i32, i32*) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @err(i32, i8*, i32, i64) #1

declare dso_local i32 @mutter(i8*, i32) #1

declare dso_local i64 @task_threads(i32, i32**, i32*) #1

declare dso_local i32 @thread_tag_get(i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @fgets(i8*, i32, i32) #1

declare dso_local i64 @feof(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @thread_tag_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
