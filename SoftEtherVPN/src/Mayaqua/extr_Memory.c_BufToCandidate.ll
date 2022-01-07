; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_BufToCandidate.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_BufToCandidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @BufToCandidate(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %68

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @ReadBufInt(i32* %16)
  store i64 %17, i64* %6, align 8
  %18 = call i32* (...) @NewCandidateList()
  store i32* %18, i32** %4, align 8
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %61, %15
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %64

23:                                               ; preds = %19
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @ReadBufInt64(i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @ReadBufInt(i32* %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp sge i64 %28, 65536
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %64

31:                                               ; preds = %23
  %32 = load i64, i64* %10, align 8
  %33 = add nsw i64 %32, 1
  %34 = mul nsw i64 %33, 2
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i8* @ZeroMalloc(i32 %36)
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i64 @ReadBuf(i32* %39, i32* %40, i64 %41)
  %43 = load i64, i64* %11, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @Free(i32* %46)
  br label %64

48:                                               ; preds = %31
  %49 = call i8* @ZeroMalloc(i32 16)
  %50 = bitcast i8* %49 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %50, %struct.TYPE_3__** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32* %54, i32** %56, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %59 = call i32 @Add(i32* %57, %struct.TYPE_3__* %58)
  br label %60

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %5, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %5, align 8
  br label %19

64:                                               ; preds = %45, %30, %19
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @Sort(i32* %65)
  %67 = load i32*, i32** %4, align 8
  store i32* %67, i32** %2, align 8
  br label %68

68:                                               ; preds = %64, %14
  %69 = load i32*, i32** %2, align 8
  ret i32* %69
}

declare dso_local i64 @ReadBufInt(i32*) #1

declare dso_local i32* @NewCandidateList(...) #1

declare dso_local i32 @ReadBufInt64(i32*) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i64 @ReadBuf(i32*, i32*, i64) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @Sort(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
