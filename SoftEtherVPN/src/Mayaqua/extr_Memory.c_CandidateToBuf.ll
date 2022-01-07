; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_CandidateToBuf.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_CandidateToBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CandidateToBuf(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %52

10:                                               ; preds = %1
  %11 = call i32* (...) @NewBuf()
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @LIST_NUM(i32* %13)
  %15 = call i32 @WriteBufInt(i32* %12, i64 %14)
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %45, %10
  %17 = load i64, i64* %5, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @LIST_NUM(i32* %18)
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %16
  %22 = load i32*, i32** %3, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call %struct.TYPE_3__* @LIST_DATA(i32* %22, i64 %23)
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %6, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @WriteBufInt64(i32* %25, i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @UniStrLen(i32 %33)
  %35 = call i32 @WriteBufInt(i32* %30, i64 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @UniStrSize(i32 %42)
  %44 = call i32 @WriteBuf(i32* %36, i32 %39, i32 %43)
  br label %45

45:                                               ; preds = %21
  %46 = load i64, i64* %5, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %5, align 8
  br label %16

48:                                               ; preds = %16
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @SeekBuf(i32* %49, i32 0, i32 0)
  %51 = load i32*, i32** %4, align 8
  store i32* %51, i32** %2, align 8
  br label %52

52:                                               ; preds = %48, %9
  %53 = load i32*, i32** %2, align 8
  ret i32* %53
}

declare dso_local i32* @NewBuf(...) #1

declare dso_local i32 @WriteBufInt(i32*, i64) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_3__* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @WriteBufInt64(i32*, i32) #1

declare dso_local i64 @UniStrLen(i32) #1

declare dso_local i32 @WriteBuf(i32*, i32, i32) #1

declare dso_local i32 @UniStrSize(i32) #1

declare dso_local i32 @SeekBuf(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
