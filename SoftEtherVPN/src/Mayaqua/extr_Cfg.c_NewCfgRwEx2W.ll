; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_NewCfgRwEx2W.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_NewCfgRwEx2W.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @NewCfgRwEx2W(i32** %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32**, i32*** %6, align 8
  %17 = icmp eq i32** %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %90

19:                                               ; preds = %15
  %20 = load i32*, i32** %7, align 8
  %21 = call i32* @CfgReadW(i32* %20)
  store i32* %21, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %57

24:                                               ; preds = %19
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @UniIsEmptyStr(i32* %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32*, i32** %9, align 8
  %30 = call i32* @CfgReadW(i32* %29)
  store i32* %30, i32** %11, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 1, i32* %12, align 4
  br label %58

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %24
  %36 = call %struct.TYPE_4__* @ZeroMalloc(i32 40)
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %10, align 8
  %37 = call i8* (...) @NewLock()
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i8* @CopyUniStr(i32* %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i8* @CopyUniToStr(i32* %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i8* @FileCreateW(i32* %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load i32**, i32*** %6, align 8
  store i32* null, i32** %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %5, align 8
  br label %90

57:                                               ; preds = %19
  br label %58

58:                                               ; preds = %57, %33
  %59 = call %struct.TYPE_4__* @ZeroMalloc(i32 40)
  store %struct.TYPE_4__* %59, %struct.TYPE_4__** %10, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i8* @CopyUniStr(i32* %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i8* @CopyUniToStr(i32* %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* %12, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %58
  %71 = load i32*, i32** %7, align 8
  %72 = call i8* @FileOpenW(i32* %71, i32 0)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  br label %80

75:                                               ; preds = %58
  %76 = load i32*, i32** %7, align 8
  %77 = call i8* @FileCreateW(i32* %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %75, %70
  %81 = call i8* (...) @NewLock()
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load i32**, i32*** %6, align 8
  store i32* %84, i32** %85, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %89, %struct.TYPE_4__** %5, align 8
  br label %90

90:                                               ; preds = %80, %35, %18
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %91
}

declare dso_local i32* @CfgReadW(i32*) #1

declare dso_local i32 @UniIsEmptyStr(i32*) #1

declare dso_local %struct.TYPE_4__* @ZeroMalloc(i32) #1

declare dso_local i8* @NewLock(...) #1

declare dso_local i8* @CopyUniStr(i32*) #1

declare dso_local i8* @CopyUniToStr(i32*) #1

declare dso_local i8* @FileCreateW(i32*) #1

declare dso_local i8* @FileOpenW(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
