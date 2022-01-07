; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_AddCandidate.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_AddCandidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_13__*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddCandidate(i32* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = icmp eq %struct.TYPE_13__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %3
  br label %98

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 2147483647, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = call i8* @UniCopyStr(%struct.TYPE_13__* %24)
  %26 = bitcast i8* %25 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %5, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = call i32 @UniTrim(%struct.TYPE_13__* %27)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %49, %23
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @LIST_NUM(i32* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call %struct.TYPE_13__* @LIST_DATA(i32* %35, i32 %36)
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %9, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = call i64 @UniStrCmpi(%struct.TYPE_13__* %40, %struct.TYPE_13__* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = call i8* (...) @SystemTime64()
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  store i32 1, i32* %8, align 4
  br label %52

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %29

52:                                               ; preds = %44, %29
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = call %struct.TYPE_13__* @ZeroMalloc(i32 16)
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %10, align 8
  %57 = call i8* (...) @SystemTime64()
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = call i8* @UniCopyStr(%struct.TYPE_13__* %60)
  %62 = bitcast i8* %61 to %struct.TYPE_13__*
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  store %struct.TYPE_13__* %62, %struct.TYPE_13__** %64, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %67 = call i32 @Insert(i32* %65, %struct.TYPE_13__* %66)
  br label %68

68:                                               ; preds = %55, %52
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = call i32 @Free(%struct.TYPE_13__* %69)
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @LIST_NUM(i32* %71)
  %73 = load i32, i32* %6, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %81, %75
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @LIST_NUM(i32* %77)
  %79 = load i32, i32* %6, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %76
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @LIST_NUM(i32* %82)
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call %struct.TYPE_13__* @LIST_DATA(i32* %85, i32 %86)
  store %struct.TYPE_13__* %87, %struct.TYPE_13__** %12, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %90 = call i32 @Delete(i32* %88, %struct.TYPE_13__* %89)
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = call i32 @Free(%struct.TYPE_13__* %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %96 = call i32 @Free(%struct.TYPE_13__* %95)
  br label %76

97:                                               ; preds = %76
  br label %98

98:                                               ; preds = %18, %97, %68
  ret void
}

declare dso_local i8* @UniCopyStr(%struct.TYPE_13__*) #1

declare dso_local i32 @UniTrim(%struct.TYPE_13__*) #1

declare dso_local i32 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_13__* @LIST_DATA(i32*, i32) #1

declare dso_local i64 @UniStrCmpi(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i8* @SystemTime64(...) #1

declare dso_local %struct.TYPE_13__* @ZeroMalloc(i32) #1

declare dso_local i32 @Insert(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @Free(%struct.TYPE_13__*) #1

declare dso_local i32 @Delete(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
