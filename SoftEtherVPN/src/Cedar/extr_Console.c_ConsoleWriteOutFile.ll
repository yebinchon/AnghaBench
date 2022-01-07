; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_ConsoleWriteOutFile.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_ConsoleWriteOutFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ConsoleWriteOutFile(%struct.TYPE_5__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %3
  br label %67

18:                                               ; preds = %14
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %7, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %67

25:                                               ; preds = %18
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %67

30:                                               ; preds = %25
  %31 = load i8*, i8** %5, align 8
  %32 = call i8* @UniNormalizeCrlf(i8* %31)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @CalcUniToUtf8(i8* %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = add nsw i64 %35, 1
  %37 = call i8* @ZeroMalloc(i64 %36)
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add nsw i64 %39, 1
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @UniToUtf8(i8* %38, i64 %40, i8* %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @FileWrite(i32* %45, i8* %46, i64 %47)
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @UniEndWith(i8* %49, i8* bitcast ([2 x i32]* @.str to i8*))
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %30
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i64 @StrLen(i8* %59)
  %61 = call i32 @FileWrite(i32* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %55, %52, %30
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @Free(i8* %63)
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @Free(i8* %65)
  br label %67

67:                                               ; preds = %17, %62, %25, %18
  ret void
}

declare dso_local i8* @UniNormalizeCrlf(i8*) #1

declare dso_local i64 @CalcUniToUtf8(i8*) #1

declare dso_local i8* @ZeroMalloc(i64) #1

declare dso_local i32 @UniToUtf8(i8*, i64, i8*) #1

declare dso_local i32 @FileWrite(i32*, i8*, i64) #1

declare dso_local i32 @UniEndWith(i8*, i8*) #1

declare dso_local i64 @StrLen(i8*) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
