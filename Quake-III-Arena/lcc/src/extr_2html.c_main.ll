; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_2html.c_main.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_2html.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rcsid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c",v\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stdin = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"%s: can't read `%s'\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Standard Input\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"%s: can't write `%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"<!DOCTYPE HTML PUBLIC \22-//W3C//DTD HTML 3.2 Final//EN\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [105 x i8] c"<html><head><title>%s</title>\0A<link rev=made href=\22mailto:drh@microsoft.com\22>\0A</head><body>\0A<h1>%s</h1>\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"<p>version = %d.%d</p>\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"<hr><address>%s</address>\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"</body></html>\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@_O_BINARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @rcsid, align 4
  %14 = call i32 @strstr(i32 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %15 = call float @assert(i32 %14)
  %16 = load i32, i32* @rcsid, align 4
  %17 = call i32 @strstr(i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %18 = add nsw i32 %17, 2
  %19 = call i32 @strtod(i32 %18, i32* null)
  %20 = sitofp i32 %19 to float
  store float %20, float* %8, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 1, i32* %6, align 4
  br label %21

21:                                               ; preds = %63, %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %66

25:                                               ; preds = %21
  %26 = load i8**, i8*** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 45
  br i1 %33, label %42, label %34

34:                                               ; preds = %25
  %35 = load i8**, i8*** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %34, %25
  %43 = load i8*, i8** %9, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %9, align 8
  br label %61

51:                                               ; preds = %42
  %52 = load i8*, i8** %10, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i8**, i8*** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %10, align 8
  br label %60

60:                                               ; preds = %54, %51
  br label %61

61:                                               ; preds = %60, %45
  br label %62

62:                                               ; preds = %61, %34
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %21

66:                                               ; preds = %21
  %67 = load i8*, i8** %9, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %87

69:                                               ; preds = %66
  %70 = load i8*, i8** %9, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %69
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* @stdin, align 4
  %76 = call i32* @freopen(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load i32, i32* @stderr, align 4
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @fprintf(i32 %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %82, i8* %83)
  %85 = load i32, i32* @EXIT_FAILURE, align 4
  %86 = call i32 @exit(i32 %85) #3
  unreachable

87:                                               ; preds = %73, %69, %66
  %88 = load i8*, i8** %9, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load i8*, i8** %9, align 8
  %92 = call i64 @strcmp(i8* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90, %87
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %95

95:                                               ; preds = %94, %90
  %96 = load i8*, i8** %10, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %116

98:                                               ; preds = %95
  %99 = load i8*, i8** %10, align 8
  %100 = call i64 @strcmp(i8* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %98
  %103 = load i8*, i8** %10, align 8
  %104 = load i32, i32* @stdout, align 4
  %105 = call i32* @freopen(i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %104)
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load i32, i32* @stderr, align 4
  %109 = load i8**, i8*** %5, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 0
  %111 = load i8*, i8** %110, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = call i32 @fprintf(i32 %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %111, i8* %112)
  %114 = load i32, i32* @EXIT_FAILURE, align 4
  %115 = call i32 @exit(i32 %114) #3
  unreachable

116:                                              ; preds = %102, %98, %95
  %117 = load i32, i32* @stdin, align 4
  %118 = call i32 @read_int(i32 %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = sdiv i32 %119, 100
  %121 = load float, float* %8, align 4
  %122 = fptosi float %121 to i32
  %123 = icmp eq i32 %120, %122
  %124 = zext i1 %123 to i32
  %125 = call float @assert(i32 %124)
  %126 = load i32, i32* @stdin, align 4
  %127 = call i32 @rcc_read_program(i32 %126)
  store i32 %127, i32* %11, align 4
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  %129 = load i8*, i8** %9, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.8, i64 0, i64 0), i8* %129, i8* %130)
  %132 = load i32, i32* %7, align 4
  %133 = sdiv i32 %132, 100
  %134 = load i32, i32* %7, align 4
  %135 = srem i32 %134, 100
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %133, i32 %135)
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @do_program(i32 %137)
  %139 = call i32 @time(i32* %12)
  %140 = call i8* @ctime(i32* %12)
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* %140)
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %143 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %143
}

declare dso_local float @assert(i32) #1

declare dso_local i32 @strstr(i32, i8*) #1

declare dso_local i32 @strtod(i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @freopen(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @read_int(i32) #1

declare dso_local i32 @rcc_read_program(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @do_program(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i8* @ctime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
