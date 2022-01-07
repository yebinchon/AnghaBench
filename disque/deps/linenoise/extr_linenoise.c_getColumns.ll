; ModuleID = '/home/carl/AnghaBench/disque/deps/linenoise/extr_linenoise.c_getColumns.c'
source_filename = "/home/carl/AnghaBench/disque/deps/linenoise/extr_linenoise.c_getColumns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winsize = type { i64 }

@TIOCGWINSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"\1B[999C\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\1B[%dD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @getColumns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getColumns(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.winsize, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [32 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @TIOCGWINSZ, align 4
  %11 = call i32 @ioctl(i32 1, i32 %10, %struct.winsize* %6)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.winsize, %struct.winsize* %6, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %56

17:                                               ; preds = %13, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @getCursorPosition(i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %60

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @write(i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %27 = icmp ne i32 %26, 6
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %60

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @getCursorPosition(i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %60

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %42, %43
  %45 = call i32 @snprintf(i8* %41, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %49 = call i32 @strlen(i8* %48)
  %50 = call i32 @write(i32 %46, i8* %47, i32 %49)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %40
  br label %54

54:                                               ; preds = %53, %36
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %61

56:                                               ; preds = %13
  %57 = getelementptr inbounds %struct.winsize, %struct.winsize* %6, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %35, %28, %23
  store i32 80, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %56, %54
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @ioctl(i32, i32, %struct.winsize*) #1

declare dso_local i32 @getCursorPosition(i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
