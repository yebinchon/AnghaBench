; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_sockfilt.c_lograw.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_sockfilt.c_lograw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @lograw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lograw(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [120 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %7, align 8
  %12 = getelementptr inbounds [120 x i8], [120 x i8]* %5, i64 0, i64 0
  store i8* %12, i8** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 120, i32* %10, align 4
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %83, %2
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %86

17:                                               ; preds = %13
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  switch i32 %22, label %43 [
    i32 10, label %23
    i32 13, label %33
  ]

23:                                               ; preds = %17
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 (i8*, i32, i8*, ...) @msnprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %27 = load i64, i64* %9, align 8
  %28 = add i64 %27, 2
  store i64 %28, i64* %9, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  store i8* %30, i8** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sub nsw i32 %31, 2
  store i32 %32, i32* %10, align 4
  br label %75

33:                                               ; preds = %17
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 (i8*, i32, i8*, ...) @msnprintf(i8* %34, i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, 2
  store i64 %38, i64* %9, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  store i8* %40, i8** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sub nsw i32 %41, 2
  store i32 %42, i32* %10, align 4
  br label %75

43:                                               ; preds = %17
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @ISGRAPH(i8 zeroext %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %43
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 32
  br i1 %58, label %59, label %65

59:                                               ; preds = %52, %43
  %60 = load i8*, i8** %7, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  br label %66

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %59
  %67 = phi i32 [ %64, %59 ], [ 46, %65 ]
  %68 = call i32 (i8*, i32, i8*, ...) @msnprintf(i8* %44, i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %9, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %8, align 8
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %66, %33, %23
  %76 = load i64, i64* %9, align 8
  %77 = icmp ugt i64 %76, 60
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = getelementptr inbounds [120 x i8], [120 x i8]* %5, i64 0, i64 0
  %80 = call i32 @logmsg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  store i64 0, i64* %9, align 8
  %81 = getelementptr inbounds [120 x i8], [120 x i8]* %5, i64 0, i64 0
  store i8* %81, i8** %8, align 8
  store i32 120, i32* %10, align 4
  br label %82

82:                                               ; preds = %78, %75
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %6, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %6, align 8
  br label %13

86:                                               ; preds = %13
  %87 = load i64, i64* %9, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = getelementptr inbounds [120 x i8], [120 x i8]* %5, i64 0, i64 0
  %91 = call i32 @logmsg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %89, %86
  ret void
}

declare dso_local i32 @msnprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @ISGRAPH(i8 zeroext) #1

declare dso_local i32 @logmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
