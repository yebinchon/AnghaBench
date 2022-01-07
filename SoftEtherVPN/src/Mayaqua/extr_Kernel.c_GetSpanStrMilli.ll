; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_GetSpanStrMilli.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_GetSpanStrMilli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%u:\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%s%02u:%02u:%02u.%03u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetSpanStrMilli(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @MAX_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %45

17:                                               ; preds = %3
  %18 = trunc i64 %11 to i32
  %19 = call i32 @StrCpy(i8* %13, i32 %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  %21 = icmp sge i32 %20, 86400000
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = trunc i64 %11 to i32
  %24 = load i32, i32* %6, align 4
  %25 = sdiv i32 %24, 86400000
  %26 = call i32 (i8*, i32, i8*, ...) @Format(i8* %13, i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %22, %17
  %28 = trunc i64 %11 to i32
  %29 = load i32, i32* %6, align 4
  %30 = srem i32 %29, 86400000
  %31 = sdiv i32 %30, 3600000
  %32 = load i32, i32* %6, align 4
  %33 = srem i32 %32, 3600000
  %34 = sdiv i32 %33, 60000
  %35 = load i32, i32* %6, align 4
  %36 = srem i32 %35, 60000
  %37 = sdiv i32 %36, 1000
  %38 = load i32, i32* %6, align 4
  %39 = srem i32 %38, 1000
  %40 = call i32 (i8*, i32, i8*, ...) @Format(i8* %13, i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %13, i32 %31, i32 %34, i32 %37, i32 %39)
  %41 = call i32 @Trim(i8* %13)
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @StrCpy(i8* %42, i32 %43, i8* %13)
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %27, %16
  %46 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %9, align 4
  switch i32 %47, label %49 [
    i32 0, label %48
    i32 1, label %48
  ]

48:                                               ; preds = %45, %45
  ret void

49:                                               ; preds = %45
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @Format(i8*, i32, i8*, ...) #2

declare dso_local i32 @Trim(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
