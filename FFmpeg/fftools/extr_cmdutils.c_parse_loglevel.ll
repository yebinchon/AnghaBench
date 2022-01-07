; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_parse_loglevel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_parse_loglevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"loglevel\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"report\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"FFREPORT\00", align 1
@report_file = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"Command line:\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"hide_banner\00", align 1
@hide_banner = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_loglevel(i32 %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @locate_option(i32 %10, i8** %11, i32* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %7, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @check_options(i32* %14)
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @locate_option(i32 %19, i8** %20, i32* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %18, %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = load i8**, i8*** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %27, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load i8**, i8*** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %35, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @opt_loglevel(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %34, %26, %23
  %43 = load i32, i32* %4, align 4
  %44 = load i8**, i8*** %5, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @locate_option(i32 %43, i8** %44, i32* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %46, i32* %7, align 4
  %47 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* %47, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %87

52:                                               ; preds = %49, %42
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @init_report(i8* %53)
  %55 = load i64, i64* @report_file, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %86

57:                                               ; preds = %52
  %58 = load i64, i64* @report_file, align 8
  %59 = call i32 @fprintf(i64 %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %80, %57
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %60
  %65 = load i8**, i8*** %5, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @dump_argument(i8* %69)
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %4, align 4
  %73 = sub nsw i32 %72, 1
  %74 = icmp slt i32 %71, %73
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 32, i32 10
  %77 = trunc i32 %76 to i8
  %78 = load i64, i64* @report_file, align 8
  %79 = call i32 @fputc(i8 signext %77, i64 %78)
  br label %80

80:                                               ; preds = %64
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %60

83:                                               ; preds = %60
  %84 = load i64, i64* @report_file, align 8
  %85 = call i32 @fflush(i64 %84)
  br label %86

86:                                               ; preds = %83, %52
  br label %87

87:                                               ; preds = %86, %49
  %88 = load i32, i32* %4, align 4
  %89 = load i8**, i8*** %5, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @locate_option(i32 %88, i8** %89, i32* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  store i32 1, i32* @hide_banner, align 4
  br label %95

95:                                               ; preds = %94, %87
  ret void
}

declare dso_local i32 @locate_option(i32, i8**, i32*, i8*) #1

declare dso_local i32 @check_options(i32*) #1

declare dso_local i32 @opt_loglevel(i32*, i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @init_report(i8*) #1

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @dump_argument(i8*) #1

declare dso_local i32 @fputc(i8 signext, i64) #1

declare dso_local i32 @fflush(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
