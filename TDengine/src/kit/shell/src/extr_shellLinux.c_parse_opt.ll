; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellLinux.c_parse_opt.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellLinux.c_parse_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argp_state = type { %struct.arguments* }
%struct.arguments = type { i8*, i32, i8*, i8*, i8*, i8*, i32, i8*, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@tsMgmtShellPort = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Invalid path %s\0A\00", align 1
@configDir = common dso_local global i32 0, align 4
@ARGP_ERR_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.argp_state*)* @parse_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_opt(i32 %0, i8* %1, %struct.argp_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.argp_state*, align 8
  %8 = alloca %struct.arguments*, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.argp_state* %2, %struct.argp_state** %7, align 8
  %10 = load %struct.argp_state*, %struct.argp_state** %7, align 8
  %11 = getelementptr inbounds %struct.argp_state, %struct.argp_state* %10, i32 0, i32 0
  %12 = load %struct.arguments*, %struct.arguments** %11, align 8
  store %struct.arguments* %12, %struct.arguments** %8, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %87 [
    i32 104, label %14
    i32 112, label %18
    i32 80, label %28
    i32 116, label %31
    i32 117, label %35
    i32 99, label %39
    i32 115, label %55
    i32 114, label %59
    i32 102, label %62
    i32 100, label %80
    i32 128, label %84
  ]

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.arguments*, %struct.arguments** %8, align 8
  %17 = getelementptr inbounds %struct.arguments, %struct.arguments* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  br label %89

18:                                               ; preds = %3
  %19 = load %struct.arguments*, %struct.arguments** %8, align 8
  %20 = getelementptr inbounds %struct.arguments, %struct.arguments* %19, i32 0, i32 1
  store i32 1, i32* %20, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.arguments*, %struct.arguments** %8, align 8
  %26 = getelementptr inbounds %struct.arguments, %struct.arguments* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  br label %27

27:                                               ; preds = %23, %18
  br label %89

28:                                               ; preds = %3
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @atoi(i8* %29)
  store i32 %30, i32* @tsMgmtShellPort, align 4
  br label %89

31:                                               ; preds = %3
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.arguments*, %struct.arguments** %8, align 8
  %34 = getelementptr inbounds %struct.arguments, %struct.arguments* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  br label %89

35:                                               ; preds = %3
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.arguments*, %struct.arguments** %8, align 8
  %38 = getelementptr inbounds %struct.arguments, %struct.arguments* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  br label %89

39:                                               ; preds = %3
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @wordexp(i8* %40, %struct.TYPE_4__* %9, i32 0)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* @stderr, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %45)
  store i32 -1, i32* %4, align 4
  br label %90

47:                                               ; preds = %39
  %48 = load i32, i32* @configDir, align 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @strcpy(i32 %48, i32 %52)
  %54 = call i32 @wordfree(%struct.TYPE_4__* %9)
  br label %89

55:                                               ; preds = %3
  %56 = load i8*, i8** %6, align 8
  %57 = load %struct.arguments*, %struct.arguments** %8, align 8
  %58 = getelementptr inbounds %struct.arguments, %struct.arguments* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  br label %89

59:                                               ; preds = %3
  %60 = load %struct.arguments*, %struct.arguments** %8, align 8
  %61 = getelementptr inbounds %struct.arguments, %struct.arguments* %60, i32 0, i32 6
  store i32 1, i32* %61, align 8
  br label %89

62:                                               ; preds = %3
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @wordexp(i8* %63, %struct.TYPE_4__* %9, i32 0)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* @stderr, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @fprintf(i32 %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %68)
  store i32 -1, i32* %4, align 4
  br label %90

70:                                               ; preds = %62
  %71 = load %struct.arguments*, %struct.arguments** %8, align 8
  %72 = getelementptr inbounds %struct.arguments, %struct.arguments* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @strcpy(i32 %73, i32 %77)
  %79 = call i32 @wordfree(%struct.TYPE_4__* %9)
  br label %89

80:                                               ; preds = %3
  %81 = load i8*, i8** %6, align 8
  %82 = load %struct.arguments*, %struct.arguments** %8, align 8
  %83 = getelementptr inbounds %struct.arguments, %struct.arguments* %82, i32 0, i32 7
  store i8* %81, i8** %83, align 8
  br label %89

84:                                               ; preds = %3
  %85 = load %struct.arguments*, %struct.arguments** %8, align 8
  %86 = getelementptr inbounds %struct.arguments, %struct.arguments* %85, i32 0, i32 8
  store i32 1, i32* %86, align 8
  br label %89

87:                                               ; preds = %3
  %88 = load i32, i32* @ARGP_ERR_UNKNOWN, align 4
  store i32 %88, i32* %4, align 4
  br label %90

89:                                               ; preds = %84, %80, %70, %59, %55, %47, %35, %31, %28, %27, %14
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %87, %66, %43
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @wordexp(i8*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @wordfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
