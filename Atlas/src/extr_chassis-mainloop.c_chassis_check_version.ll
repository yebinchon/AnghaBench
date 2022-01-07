; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_chassis-mainloop.c_chassis_check_version.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_chassis-mainloop.c_chassis_check_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%d.%d.%d%*s\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: library version %s failed to parse: %d\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"%s: header version %s failed to parse: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chassis_check_version(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @sscanf(i8* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7, i32* %8)
  store i32 %14, i32* %12, align 4
  %15 = icmp ne i32 3, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @G_STRLOC, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @g_critical(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %17, i8* %18, i32 %19)
  store i32 -1, i32* %3, align 4
  br label %44

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @sscanf(i8* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %9, i32* %10, i32* %11)
  store i32 %23, i32* %12, align 4
  %24 = icmp ne i32 3, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* @G_STRLOC, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @g_critical(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %26, i8* %27, i32 %28)
  store i32 -1, i32* %3, align 4
  br label %44

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %44

43:                                               ; preds = %38, %34, %30
  store i32 -1, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %42, %25, %16
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @g_critical(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
