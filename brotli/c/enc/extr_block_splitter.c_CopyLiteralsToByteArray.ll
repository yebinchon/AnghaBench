; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_block_splitter.c_CopyLiteralsToByteArray.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_block_splitter.c_CopyLiteralsToByteArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64, i32*, i64, i64, i32*)* @CopyLiteralsToByteArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CopyLiteralsToByteArray(%struct.TYPE_4__* %0, i64 %1, i32* %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  store i64 0, i64* %13, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %11, align 8
  %20 = and i64 %18, %19
  store i64 %20, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %21

21:                                               ; preds = %81, %6
  %22 = load i64, i64* %15, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %84

25:                                               ; preds = %21
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = load i64, i64* %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %16, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* %16, align 8
  %33 = add i64 %31, %32
  %34 = load i64, i64* %11, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %25
  %37 = load i64, i64* %11, align 8
  %38 = add i64 %37, 1
  %39 = load i64, i64* %14, align 8
  %40 = sub i64 %38, %39
  store i64 %40, i64* %17, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32*, i32** %9, align 8
  %45 = load i64, i64* %14, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i64, i64* %17, align 8
  %48 = call i32 @memcpy(i32* %43, i32* %46, i64 %47)
  store i64 0, i64* %14, align 8
  %49 = load i64, i64* %17, align 8
  %50 = load i64, i64* %13, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %13, align 8
  %52 = load i64, i64* %17, align 8
  %53 = load i64, i64* %16, align 8
  %54 = sub i64 %53, %52
  store i64 %54, i64* %16, align 8
  br label %55

55:                                               ; preds = %36, %25
  %56 = load i64, i64* %16, align 8
  %57 = icmp ugt i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load i32*, i32** %12, align 8
  %60 = load i64, i64* %13, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32*, i32** %9, align 8
  %63 = load i64, i64* %14, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i64, i64* %16, align 8
  %66 = call i32 @memcpy(i32* %61, i32* %64, i64 %65)
  %67 = load i64, i64* %16, align 8
  %68 = load i64, i64* %13, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %13, align 8
  br label %70

70:                                               ; preds = %58, %55
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* %16, align 8
  %73 = add i64 %71, %72
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %75 = load i64, i64* %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %75
  %77 = call i64 @CommandCopyLen(%struct.TYPE_4__* %76)
  %78 = add i64 %73, %77
  %79 = load i64, i64* %11, align 8
  %80 = and i64 %78, %79
  store i64 %80, i64* %14, align 8
  br label %81

81:                                               ; preds = %70
  %82 = load i64, i64* %15, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %15, align 8
  br label %21

84:                                               ; preds = %21
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @CommandCopyLen(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
