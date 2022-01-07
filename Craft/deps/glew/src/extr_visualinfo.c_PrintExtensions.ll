; ModuleID = '/home/carl/AnghaBench/Craft/deps/glew/src/extr_visualinfo.c_PrintExtensions.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glew/src/extr_visualinfo.c_PrintExtensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"    %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"    %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintExtensions(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [80 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %6 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 79
  store i8 0, i8* %6, align 1
  br label %7

7:                                                ; preds = %65, %1
  %8 = load i8*, i8** %2, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %68

11:                                               ; preds = %7
  %12 = load i8*, i8** %2, align 8
  %13 = load i8, i8* %12, align 1
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 %16
  store i8 %13, i8* %17, align 1
  %18 = load i8*, i8** %2, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 32
  br i1 %21, label %22, label %46

22:                                               ; preds = %11
  %23 = load i8*, i8** %2, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 %31
  store i8 44, i8* %32, align 1
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 %34
  store i8 32, i8* %35, align 1
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 %38
  store i8* %39, i8** %5, align 8
  br label %45

40:                                               ; preds = %22
  %41 = load i32, i32* %4, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 %43
  store i8 0, i8* %44, align 1
  br label %45

45:                                               ; preds = %40, %28
  br label %46

46:                                               ; preds = %45, %11
  %47 = load i32, i32* %4, align 4
  %48 = icmp sgt i32 %47, 75
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 %51
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %5, align 8
  store i8 0, i8* %53, align 1
  %54 = load i32, i32* @file, align 4
  %55 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %56 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %55)
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %5, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = call i64 @strlen(i8* %59)
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %4, align 4
  %62 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @strcpy(i8* %62, i8* %63)
  br label %65

65:                                               ; preds = %49, %46
  %66 = load i8*, i8** %2, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %2, align 8
  br label %7

68:                                               ; preds = %7
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 %70
  store i8 0, i8* %71, align 1
  %72 = load i32, i32* @file, align 4
  %73 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %74 = call i32 @fprintf(i32 %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
