; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_option_list.c_read_option.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_option_list.c_read_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_option(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %7, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %32, %2
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 61
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load i8*, i8** %4, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8 0, i8* %26, align 1
  %27 = load i8*, i8** %4, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  store i8* %30, i8** %8, align 8
  br label %35

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %6, align 8
  br label %12

35:                                               ; preds = %23, %12
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = sub i64 %37, 1
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %47

41:                                               ; preds = %35
  %42 = load i8*, i8** %4, align 8
  store i8* %42, i8** %9, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @option_insert(i32* %43, i8* %44, i8* %45)
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %41, %40
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @option_insert(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
