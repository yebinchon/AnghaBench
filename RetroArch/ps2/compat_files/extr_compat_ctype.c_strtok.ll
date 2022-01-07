; ModuleID = '/home/carl/AnghaBench/RetroArch/ps2/compat_files/extr_compat_ctype.c_strtok.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ps2/compat_files/extr_compat_ctype.c_strtok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@strtok.start = internal global i8* null, align 8
@strtok.end = internal global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strtok(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** @strtok.start, align 8
  br label %18

10:                                               ; preds = %2
  %11 = load i8*, i8** @strtok.end, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i8* null, i8** %3, align 8
  br label %69

16:                                               ; preds = %10
  %17 = load i8*, i8** @strtok.end, align 8
  store i8* %17, i8** @strtok.start, align 8
  br label %18

18:                                               ; preds = %16, %8
  %19 = load i8*, i8** @strtok.start, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i8* null, i8** %3, align 8
  br label %69

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %39, %24
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** @strtok.start, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @strchr(i8* %26, i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load i8*, i8** @strtok.start, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** @strtok.start, align 8
  %34 = load i8*, i8** @strtok.start, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i8* null, i8** %3, align 8
  br label %69

39:                                               ; preds = %31
  br label %25

40:                                               ; preds = %25
  %41 = load i8*, i8** @strtok.start, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i8* null, i8** %3, align 8
  br label %69

46:                                               ; preds = %40
  %47 = load i8*, i8** @strtok.start, align 8
  store i8* %47, i8** @strtok.end, align 8
  br label %48

48:                                               ; preds = %64, %46
  %49 = load i8*, i8** @strtok.end, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** @strtok.end, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @strchr(i8* %54, i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load i8*, i8** @strtok.end, align 8
  store i8 0, i8* %60, align 1
  %61 = load i8*, i8** @strtok.end, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** @strtok.end, align 8
  %63 = load i8*, i8** @strtok.start, align 8
  store i8* %63, i8** %3, align 8
  br label %69

64:                                               ; preds = %53
  %65 = load i8*, i8** @strtok.end, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** @strtok.end, align 8
  br label %48

67:                                               ; preds = %48
  %68 = load i8*, i8** @strtok.start, align 8
  store i8* %68, i8** %3, align 8
  br label %69

69:                                               ; preds = %67, %59, %45, %38, %23, %15
  %70 = load i8*, i8** %3, align 8
  ret i8* %70
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
