; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tutil.c_strsplit.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tutil.c_strsplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @strsplit(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 4, i32* %7, align 4
  %12 = load i32, i32* @POINTER_BYTES, align 4
  %13 = load i32, i32* %7, align 4
  %14 = mul nsw i32 %12, %13
  %15 = call i8** @malloc(i32 %14)
  store i8** %15, i8*** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* @strsep(i8** %4, i8* %16)
  store i8* %17, i8** %9, align 8
  br label %18

18:                                               ; preds = %48, %3
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %51

21:                                               ; preds = %18
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @strlen(i8* %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %48

27:                                               ; preds = %21
  %28 = load i8*, i8** %9, align 8
  %29 = load i8**, i8*** %8, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8*, i8** %29, i64 %33
  store i8* %28, i8** %34, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %27
  %40 = load i32, i32* %7, align 4
  %41 = shl i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load i8**, i8*** %8, align 8
  %43 = load i32, i32* @POINTER_BYTES, align 4
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 %43, %44
  %46 = call i8** @realloc(i8** %42, i32 %45)
  store i8** %46, i8*** %8, align 8
  br label %47

47:                                               ; preds = %39, %27
  br label %48

48:                                               ; preds = %47, %26
  %49 = load i8*, i8** %5, align 8
  %50 = call i8* @strsep(i8** %4, i8* %49)
  store i8* %50, i8** %9, align 8
  br label %18

51:                                               ; preds = %18
  %52 = load i8**, i8*** %8, align 8
  ret i8** %52
}

declare dso_local i8** @malloc(i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8** @realloc(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
