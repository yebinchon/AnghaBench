; ModuleID = '/home/carl/AnghaBench/8cc/extr_main.c_parseopt.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_main.c_parseopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cppdefs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"I:ED:O:SU:W:acd:f:gm:o:hw\00", align 1
@optarg = common dso_local global i32 0, align 4
@cpponly = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"#define %s\0A\00", align 1
@dumpasm = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"#undef %s\0A\00", align 1
@dontlink = common dso_local global i32 0, align 4
@outfile = common dso_local global i32 0, align 4
@enable_warning = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@dumpast = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"One of -a, -c, -E or -S must be specified\00", align 1
@infile = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parseopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parseopt(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = call i32 (...) @make_buffer()
  store i32 %7, i32* @cppdefs, align 4
  br label %8

8:                                                ; preds = %56, %2
  %9 = load i32, i32* %3, align 4
  %10 = load i8**, i8*** %4, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %57

15:                                               ; preds = %8
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %54 [
    i32 73, label %17
    i32 69, label %20
    i32 68, label %21
    i32 79, label %32
    i32 83, label %33
    i32 85, label %34
    i32 87, label %38
    i32 99, label %41
    i32 102, label %42
    i32 109, label %45
    i32 103, label %48
    i32 111, label %49
    i32 119, label %51
    i32 104, label %52
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @optarg, align 4
  %19 = call i32 @add_include_path(i32 %18)
  br label %56

20:                                               ; preds = %15
  store i32 1, i32* @cpponly, align 4
  br label %56

21:                                               ; preds = %15
  %22 = load i32, i32* @optarg, align 4
  %23 = call i8* @strchr(i32 %22, i8 signext 61)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  store i8 32, i8* %27, align 1
  br label %28

28:                                               ; preds = %26, %21
  %29 = load i32, i32* @cppdefs, align 4
  %30 = load i32, i32* @optarg, align 4
  %31 = call i32 @buf_printf(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %56

32:                                               ; preds = %15
  br label %56

33:                                               ; preds = %15
  store i32 1, i32* @dumpasm, align 4
  br label %56

34:                                               ; preds = %15
  %35 = load i32, i32* @cppdefs, align 4
  %36 = load i32, i32* @optarg, align 4
  %37 = call i32 @buf_printf(i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %56

38:                                               ; preds = %15
  %39 = load i32, i32* @optarg, align 4
  %40 = call i32 @parse_warnings_arg(i32 %39)
  br label %56

41:                                               ; preds = %15
  store i32 1, i32* @dontlink, align 4
  br label %56

42:                                               ; preds = %15
  %43 = load i32, i32* @optarg, align 4
  %44 = call i32 @parse_f_arg(i32 %43)
  br label %56

45:                                               ; preds = %15
  %46 = load i32, i32* @optarg, align 4
  %47 = call i32 @parse_m_arg(i32 %46)
  br label %56

48:                                               ; preds = %15
  br label %56

49:                                               ; preds = %15
  %50 = load i32, i32* @optarg, align 4
  store i32 %50, i32* @outfile, align 4
  br label %56

51:                                               ; preds = %15
  store i32 0, i32* @enable_warning, align 4
  br label %56

52:                                               ; preds = %15
  %53 = call i32 @usage(i32 0)
  br label %54

54:                                               ; preds = %15, %52
  %55 = call i32 @usage(i32 1)
  br label %56

56:                                               ; preds = %54, %51, %49, %48, %45, %42, %41, %38, %34, %33, %32, %28, %20, %17
  br label %8

57:                                               ; preds = %14
  %58 = load i32, i32* @optind, align 4
  %59 = load i32, i32* %3, align 4
  %60 = sub nsw i32 %59, 1
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 @usage(i32 1)
  br label %64

64:                                               ; preds = %62, %57
  %65 = load i32, i32* @dumpast, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @cpponly, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* @dumpasm, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* @dontlink, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %73, %70, %67, %64
  %79 = load i8**, i8*** %4, align 8
  %80 = load i32, i32* @optind, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** @infile, align 8
  ret void
}

declare dso_local i32 @make_buffer(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @add_include_path(i32) #1

declare dso_local i8* @strchr(i32, i8 signext) #1

declare dso_local i32 @buf_printf(i32, i8*, i32) #1

declare dso_local i32 @parse_warnings_arg(i32) #1

declare dso_local i32 @parse_f_arg(i32) #1

declare dso_local i32 @parse_m_arg(i32) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
