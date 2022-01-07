; ModuleID = '/home/carl/AnghaBench/disque/src/extr_disque-cli.c_evalMode.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_disque-cli.c_evalMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't open file '%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"EVAL\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @evalMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evalMode(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %13 = call i8* (...) @sdsempty()
  store i8* %13, i8** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %21 = load i32, i32* @errno, align 4
  %22 = call i8* @strerror(i32 %21)
  %23 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %20, i8* %22)
  %24 = call i32 @exit(i32 1) #3
  unreachable

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %31, %25
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %28 = load i32*, i32** %6, align 8
  %29 = call i64 @fread(i8* %27, i32 1, i32 1024, i32* %28)
  store i64 %29, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %34 = load i64, i64* %8, align 8
  %35 = call i8* @sdscatlen(i8* %32, i8* %33, i64 %34)
  store i8* %35, i8** %5, align 8
  br label %26

36:                                               ; preds = %26
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @fclose(i32* %37)
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 3
  %41 = sext i32 %40 to i64
  %42 = mul i64 8, %41
  %43 = trunc i64 %42 to i32
  %44 = call i8** @zmalloc(i32 %43)
  store i8** %44, i8*** %9, align 8
  %45 = call i8* @sdsnew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i8**, i8*** %9, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i8**, i8*** %9, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  store i8* %48, i8** %50, align 8
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %99, %36
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %102

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %79, label %58

58:                                               ; preds = %55
  %59 = load i8**, i8*** %4, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 44
  br i1 %67, label %68, label %79

68:                                               ; preds = %58
  %69 = load i8**, i8*** %4, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  store i32 1, i32* %11, align 4
  br label %99

79:                                               ; preds = %68, %58, %55
  %80 = load i8**, i8*** %4, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* @sdsnew(i8* %84)
  %86 = load i8**, i8*** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 3
  %89 = load i32, i32* %11, align 4
  %90 = sub nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %86, i64 %91
  store i8* %85, i8** %92, align 8
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %79
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %95, %79
  br label %99

99:                                               ; preds = %98, %78
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %51

102:                                              ; preds = %51
  %103 = call i8* (...) @sdsempty()
  %104 = load i32, i32* %12, align 4
  %105 = call i8* @sdscatprintf(i8* %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = load i8**, i8*** %9, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 2
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %108, 3
  %110 = load i32, i32* %11, align 4
  %111 = sub nsw i32 %109, %110
  %112 = load i8**, i8*** %9, align 8
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  %114 = call i32 @cliSendCommand(i32 %111, i8** %112, i32 %113)
  ret i32 %114
}

declare dso_local i8* @sdsempty(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i8* @sdscatlen(i8*, i8*, i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8** @zmalloc(i32) #1

declare dso_local i8* @sdsnew(i8*) #1

declare dso_local i8* @sdscatprintf(i8*, i8*, i32) #1

declare dso_local i32 @cliSendCommand(i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
