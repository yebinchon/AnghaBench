; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/prng/extr_prng_random.c_entropy_buffer_read.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/prng/extr_prng_random.c_entropy_buffer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32* }

@erandom = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [31 x i8] c"early_random was never invoked\00", align 1
@ENTROPY_BUFFER_BYTE_SIZE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@EntropyData = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ENTROPY_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @entropy_buffer_read(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @erandom, i32 0, i32 0), align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i64*, i64** %4, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ENTROPY_BUFFER_BYTE_SIZE, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i64, i64* @ENTROPY_BUFFER_BYTE_SIZE, align 8
  %19 = load i64*, i64** %4, align 8
  store i64 %18, i64* %19, align 8
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i32 @ml_set_interrupts_enabled(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @EntropyData, i32 0, i32 0), align 8
  %25 = load i64*, i64** %4, align 8
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @memcpy(i8* %23, i32* %24, i64 %26)
  store i32 0, i32* %6, align 4
  %28 = load i32, i32* @ENTROPY_BUFFER_SIZE, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %50, %20
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @ENTROPY_BUFFER_SIZE, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @EntropyData, i32 0, i32 0), align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @EntropyData, i32 0, i32 0), align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = xor i32 %39, %44
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @EntropyData, i32 0, i32 0), align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  br label %50

50:                                               ; preds = %34
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %30

54:                                               ; preds = %30
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @ml_set_interrupts_enabled(i32 %55)
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
