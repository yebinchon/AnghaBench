; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_encode.c_BrotliEncoderCreateInstance.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_encode.c_BrotliEncoderCreateInstance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @BrotliEncoderCreateInstance(i64 (i8*, i32)* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64 (i8*, i32)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i64 (i8*, i32)* %0, i64 (i8*, i32)** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  %9 = load i64 (i8*, i32)*, i64 (i8*, i32)** %5, align 8
  %10 = icmp ne i64 (i8*, i32)* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = call i64 @malloc(i32 4)
  %16 = inttoptr i64 %15 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %8, align 8
  br label %29

17:                                               ; preds = %11, %3
  %18 = load i64 (i8*, i32)*, i64 (i8*, i32)** %5, align 8
  %19 = icmp ne i64 (i8*, i32)* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i64 (i8*, i32)*, i64 (i8*, i32)** %5, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 %24(i8* %25, i32 4)
  %27 = inttoptr i64 %26 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %8, align 8
  br label %28

28:                                               ; preds = %23, %20, %17
  br label %29

29:                                               ; preds = %28, %14
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = icmp eq %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %43

33:                                               ; preds = %29
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64 (i8*, i32)*, i64 (i8*, i32)** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @BrotliInitMemoryManager(i32* %35, i64 (i8*, i32)* %36, i32 %37, i8* %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = call i32 @BrotliEncoderInitState(%struct.TYPE_4__* %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %4, align 8
  br label %43

43:                                               ; preds = %33, %32
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %44
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @BrotliInitMemoryManager(i32*, i64 (i8*, i32)*, i32, i8*) #1

declare dso_local i32 @BrotliEncoderInitState(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
