; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_StrToIntList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_StrToIntList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8** }

@.str = private unnamed_addr constant [6 x i8] c" ,/;\09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @StrToIntList(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32* @NewIntList(i32 %9)
  store i32* %10, i32** %5, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call %struct.TYPE_4__* @ParseTokenWithoutNullStr(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %49

15:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %43, %15
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %16
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i8**, i8*** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @IsEmptyStr(i8* %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %22
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @IsNum(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @ToInt(i8* %38)
  %40 = call i32 @InsertIntDistinct(i32* %37, i32 %39)
  br label %41

41:                                               ; preds = %36, %32
  br label %42

42:                                               ; preds = %41, %22
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %7, align 8
  br label %16

46:                                               ; preds = %16
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = call i32 @FreeToken(%struct.TYPE_4__* %47)
  br label %49

49:                                               ; preds = %46, %2
  %50 = load i32*, i32** %5, align 8
  ret i32* %50
}

declare dso_local i32* @NewIntList(i32) #1

declare dso_local %struct.TYPE_4__* @ParseTokenWithoutNullStr(i8*, i8*) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i64 @IsNum(i8*) #1

declare dso_local i32 @InsertIntDistinct(i32*, i32) #1

declare dso_local i32 @ToInt(i8*) #1

declare dso_local i32 @FreeToken(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
