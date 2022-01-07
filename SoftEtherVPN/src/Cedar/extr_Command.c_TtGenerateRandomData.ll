; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_TtGenerateRandomData.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_TtGenerateRandomData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRAFFIC_BUF_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TtGenerateRandomData(i8** %0, i64* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i8**, i8*** %3, align 8
  %9 = icmp eq i8** %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i64*, i64** %4, align 8
  %12 = icmp eq i64* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  br label %48

14:                                               ; preds = %10
  %15 = load i64, i64* @TRAFFIC_BUF_SIZE, align 8
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i8* @Malloc(i64 %16)
  store i8* %17, i8** %5, align 8
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %40, %14
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = call i32 (...) @rand()
  %24 = srem i32 %23, 256
  %25 = trunc i32 %24 to i8
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8 %25, i8* %28, align 1
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 33
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load i8*, i8** %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8 95, i8* %38, align 1
  br label %39

39:                                               ; preds = %35, %22
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %7, align 8
  br label %18

43:                                               ; preds = %18
  %44 = load i8*, i8** %5, align 8
  %45 = load i8**, i8*** %3, align 8
  store i8* %44, i8** %45, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64*, i64** %4, align 8
  store i64 %46, i64* %47, align 8
  br label %48

48:                                               ; preds = %43, %13
  ret void
}

declare dso_local i8* @Malloc(i64) #1

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
