; ModuleID = '/home/carl/AnghaBench/darwin-xnu/SETUP/json_compilation_db/extr_json_compilation_db.c_escape_string.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/SETUP/json_compilation_db/extr_json_compilation_db.c_escape_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @escape_string(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @strlen(i8* %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = mul i64 %10, 4
  %12 = add i64 %11, 1
  %13 = call i8* @malloc(i64 %12)
  store i8* %13, i8** %6, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %49, %1
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* %3, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %14
  %19 = load i8*, i8** %2, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %7, align 1
  %23 = load i8, i8* %7, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 92
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = load i8, i8* %7, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 34
  br i1 %29, label %30, label %43

30:                                               ; preds = %26, %18
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %5, align 8
  %34 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8 92, i8* %34, align 1
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %5, align 8
  %38 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8 92, i8* %38, align 1
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %5, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %5, align 8
  %42 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8 92, i8* %42, align 1
  br label %43

43:                                               ; preds = %30, %26
  %44 = load i8, i8* %7, align 1
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %5, align 8
  %48 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8 %44, i8* %48, align 1
  br label %49

49:                                               ; preds = %43
  %50 = load i64, i64* %4, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %4, align 8
  br label %14

52:                                               ; preds = %14
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** %6, align 8
  ret i8* %56
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
