; ModuleID = '/home/carl/AnghaBench/disque/src/extr_sds.c_sdsll2str.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_sds.c_sdsll2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdsll2str(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = sub nsw i64 0, %12
  br label %16

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i64 [ %13, %11 ], [ %15, %14 ]
  store i64 %17, i64* %7, align 8
  %18 = load i8*, i8** %3, align 8
  store i8* %18, i8** %5, align 8
  br label %19

19:                                               ; preds = %28, %16
  %20 = load i64, i64* %7, align 8
  %21 = urem i64 %20, 10
  %22 = add i64 48, %21
  %23 = trunc i64 %22 to i8
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %5, align 8
  store i8 %23, i8* %24, align 1
  %26 = load i64, i64* %7, align 8
  %27 = udiv i64 %26, 10
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %19
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %19, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %4, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %5, align 8
  store i8 45, i8* %35, align 1
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  store i64 %42, i64* %8, align 8
  %43 = load i8*, i8** %5, align 8
  store i8 0, i8* %43, align 1
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 -1
  store i8* %45, i8** %5, align 8
  br label %46

46:                                               ; preds = %50, %37
  %47 = load i8*, i8** %3, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = icmp ult i8* %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i8*, i8** %3, align 8
  %52 = load i8, i8* %51, align 1
  store i8 %52, i8* %6, align 1
  %53 = load i8*, i8** %5, align 8
  %54 = load i8, i8* %53, align 1
  %55 = load i8*, i8** %3, align 8
  store i8 %54, i8* %55, align 1
  %56 = load i8, i8* %6, align 1
  %57 = load i8*, i8** %5, align 8
  store i8 %56, i8* %57, align 1
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %3, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 -1
  store i8* %61, i8** %5, align 8
  br label %46

62:                                               ; preds = %46
  %63 = load i64, i64* %8, align 8
  %64 = trunc i64 %63 to i32
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
