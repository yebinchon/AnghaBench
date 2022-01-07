; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_IsOmissionName.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_IsOmissionName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsOmissionName(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [128 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %48

13:                                               ; preds = %9
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @IsAllUpperStr(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %48

18:                                               ; preds = %13
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @GetOmissionName(i8* %19, i32 128, i8* %20)
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %23 = call i64 @IsEmptyStr(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %48

26:                                               ; preds = %18
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @StartWith(i8* %27, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %48

32:                                               ; preds = %26
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %35 = call i64 @StartWith(i8* %33, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %41 = call i64 @StrLen(i8* %40)
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = call i64 @EndWith(i8* %38, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %48

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %32
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %45, %31, %25, %17, %12
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @IsAllUpperStr(i8*) #1

declare dso_local i32 @GetOmissionName(i8*, i32, i8*) #1

declare dso_local i64 @IsEmptyStr(i8*) #1

declare dso_local i64 @StartWith(i8*, i8*) #1

declare dso_local i64 @EndWith(i8*, i8*) #1

declare dso_local i64 @StrLen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
