; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Internat.c_UniGetLines.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Internat.c_UniGetLines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @UniGetLines(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32* (...) @UniNullToken()
  store i32* %18, i32** %2, align 8
  br label %94

19:                                               ; preds = %1
  %20 = call i32* @NewListFast(i32* null)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @UniStrLen(i32* %21)
  store i64 %22, i64* %5, align 8
  %23 = call %struct.TYPE_6__* (...) @NewBuf()
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %6, align 8
  store i64 0, i64* %4, align 8
  br label %24

24:                                               ; preds = %71, %19
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %74

28:                                               ; preds = %24
  %29 = load i32*, i32** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 13
  br i1 %34, label %35, label %46

35:                                               ; preds = %28
  %36 = load i32*, i32** %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = add i64 %37, 1
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i64, i64* %4, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %4, align 8
  br label %45

45:                                               ; preds = %42, %35
  store i32 1, i32* %10, align 4
  br label %51

46:                                               ; preds = %28
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 10
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 1, i32* %10, align 4
  br label %50

50:                                               ; preds = %49, %46
  br label %51

51:                                               ; preds = %50, %45
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  store i32 0, i32* %11, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = call i32 @WriteBuf(%struct.TYPE_6__* %55, i32* %11, i32 4)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i32*
  store i32* %60, i32** %12, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @UniCopyStr(i32* %62)
  %64 = call i32 @Add(i32* %61, i32 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = call i32 @ClearBuf(%struct.TYPE_6__* %65)
  br label %70

67:                                               ; preds = %51
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = call i32 @WriteBuf(%struct.TYPE_6__* %68, i32* %9, i32 4)
  br label %70

70:                                               ; preds = %67, %54
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %4, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %4, align 8
  br label %24

74:                                               ; preds = %24
  store i32 0, i32* %13, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = call i32 @WriteBuf(%struct.TYPE_6__* %75, i32* %13, i32 4)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i32*
  store i32* %80, i32** %14, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = call i32 @UniCopyStr(i32* %82)
  %84 = call i32 @Add(i32* %81, i32 %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = call i32 @ClearBuf(%struct.TYPE_6__* %85)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %88 = call i32 @FreeBuf(%struct.TYPE_6__* %87)
  %89 = load i32*, i32** %7, align 8
  %90 = call i32* @UniListToTokenList(i32* %89)
  store i32* %90, i32** %8, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @UniFreeStrList(i32* %91)
  %93 = load i32*, i32** %8, align 8
  store i32* %93, i32** %2, align 8
  br label %94

94:                                               ; preds = %74, %17
  %95 = load i32*, i32** %2, align 8
  ret i32* %95
}

declare dso_local i32* @UniNullToken(...) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i64 @UniStrLen(i32*) #1

declare dso_local %struct.TYPE_6__* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @Add(i32*, i32) #1

declare dso_local i32 @UniCopyStr(i32*) #1

declare dso_local i32 @ClearBuf(%struct.TYPE_6__*) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_6__*) #1

declare dso_local i32* @UniListToTokenList(i32*) #1

declare dso_local i32 @UniFreeStrList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
