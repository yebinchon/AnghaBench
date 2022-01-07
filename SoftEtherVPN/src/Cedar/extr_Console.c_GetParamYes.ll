; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_GetParamYes.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_GetParamYes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"t\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetParamYes(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [64 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @GetParamStr(i32* %12, i8* %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %39

18:                                               ; preds = %11
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @StrCpy(i8* %19, i32 64, i8* %20)
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %23 = call i32 @Trim(i8* %22)
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %25 = call i64 @StartWith(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %39

28:                                               ; preds = %18
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %30 = call i64 @StartWith(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %39

33:                                               ; preds = %28
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %35 = call i64 @ToInt(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %39

38:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %37, %32, %27, %17, %10
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i8* @GetParamStr(i32*, i8*) #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

declare dso_local i32 @Trim(i8*) #1

declare dso_local i64 @StartWith(i8*, i8*) #1

declare dso_local i64 @ToInt(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
