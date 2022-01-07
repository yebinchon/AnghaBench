; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Internat.c_UniListToTokenList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Internat.c_UniListToTokenList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @UniListToTokenList(i32* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %2, align 8
  br label %45

9:                                                ; preds = %1
  %10 = call i8* @ZeroMalloc(i32 16)
  %11 = bitcast i8* %10 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @LIST_NUM(i32* %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = mul i64 8, %18
  %20 = trunc i64 %19 to i32
  %21 = call i8* @ZeroMalloc(i32 %20)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  store i64 0, i64* %4, align 8
  br label %25

25:                                               ; preds = %40, %9
  %26 = load i64, i64* %4, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @LIST_NUM(i32* %27)
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load i32*, i32** %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @LIST_DATA(i32* %31, i64 %32)
  %34 = call i32 @UniCopyStr(i32 %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %34, i32* %39, align 4
  br label %40

40:                                               ; preds = %30
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %4, align 8
  br label %25

43:                                               ; preds = %25
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %2, align 8
  br label %45

45:                                               ; preds = %43, %8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  ret %struct.TYPE_3__* %46
}

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i32 @UniCopyStr(i32) #1

declare dso_local i32 @LIST_DATA(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
