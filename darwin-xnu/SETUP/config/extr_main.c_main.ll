; ModuleID = '/home/carl/AnghaBench/darwin-xnu/SETUP/config/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/SETUP/config/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@source_directory = common dso_local global i8* null, align 8
@object_directory = common dso_local global i8* null, align 8
@config_directory = common dso_local global i8* null, align 8
@build_directory = common dso_local global i8* null, align 8
@profiling = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%s/conf\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"usage: config [ -bcdo dir ] [ -p ] sysname\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = common dso_local global i32 0, align 4
@dtab = common dso_local global i32* null, align 8
@conf_list = common dso_local global i32 0, align 4
@confp = common dso_local global i32* null, align 8
@opt = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** @source_directory, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** @object_directory, align 8
  store i8* null, i8** @config_directory, align 8
  br label %7

7:                                                ; preds = %72, %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 45
  br label %18

18:                                               ; preds = %10, %7
  %19 = phi i1 [ false, %7 ], [ %17, %10 ]
  br i1 %19, label %20, label %73

20:                                               ; preds = %18
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %22, i8*** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %28, i8** %6, align 8
  br label %29

29:                                               ; preds = %69, %20
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %29
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  switch i32 %36, label %67 [
    i32 98, label %37
    i32 100, label %41
    i32 111, label %45
    i32 99, label %49
    i32 112, label %64
  ]

37:                                               ; preds = %33
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** @build_directory, align 8
  br label %53

41:                                               ; preds = %33
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** @source_directory, align 8
  br label %53

45:                                               ; preds = %33
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** @object_directory, align 8
  br label %53

49:                                               ; preds = %33
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** @config_directory, align 8
  br label %53

53:                                               ; preds = %49, %45, %41, %37
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %89

59:                                               ; preds = %53
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8** %61, i8*** %5, align 8
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %4, align 4
  br label %68

64:                                               ; preds = %33
  %65 = load i32, i32* @profiling, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @profiling, align 4
  br label %68

67:                                               ; preds = %33
  br label %89

68:                                               ; preds = %64, %59
  br label %69

69:                                               ; preds = %68
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %6, align 8
  br label %29

72:                                               ; preds = %29
  br label %7

73:                                               ; preds = %18
  %74 = load i8*, i8** @config_directory, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i8*, i8** @source_directory, align 8
  %78 = call i64 @strlen(i8* %77)
  %79 = trunc i64 %78 to i32
  %80 = add i32 %79, 6
  %81 = call i8* @malloc(i32 %80)
  store i8* %81, i8** @config_directory, align 8
  %82 = load i8*, i8** @config_directory, align 8
  %83 = load i8*, i8** @source_directory, align 8
  %84 = call i32 @sprintf(i8* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %76, %73
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 2
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  br label %89

89:                                               ; preds = %88, %67, %58
  %90 = load i32, i32* @stderr, align 4
  %91 = call i32 @fprintf(i32 %90, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %92 = call i32 @exit(i32 1) #3
  unreachable

93:                                               ; preds = %85
  %94 = load i8*, i8** @build_directory, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = load i8**, i8*** %5, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 1
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** @build_directory, align 8
  br label %100

100:                                              ; preds = %96, %93
  %101 = load i8**, i8*** %5, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 1
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* @stdin, align 4
  %105 = call i32* @freopen(i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load i8**, i8*** %5, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @perror(i8* %110)
  %112 = call i32 @exit(i32 2) #3
  unreachable

113:                                              ; preds = %100
  store i32* null, i32** @dtab, align 8
  store i32* @conf_list, i32** @confp, align 8
  store i64 0, i64* @opt, align 8
  %114 = call i64 (...) @yyparse()
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = call i32 @exit(i32 3) #3
  unreachable

118:                                              ; preds = %113
  %119 = call i32 (...) @mkioconf()
  %120 = call i32 (...) @makefile()
  %121 = call i32 (...) @headers()
  ret i32 0
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @freopen(i8*, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @yyparse(...) #1

declare dso_local i32 @mkioconf(...) #1

declare dso_local i32 @makefile(...) #1

declare dso_local i32 @headers(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
