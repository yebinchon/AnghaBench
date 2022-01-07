; ModuleID = '/home/carl/AnghaBench/disque/src/extr_disque-check-aof.c_main.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_disque-check-aof.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disque_stat = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"Usage: %s [--fix] <file.aof>\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"--fix\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Invalid argument: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Invalid arguments\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Cannot open file: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Cannot stat file: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Empty file: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"AOF analyzed: size=%lld, ok_up_to=%lld, diff=%lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [74 x i8] c"This will shrink the AOF from %lld bytes, with %lld bytes, to %lld bytes\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Continue? [y/N]: \00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Aborting...\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Failed to truncate AOF\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Successfully truncated AOF\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"AOF is not valid\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"AOF is valid\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.disque_stat, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [2 x i8], align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %6, align 8
  br label %52

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = call i32 @exit(i32 1) #3
  unreachable

44:                                               ; preds = %32
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 2
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %6, align 8
  store i32 1, i32* %7, align 4
  br label %51

48:                                               ; preds = %29
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %50 = call i32 @exit(i32 1) #3
  unreachable

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %25
  br label %53

53:                                               ; preds = %52
  %54 = load i8*, i8** %6, align 8
  %55 = call i32* @fopen(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %55, i32** %8, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %59)
  %61 = call i32 @exit(i32 1) #3
  unreachable

62:                                               ; preds = %53
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @fileno(i32* %63)
  %65 = call i32 @disque_fstat(i32 %64, %struct.disque_stat* %9)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %68)
  %70 = call i32 @exit(i32 1) #3
  unreachable

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.disque_stat, %struct.disque_stat* %9, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %10, align 8
  %74 = load i64, i64* %10, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %77)
  %79 = call i32 @exit(i32 1) #3
  unreachable

80:                                               ; preds = %71
  %81 = load i32*, i32** %8, align 8
  %82 = call i64 @process(i32* %81)
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %11, align 8
  %85 = sub nsw i64 %83, %84
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %12, align 8
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i64 %86, i64 %87, i64 %88)
  %90 = load i64, i64* %12, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %128

92:                                               ; preds = %80
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %124

95:                                               ; preds = %92
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* %11, align 8
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.9, i64 0, i64 0), i64 %96, i64 %97, i64 %98)
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %101 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %102 = load i32, i32* @stdin, align 4
  %103 = call i32* @fgets(i8* %101, i32 2, i32 %102)
  %104 = icmp eq i32* %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %95
  %106 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %107 = call i64 @strncasecmp(i8* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 1)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105, %95
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %111 = call i32 @exit(i32 1) #3
  unreachable

112:                                              ; preds = %105
  %113 = load i32*, i32** %8, align 8
  %114 = call i32 @fileno(i32* %113)
  %115 = load i64, i64* %11, align 8
  %116 = call i32 @ftruncate(i32 %114, i64 %115)
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  %120 = call i32 @exit(i32 1) #3
  unreachable

121:                                              ; preds = %112
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121
  br label %127

124:                                              ; preds = %92
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %126 = call i32 @exit(i32 1) #3
  unreachable

127:                                              ; preds = %123
  br label %130

128:                                              ; preds = %80
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %127
  %131 = load i32*, i32** %8, align 8
  %132 = call i32 @fclose(i32* %131)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @disque_fstat(i32, %struct.disque_stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i64 @process(i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @ftruncate(i32, i64) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
