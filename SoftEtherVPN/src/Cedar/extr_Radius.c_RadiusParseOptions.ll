; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Radius.c_RadiusParseOptions.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Radius.c_RadiusParseOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @RadiusParseOptions(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [16 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [256 x i32], align 16
  %12 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %73

16:                                               ; preds = %1
  %17 = call i32* @NewList(i32* null)
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @ReadBuf(i32* %18, i32* %5, i32 1)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @ReadBuf(i32* %20, i32* %6, i32 1)
  store i32 0, i32* %7, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @ReadBuf(i32* %22, i32* %7, i32 2)
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @Endian16(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %28 = call i32 @ReadBuf(i32* %26, i32* %27, i32 16)
  br label %29

29:                                               ; preds = %16, %53
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @ReadBuf(i32* %30, i32* %9, i32 1)
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %71

34:                                               ; preds = %29
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @ReadBuf(i32* %35, i32* %10, i32 1)
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %71

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  %41 = icmp sle i32 %40, 2
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %71

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = sub nsw i32 %44, 2
  store i32 %45, i32* %10, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 0
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @ReadBuf(i32* %46, i32* %47, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %71

53:                                               ; preds = %43
  %54 = call %struct.TYPE_4__* @ZeroMalloc(i32 12)
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %12, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @Clone(i32* %61, i32 %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %70 = call i32 @Add(i32* %68, %struct.TYPE_4__* %69)
  br label %29

71:                                               ; preds = %52, %42, %38, %33
  %72 = load i32*, i32** %4, align 8
  store i32* %72, i32** %2, align 8
  br label %73

73:                                               ; preds = %71, %15
  %74 = load i32*, i32** %2, align 8
  ret i32* %74
}

declare dso_local i32* @NewList(i32*) #1

declare dso_local i32 @ReadBuf(i32*, i32*, i32) #1

declare dso_local i32 @Endian16(i32) #1

declare dso_local %struct.TYPE_4__* @ZeroMalloc(i32) #1

declare dso_local i32 @Clone(i32*, i32) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
