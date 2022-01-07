; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/linenoise/extr_linenoise.c_linenoiseDumb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/linenoise/extr_linenoise.c_linenoiseDumb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@BACKSPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\08 \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*)* @linenoiseDumb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linenoiseDumb(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i32, i32* @stdout, align 4
  %11 = call i32 @fputs(i8* %9, i32 %10)
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %62, %29, %3
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %5, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %67

17:                                               ; preds = %12
  %18 = load i32, i32* @stdin, align 4
  %19 = call i32 @fgetc(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %67

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  %25 = icmp sge i32 %24, 28
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = icmp sle i32 %27, 31
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %12

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @BACKSPACE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 8
  br i1 %36, label %37, label %51

37:                                               ; preds = %34, %30
  %38 = load i32, i32* %7, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  store i8 0, i8* %45, align 1
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %40, %37
  %49 = load i32, i32* @stdout, align 4
  %50 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %60

51:                                               ; preds = %34
  %52 = load i32, i32* %8, align 4
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8 %53, i8* %57, align 1
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %51, %48
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = trunc i32 %63 to i8
  %65 = load i32, i32* @stdout, align 4
  %66 = call i32 @fputc(i8 signext %64, i32 %65)
  br label %12

67:                                               ; preds = %22, %12
  %68 = load i32, i32* @stdout, align 4
  %69 = call i32 @fputc(i8 signext 10, i32 %68)
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fgetc(i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
