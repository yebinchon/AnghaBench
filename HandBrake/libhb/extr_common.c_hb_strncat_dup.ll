; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_strncat_dup.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_strncat_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hb_strncat_dup(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = load i64, i64* %8, align 8
  %16 = add i64 %15, %14
  store i64 %16, i64* %8, align 8
  br label %17

17:                                               ; preds = %12, %3
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @MAX(i64 %22, i64 %23)
  %25 = load i64, i64* %8, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %20, %17
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i8* null, i8** %4, align 8
  br label %58

31:                                               ; preds = %27
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %32, 1
  %34 = call i8* @malloc(i64 %33)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i8* null, i8** %4, align 8
  br label %58

38:                                               ; preds = %31
  %39 = load i8*, i8** %5, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @strcpy(i8* %42, i8* %43)
  br label %48

45:                                               ; preds = %38
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @strcpy(i8* %46, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i8*, i8** %6, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i8*, i8** %9, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @strncat(i8* %52, i8* %53, i64 %54)
  br label %56

56:                                               ; preds = %51, %48
  %57 = load i8*, i8** %9, align 8
  store i8* %57, i8** %4, align 8
  br label %58

58:                                               ; preds = %56, %37, %30
  %59 = load i8*, i8** %4, align 8
  ret i8* %59
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strncat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
