; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_IsURLMsg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_IsURLMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32** }

@.str = private unnamed_addr constant [3 x i32] [i32 13, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [8 x i32] [i32 104, i32 116, i32 116, i32 112, i32 58, i32 47, i32 47, i32 0], align 4
@.str.2 = private unnamed_addr constant [9 x i32] [i32 104, i32 116, i32 116, i32 112, i32 115, i32 58, i32 47, i32 47, i32 0], align 4
@.str.3 = private unnamed_addr constant [7 x i32] [i32 102, i32 116, i32 112, i32 58, i32 47, i32 47, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsURLMsg(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %11, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %73

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = call %struct.TYPE_4__* @UniParseToken(i32* %17, i8* bitcast ([3 x i32]* @.str to i8*))
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %8, align 8
  store i64 0, i64* %10, align 8
  br label %19

19:                                               ; preds = %62, %16
  %20 = load i64, i64* %10, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %19
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32**, i32*** %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i32*, i32** %28, i64 %29
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @IsEmptyUniStr(i32* %32)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %25
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %11, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @UniTrim(i32* %38)
  %40 = load i64, i64* %11, align 8
  %41 = icmp eq i64 %40, 1
  br i1 %41, label %42, label %60

42:                                               ; preds = %35
  %43 = load i32*, i32** %12, align 8
  %44 = call i64 @UniStartWith(i32* %43, i8* bitcast ([8 x i32]* @.str.1 to i8*))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i32*, i32** %12, align 8
  %48 = call i64 @UniStartWith(i32* %47, i8* bitcast ([9 x i32]* @.str.2 to i8*))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32*, i32** %12, align 8
  %52 = call i64 @UniStartWith(i32* %51, i8* bitcast ([7 x i32]* @.str.3 to i8*))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50, %46, %42
  store i32 1, i32* %9, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @UniToStr(i8* %55, i64 %56, i32* %57)
  br label %59

59:                                               ; preds = %54, %50
  br label %60

60:                                               ; preds = %59, %35
  br label %61

61:                                               ; preds = %60, %25
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %10, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %10, align 8
  br label %19

65:                                               ; preds = %19
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %66, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %68, %65
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %71 = call i32 @UniFreeToken(%struct.TYPE_4__* %70)
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %69, %15
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_4__* @UniParseToken(i32*, i8*) #1

declare dso_local i32 @IsEmptyUniStr(i32*) #1

declare dso_local i32 @UniTrim(i32*) #1

declare dso_local i64 @UniStartWith(i32*, i8*) #1

declare dso_local i32 @UniToStr(i8*, i64, i32*) #1

declare dso_local i32 @UniFreeToken(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
