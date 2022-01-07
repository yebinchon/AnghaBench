; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_symbol.c_sym_escape_string_value.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_symbol.c_sym_escape_string_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\22\\\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\\\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sym_escape_string_value(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = call i32 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %10 = add nsw i32 %8, %9
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %4, align 8
  %13 = load i8*, i8** %2, align 8
  store i8* %13, i8** %3, align 8
  br label %14

14:                                               ; preds = %26, %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strcspn(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 %17
  store i8* %19, i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %31

26:                                               ; preds = %14
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %4, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %3, align 8
  br label %14

31:                                               ; preds = %25
  %32 = load i64, i64* %4, align 8
  %33 = call i8* @xmalloc(i64 %32)
  store i8* %33, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 0, i8* %35, align 1
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @strcat(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i8*, i8** %2, align 8
  store i8* %38, i8** %3, align 8
  br label %39

39:                                               ; preds = %56, %31
  %40 = load i8*, i8** %3, align 8
  %41 = call i64 @strcspn(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i64 %41, i64* %6, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = load i64, i64* %6, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @strncat(i8* %42, i8* %43, i32 %45)
  %47 = load i64, i64* %6, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 %47
  store i8* %49, i8** %3, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %39
  br label %63

56:                                               ; preds = %39
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @strcat(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i8*, i8** %5, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %3, align 8
  %62 = call i32 @strncat(i8* %59, i8* %60, i32 1)
  br label %39

63:                                               ; preds = %55
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @strcat(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i8*, i8** %5, align 8
  ret i8* %66
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strncat(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
