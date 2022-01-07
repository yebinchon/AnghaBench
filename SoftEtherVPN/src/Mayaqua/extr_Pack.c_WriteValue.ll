; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_WriteValue.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_WriteValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WriteValue(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = icmp eq %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %3
  br label %81

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %81 [
    i32 131, label %18
    i32 130, label %24
    i32 132, label %30
    i32 129, label %44
    i32 128, label %58
  ]

18:                                               ; preds = %16
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @WriteBufInt(i32* %19, i32 %22)
  br label %81

24:                                               ; preds = %16
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @WriteBufInt64(i32* %25, i32 %28)
  br label %81

30:                                               ; preds = %16
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @WriteBufInt(i32* %31, i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @WriteBuf(i32* %36, i32* %39, i32 %42)
  br label %81

44:                                               ; preds = %16
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @StrLen(i32* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @WriteBufInt(i32* %49, i32 %50)
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @WriteBuf(i32* %52, i32* %55, i32 %56)
  br label %81

58:                                               ; preds = %16
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @CalcUniToUtf8(i32 %61)
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32* @ZeroMalloc(i32 %64)
  store i32* %65, i32** %8, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @UniToUtf8(i32* %66, i32 %67, i32 %70)
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @WriteBufInt(i32* %72, i32 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @WriteBuf(i32* %75, i32* %76, i32 %77)
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @Free(i32* %79)
  br label %81

81:                                               ; preds = %15, %16, %58, %44, %30, %24, %18
  ret void
}

declare dso_local i32 @WriteBufInt(i32*, i32) #1

declare dso_local i32 @WriteBufInt64(i32*, i32) #1

declare dso_local i32 @WriteBuf(i32*, i32*, i32) #1

declare dso_local i32 @StrLen(i32*) #1

declare dso_local i32 @CalcUniToUtf8(i32) #1

declare dso_local i32* @ZeroMalloc(i32) #1

declare dso_local i32 @UniToUtf8(i32*, i32, i32) #1

declare dso_local i32 @Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
