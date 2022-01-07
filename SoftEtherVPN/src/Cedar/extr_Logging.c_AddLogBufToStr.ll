; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Logging.c_AddLogBufToStr.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Logging.c_AddLogBufToStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddLogBufToStr(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* @MAX_SIZE, align 4
  %12 = mul nsw i32 %11, 2
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  store i8* null, i8** %9, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %3
  store i32 1, i32* %10, align 4
  br label %55

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @IsEmptyStr(i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 1, i32* %10, align 4
  br label %55

27:                                               ; preds = %22
  %28 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 0, i8* %28, align 16
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @IsEmptyStr(i8* %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = call i64 @StrLen(i8* %15)
  %34 = getelementptr inbounds i8, i8* %15, i64 %33
  store i8* %34, i8** %9, align 8
  %35 = trunc i64 %13 to i32
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @StrCat(i8* %15, i32 %35, i8* %36)
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @MakeSafeLogStr(i8* %38)
  %40 = trunc i64 %13 to i32
  %41 = call i32 @StrCat(i8* %15, i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %32, %27
  %43 = call i64 @StrLen(i8* %15)
  %44 = getelementptr inbounds i8, i8* %15, i64 %43
  store i8* %44, i8** %9, align 8
  %45 = trunc i64 %13 to i32
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @StrCat(i8* %15, i32 %45, i8* %46)
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @MakeSafeLogStr(i8* %48)
  %50 = trunc i64 %13 to i32
  %51 = call i32 @StrCat(i8* %15, i32 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32*, i32** %4, align 8
  %53 = call i64 @StrLen(i8* %15)
  %54 = call i32 @WriteBuf(i32* %52, i8* %15, i64 %53)
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %42, %26, %21
  %56 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %10, align 4
  switch i32 %57, label %59 [
    i32 0, label %58
    i32 1, label %58
  ]

58:                                               ; preds = %55, %55
  ret void

59:                                               ; preds = %55
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IsEmptyStr(i8*) #2

declare dso_local i64 @StrLen(i8*) #2

declare dso_local i32 @StrCat(i8*, i32, i8*) #2

declare dso_local i32 @MakeSafeLogStr(i8*) #2

declare dso_local i32 @WriteBuf(i32*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
