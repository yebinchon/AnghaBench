; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_get_message.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_get_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**)* @smtp_get_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smtp_get_message(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @strlen(i8* %7)
  store i64 %8, i64* %5, align 8
  store i8* null, i8** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ugt i64 %9, 4
  br i1 %10, label %11, label %78

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = sub i64 %12, 4
  store i64 %13, i64* %5, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 4
  store i8* %15, i8** %6, align 8
  br label %16

16:                                               ; preds = %29, %11
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 32
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 9
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i1 [ true, %16 ], [ %25, %21 ]
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %28
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, -1
  store i64 %33, i64* %5, align 8
  br label %16

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %68, %34
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %5, align 8
  %38 = icmp ne i64 %36, 0
  br i1 %38, label %39, label %69

39:                                               ; preds = %35
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 13
  br i1 %45, label %46, label %68

46:                                               ; preds = %39
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 10
  br i1 %52, label %53, label %68

53:                                               ; preds = %46
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 32
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 9
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %69

68:                                               ; preds = %60, %53, %46, %39
  br label %35

69:                                               ; preds = %67, %35
  %70 = load i64, i64* %5, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %5, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i8*, i8** %6, align 8
  %75 = load i64, i64* %5, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8 0, i8* %76, align 1
  br label %77

77:                                               ; preds = %73, %69
  br label %82

78:                                               ; preds = %2
  %79 = load i8*, i8** %3, align 8
  %80 = load i64, i64* %5, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %6, align 8
  br label %82

82:                                               ; preds = %78, %77
  %83 = load i8*, i8** %6, align 8
  %84 = load i8**, i8*** %4, align 8
  store i8* %83, i8** %84, align 8
  ret void
}

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
