; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ldap.c_split_str.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ldap.c_split_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8***, i64*)* @split_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_str(i8* %0, i8*** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8***, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8*** %1, i8**** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 1, i64* %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @strchr(i8* %13, i8 signext 44)
  store i8* %14, i8** %10, align 8
  br label %15

15:                                               ; preds = %18, %3
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i64, i64* %12, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %12, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %10, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 44)
  store i8* %23, i8** %10, align 8
  br label %15

24:                                               ; preds = %15
  %25 = load i64, i64* %12, align 8
  %26 = call i8** @calloc(i64 %25, i32 8)
  store i8** %26, i8*** %8, align 8
  %27 = load i8**, i8*** %8, align 8
  %28 = icmp ne i8** %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %4, align 4
  br label %58

31:                                               ; preds = %24
  store i64 0, i64* %11, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i8* @strtok_r(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %9)
  store i8* %33, i8** %10, align 8
  br label %34

34:                                               ; preds = %48, %31
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp ult i64 %38, %39
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i1 [ false, %34 ], [ %40, %37 ]
  br i1 %42, label %43, label %52

43:                                               ; preds = %41
  %44 = load i8*, i8** %10, align 8
  %45 = load i8**, i8*** %8, align 8
  %46 = load i64, i64* %11, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  store i8* %44, i8** %47, align 8
  br label %48

48:                                               ; preds = %43
  %49 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %9)
  store i8* %49, i8** %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %11, align 8
  br label %34

52:                                               ; preds = %41
  %53 = load i8**, i8*** %8, align 8
  %54 = load i8***, i8**** %6, align 8
  store i8** %53, i8*** %54, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64*, i64** %7, align 8
  store i64 %55, i64* %56, align 8
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %52, %29
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8** @calloc(i64, i32) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
