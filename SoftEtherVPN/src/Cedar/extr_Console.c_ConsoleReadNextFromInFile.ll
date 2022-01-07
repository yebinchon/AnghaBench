; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_ConsoleReadNextFromInFile.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_ConsoleReadNextFromInFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ConsoleReadNextFromInFile(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = icmp eq %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %58

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %4, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32* null, i32** %2, align 8
  br label %58

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21, %55
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i8* @CfgReadNextLine(i32* %25)
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32* null, i32** %2, align 8
  br label %58

30:                                               ; preds = %22
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @Trim(i8* %31)
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @IsEmptyStr(i8* %33)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load i8*, i8** %5, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @StrLen(i8* %39)
  %41 = call i64 @CalcUtf8ToUni(i32* %38, i32 %40)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = add nsw i64 %42, 32
  %44 = call i32* @ZeroMalloc(i64 %43)
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @StrLen(i8* %49)
  %51 = call i32 @Utf8ToUni(i32* %45, i64 %46, i32* %48, i32 %50)
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @Free(i8* %52)
  %54 = load i32*, i32** %7, align 8
  store i32* %54, i32** %2, align 8
  br label %58

55:                                               ; preds = %30
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @Free(i8* %56)
  br label %22

58:                                               ; preds = %36, %29, %20, %10
  %59 = load i32*, i32** %2, align 8
  ret i32* %59
}

declare dso_local i8* @CfgReadNextLine(i32*) #1

declare dso_local i32 @Trim(i8*) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i64 @CalcUtf8ToUni(i32*, i32) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i32* @ZeroMalloc(i64) #1

declare dso_local i32 @Utf8ToUni(i32*, i64, i32*, i32) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
