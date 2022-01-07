; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_PackAddDataEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_PackAddDataEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32**, i32, i32 }

@VALUE_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @PackAddDataEx(i32* %0, i8* %1, i8* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %6
  %19 = load i8*, i8** %10, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** %9, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %13, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21, %18, %6
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  br label %101

28:                                               ; preds = %24
  %29 = load i8*, i8** %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i32* @NewDataValue(i8* %29, i64 %30)
  store i32* %31, i32** %14, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* @VALUE_DATA, align 4
  %35 = call %struct.TYPE_5__* @GetElement(i32* %32, i8* %33, i32 %34)
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %15, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %37 = icmp ne %struct.TYPE_5__* %36, null
  br i1 %37, label %38, label %64

38:                                               ; preds = %28
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %13, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i32**, i32*** %46, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds i32*, i32** %47, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @VALUE_DATA, align 4
  %52 = call i32 @FreeValue(i32* %50, i32 %51)
  %53 = load i32*, i32** %14, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32**, i32*** %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds i32*, i32** %56, i64 %57
  store i32* %53, i32** %58, align 8
  br label %63

59:                                               ; preds = %38
  %60 = load i32*, i32** %14, align 8
  %61 = load i32, i32* @VALUE_DATA, align 4
  %62 = call i32 @FreeValue(i32* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %44
  br label %97

64:                                               ; preds = %28
  %65 = call i8* @ZeroMallocEx(i32 32, i32 1)
  %66 = bitcast i8* %65 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %15, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @StrCpy(i32 %69, i32 4, i8* %70)
  %72 = load i64, i64* %13, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* @VALUE_DATA, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load i64, i64* %13, align 8
  %79 = mul i64 8, %78
  %80 = trunc i64 %79 to i32
  %81 = call i8* @ZeroMallocEx(i32 %80, i32 1)
  %82 = bitcast i8* %81 to i32**
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  store i32** %82, i32*** %84, align 8
  %85 = load i32*, i32** %14, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load i32**, i32*** %87, align 8
  %89 = load i64, i64* %12, align 8
  %90 = getelementptr inbounds i32*, i32** %88, i64 %89
  store i32* %85, i32** %90, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %93 = call i32 @AddElement(i32* %91, %struct.TYPE_5__* %92)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %64
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  br label %101

96:                                               ; preds = %64
  br label %97

97:                                               ; preds = %96, %63
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  store i32 1, i32* %99, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %100, %struct.TYPE_5__** %7, align 8
  br label %101

101:                                              ; preds = %97, %95, %27
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  ret %struct.TYPE_5__* %102
}

declare dso_local i32* @NewDataValue(i8*, i64) #1

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
