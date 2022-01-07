; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/blake2/ref/extr_blake2b-ref.c_blake2b.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/blake2/ref/extr_blake2b-ref.c_blake2b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLAKE2B_OUTBYTES = common dso_local global i64 0, align 8
@BLAKE2B_KEYBYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blake2b(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [1 x i32], align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp eq i8* null, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %6
  %18 = load i64, i64* %11, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 -1, i32* %7, align 4
  br label %74

21:                                               ; preds = %17, %6
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* null, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 -1, i32* %7, align 4
  br label %74

25:                                               ; preds = %21
  %26 = load i8*, i8** %12, align 8
  %27 = icmp eq i8* null, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i64, i64* %13, align 8
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 -1, i32* %7, align 4
  br label %74

32:                                               ; preds = %28, %25
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @BLAKE2B_OUTBYTES, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %32
  store i32 -1, i32* %7, align 4
  br label %74

40:                                               ; preds = %35
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* @BLAKE2B_KEYBYTES, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 -1, i32* %7, align 4
  br label %74

45:                                               ; preds = %40
  %46 = load i64, i64* %13, align 8
  %47 = icmp ugt i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  %50 = load i64, i64* %9, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i64, i64* %13, align 8
  %53 = call i64 @blake2b_init_key(i32* %49, i64 %50, i8* %51, i64 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 -1, i32* %7, align 4
  br label %74

56:                                               ; preds = %48
  br label %64

57:                                               ; preds = %45
  %58 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  %59 = load i64, i64* %9, align 8
  %60 = call i64 @blake2b_init(i32* %58, i64 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 -1, i32* %7, align 4
  br label %74

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %56
  %65 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  %66 = load i8*, i8** %10, align 8
  %67 = bitcast i8* %66 to i32*
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @blake2b_update(i32* %65, i32* %67, i64 %68)
  %70 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  %71 = load i8*, i8** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @blake2b_final(i32* %70, i8* %71, i64 %72)
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %64, %62, %55, %44, %39, %31, %24, %20
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i64 @blake2b_init_key(i32*, i64, i8*, i64) #1

declare dso_local i64 @blake2b_init(i32*, i64) #1

declare dso_local i32 @blake2b_update(i32*, i32*, i64) #1

declare dso_local i32 @blake2b_final(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
