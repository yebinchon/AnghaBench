; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_database_info.c_database_cursor_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_database_info.c_database_cursor_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i8*)* @database_cursor_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @database_cursor_open(i32* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32* null, i32** %11, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i64 @libretrodb_open(i8* %12, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %54

17:                                               ; preds = %4
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32*, i32** %6, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = call i64 @libretrodb_query_compile(i32* %21, i8* %22, i32 %24, i8** %10)
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %11, align 8
  br label %27

27:                                               ; preds = %20, %17
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %45

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i64 @libretrodb_cursor_open(i32* %32, i32* %33, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %45

38:                                               ; preds = %31
  %39 = load i32*, i32** %11, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @libretrodb_query_free(i32* %42)
  br label %44

44:                                               ; preds = %41, %38
  store i32 0, i32* %5, align 4
  br label %54

45:                                               ; preds = %37, %30
  %46 = load i32*, i32** %11, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @libretrodb_query_free(i32* %49)
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @libretrodb_close(i32* %52)
  store i32 -1, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %44, %16
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i64 @libretrodb_open(i8*, i32*) #1

declare dso_local i64 @libretrodb_query_compile(i32*, i8*, i32, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @libretrodb_cursor_open(i32*, i32*, i32*) #1

declare dso_local i32 @libretrodb_query_free(i32*) #1

declare dso_local i32 @libretrodb_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
