; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Wpc.c_Safe64ToBase64.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Wpc.c_Safe64ToBase64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Safe64ToBase64(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %37

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @StrLen(i8* %9)
  store i64 %10, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %34, %8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = load i8*, i8** %2, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  switch i32 %20, label %33 [
    i32 40, label %21
    i32 41, label %25
    i32 95, label %29
  ]

21:                                               ; preds = %15
  %22 = load i8*, i8** %2, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8 61, i8* %24, align 1
  br label %33

25:                                               ; preds = %15
  %26 = load i8*, i8** %2, align 8
  %27 = load i64, i64* %3, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8 43, i8* %28, align 1
  br label %33

29:                                               ; preds = %15
  %30 = load i8*, i8** %2, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8 47, i8* %32, align 1
  br label %33

33:                                               ; preds = %15, %29, %25, %21
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %3, align 8
  br label %11

37:                                               ; preds = %7, %11
  ret void
}

declare dso_local i64 @StrLen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
