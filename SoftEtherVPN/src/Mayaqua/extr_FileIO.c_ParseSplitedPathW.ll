; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_ParseSplitedPathW.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_ParseSplitedPathW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8** }

@.str = private unnamed_addr constant [2 x i32] [i32 58, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @ParseSplitedPathW(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @UniCopyStr(i8* %7)
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @UniTrim(i8* %9)
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @UniTrimCrlf(i8* %11)
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @UniTrim(i8* %13)
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @UniTrimCrlf(i8* %15)
  store i8* bitcast ([2 x i32]* @.str to i8*), i8** %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call %struct.TYPE_4__* @UniParseToken(i8* %17, i8* %18)
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %3, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %62

22:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %23

23:                                               ; preds = %58, %22
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %23
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i8**, i8*** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @UniTrim(i8* %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i8**, i8*** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @UniTrimCrlf(i8* %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i8**, i8*** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @UniTrim(i8* %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i8**, i8*** %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds i8*, i8** %53, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @UniTrimCrlf(i8* %56)
  br label %58

58:                                               ; preds = %29
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %6, align 8
  br label %23

61:                                               ; preds = %23
  br label %62

62:                                               ; preds = %61, %1
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @Free(i8* %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %65
}

declare dso_local i8* @UniCopyStr(i8*) #1

declare dso_local i32 @UniTrim(i8*) #1

declare dso_local i32 @UniTrimCrlf(i8*) #1

declare dso_local %struct.TYPE_4__* @UniParseToken(i8*, i8*) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
