; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_PackAddInt64Ex.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_PackAddInt64Ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32**, i32, i32 }

@VALUE_INT64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @PackAddInt64Ex(i32* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %5
  %17 = load i8*, i8** %8, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* %11, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16, %5
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  br label %95

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  %25 = call i32* @NewInt64Value(i32 %24)
  store i32* %25, i32** %12, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* @VALUE_INT64, align 4
  %29 = call %struct.TYPE_5__* @GetElement(i32* %26, i8* %27, i32 %28)
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %13, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %58

32:                                               ; preds = %23
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32**, i32*** %40, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @VALUE_INT64, align 4
  %46 = call i32 @FreeValue(i32* %44, i32 %45)
  %47 = load i32*, i32** %12, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32**, i32*** %49, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds i32*, i32** %50, i64 %51
  store i32* %47, i32** %52, align 8
  br label %57

53:                                               ; preds = %32
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* @VALUE_INT64, align 4
  %56 = call i32 @FreeValue(i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %38
  br label %91

58:                                               ; preds = %23
  %59 = call i8* @ZeroMallocEx(i32 32, i32 1)
  %60 = bitcast i8* %59 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %13, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @StrCpy(i32 %63, i32 4, i8* %64)
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load i32, i32* @VALUE_INT64, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load i64, i64* %11, align 8
  %73 = mul i64 8, %72
  %74 = trunc i64 %73 to i32
  %75 = call i8* @ZeroMallocEx(i32 %74, i32 1)
  %76 = bitcast i8* %75 to i32**
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  store i32** %76, i32*** %78, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i32**, i32*** %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds i32*, i32** %82, i64 %83
  store i32* %79, i32** %84, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %87 = call i32 @AddElement(i32* %85, %struct.TYPE_5__* %86)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %58
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  br label %95

90:                                               ; preds = %58
  br label %91

91:                                               ; preds = %90, %57
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  store i32 1, i32* %93, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %94, %struct.TYPE_5__** %6, align 8
  br label %95

95:                                               ; preds = %91, %89, %22
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  ret %struct.TYPE_5__* %96
}

declare dso_local i32* @NewInt64Value(i32) #1

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
