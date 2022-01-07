; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/linenoise/extr_linenoise.c_getColumns.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/linenoise/extr_linenoise.c_getColumns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"\1B[999C\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"\1B[%dD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @getColumns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getColumns() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [32 x i8], align 16
  %5 = call i32 (...) @getCursorPosition()
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %39

9:                                                ; preds = %0
  %10 = load i32, i32* @stdout, align 4
  %11 = call i32 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1, i32 6, i32 %10)
  %12 = icmp ne i32 %11, 6
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %39

14:                                               ; preds = %9
  %15 = call i32 (...) @getCursorPosition()
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %39

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %2, align 4
  %27 = sub nsw i32 %25, %26
  %28 = call i32 @snprintf(i8* %24, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %31 = call i32 @strlen(i8* %30)
  %32 = load i32, i32* @stdout, align 4
  %33 = call i32 @fwrite(i8* %29, i32 1, i32 %31, i32 %32)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35, %23
  br label %37

37:                                               ; preds = %36, %19
  %38 = load i32, i32* %3, align 4
  store i32 %38, i32* %1, align 4
  br label %40

39:                                               ; preds = %18, %13, %8
  store i32 80, i32* %1, align 4
  br label %40

40:                                               ; preds = %39, %37
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

declare dso_local i32 @getCursorPosition(...) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
