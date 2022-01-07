; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_log.c__nl_log_untranslated_locked.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_log.c__nl_log_untranslated_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_logfilename = common dso_local global i8* null, align 8
@last_logfile = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"domain \00", align 1
@MSGCTXT_SEPARATOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"\0Amsgctxt \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"\0Amsgid \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"\0Amsgid_plural \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"\0Amsgstr[0] \22\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"\0Amsgstr \22\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, i32)* @_nl_log_untranslated_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_nl_log_untranslated_locked(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i8*, i8** @last_logfilename, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %5
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** @last_logfilename, align 8
  %18 = call i64 @strcmp(i8* %16, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %15, %5
  %21 = load i8*, i8** @last_logfilename, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load i32*, i32** @last_logfile, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32*, i32** @last_logfile, align 8
  %28 = call i32 @fclose(i32* %27)
  store i32* null, i32** @last_logfile, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i8*, i8** @last_logfilename, align 8
  %31 = call i32 @free(i8* %30)
  store i8* null, i8** @last_logfilename, align 8
  br label %32

32:                                               ; preds = %29, %20
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = add nsw i32 %34, 1
  %36 = call i64 @malloc(i32 %35)
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** @last_logfilename, align 8
  %38 = load i8*, i8** @last_logfilename, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %109

41:                                               ; preds = %32
  %42 = load i8*, i8** @last_logfilename, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @strcpy(i8* %42, i8* %43)
  %45 = load i8*, i8** %6, align 8
  %46 = call i32* @fopen(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %46, i32** @last_logfile, align 8
  %47 = load i32*, i32** @last_logfile, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %109

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %15
  %52 = load i32*, i32** @last_logfile, align 8
  store i32* %52, i32** %11, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @fprintf(i32* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32*, i32** %11, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = call i32 @print_escaped(i32* %55, i8* %56, i8* %61)
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* @MSGCTXT_SEPARATOR, align 4
  %65 = call i8* @strchr(i8* %63, i32 %64)
  store i8* %65, i8** %12, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %51
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @fprintf(i32* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32*, i32** %11, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @print_escaped(i32* %71, i8* %72, i8* %73)
  %75 = load i8*, i8** %12, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  store i8* %76, i8** %8, align 8
  br label %77

77:                                               ; preds = %68, %51
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @fprintf(i32* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32*, i32** %11, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = call i32 @print_escaped(i32* %80, i8* %81, i8* %86)
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %77
  %91 = load i32*, i32** %11, align 8
  %92 = call i32 @fprintf(i32* %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32*, i32** %11, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @strlen(i8* %96)
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  %100 = call i32 @print_escaped(i32* %93, i8* %94, i8* %99)
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 @fprintf(i32* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %106

103:                                              ; preds = %77
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @fprintf(i32* %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %90
  %107 = load i32*, i32** %11, align 8
  %108 = call i32 @putc(i8 signext 10, i32* %107)
  br label %109

109:                                              ; preds = %106, %49, %40
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @print_escaped(i32*, i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
