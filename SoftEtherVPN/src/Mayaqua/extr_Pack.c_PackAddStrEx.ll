; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_PackAddStrEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_PackAddStrEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32**, i32, i32 }

@VALUE_STR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @PackAddStrEx(i32* %0, i8* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %5
  %17 = load i8*, i8** %8, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** %9, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %11, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %16, %5
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  br label %98

26:                                               ; preds = %22
  %27 = load i8*, i8** %9, align 8
  %28 = call i32* @NewStrValue(i8* %27)
  store i32* %28, i32** %12, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* @VALUE_STR, align 4
  %32 = call %struct.TYPE_5__* @GetElement(i32* %29, i8* %30, i32 %31)
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %13, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %35, label %61

35:                                               ; preds = %26
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32**, i32*** %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @VALUE_STR, align 4
  %49 = call i32 @FreeValue(i32* %47, i32 %48)
  %50 = load i32*, i32** %12, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32**, i32*** %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds i32*, i32** %53, i64 %54
  store i32* %50, i32** %55, align 8
  br label %60

56:                                               ; preds = %35
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* @VALUE_STR, align 4
  %59 = call i32 @FreeValue(i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %41
  br label %94

61:                                               ; preds = %26
  %62 = call i8* @ZeroMallocEx(i32 32, i32 1)
  %63 = bitcast i8* %62 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %13, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @StrCpy(i32 %66, i32 4, i8* %67)
  %69 = load i64, i64* %11, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* @VALUE_STR, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load i64, i64* %11, align 8
  %76 = mul i64 8, %75
  %77 = trunc i64 %76 to i32
  %78 = call i8* @ZeroMallocEx(i32 %77, i32 1)
  %79 = bitcast i8* %78 to i32**
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  store i32** %79, i32*** %81, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = load i32**, i32*** %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds i32*, i32** %85, i64 %86
  store i32* %82, i32** %87, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %90 = call i32 @AddElement(i32* %88, %struct.TYPE_5__* %89)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %61
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  br label %98

93:                                               ; preds = %61
  br label %94

94:                                               ; preds = %93, %60
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store i32 1, i32* %96, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %97, %struct.TYPE_5__** %6, align 8
  br label %98

98:                                               ; preds = %94, %92, %25
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  ret %struct.TYPE_5__* %99
}

declare dso_local i32* @NewStrValue(i8*) #1

declare dso_local %struct.TYPE_5__* @GetElement(i32*, i8*, i32) #1

declare dso_local i32 @FreeValue(i32*, i32) #1

declare dso_local i8* @ZeroMallocEx(i32, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @AddElement(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
