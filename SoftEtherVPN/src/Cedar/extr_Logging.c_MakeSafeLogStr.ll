; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Logging.c_MakeSafeLogStr.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Logging.c_MakeSafeLogStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MakeSafeLogStr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %44

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @EnPrintableAsciiStr(i8* %9, i8 signext 63)
  %11 = load i8*, i8** %2, align 8
  %12 = call i64 @StrLen(i8* %11)
  store i64 %12, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %13

13:                                               ; preds = %41, %8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load i8*, i8** %2, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 44
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i8*, i8** %2, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8 46, i8* %27, align 1
  br label %40

28:                                               ; preds = %17
  %29 = load i8*, i8** %2, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 32
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i8*, i8** %2, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8 95, i8* %38, align 1
  br label %39

39:                                               ; preds = %35, %28
  br label %40

40:                                               ; preds = %39, %24
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %3, align 8
  br label %13

44:                                               ; preds = %7, %13
  ret void
}

declare dso_local i32 @EnPrintableAsciiStr(i8*, i8 signext) #1

declare dso_local i64 @StrLen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
