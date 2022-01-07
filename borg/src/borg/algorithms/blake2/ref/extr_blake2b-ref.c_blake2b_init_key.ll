; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/blake2/ref/extr_blake2b-ref.c_blake2b_init_key.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/blake2/ref/extr_blake2b-ref.c_blake2b_init_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8**, i8**, i8**, i64, i64, i32, i32, i32, i8*, i8* }

@BLAKE2B_OUTBYTES = common dso_local global i64 0, align 8
@BLAKE2B_KEYBYTES = common dso_local global i64 0, align 8
@BLAKE2B_BLOCKBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blake2b_init_key(i32* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [1 x %struct.TYPE_3__], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @BLAKE2B_OUTBYTES, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %4
  store i32 -1, i32* %5, align 4
  br label %90

20:                                               ; preds = %15
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @BLAKE2B_KEYBYTES, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %23, %20
  store i32 -1, i32* %5, align 4
  br label %90

31:                                               ; preds = %26
  %32 = load i64, i64* %7, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 11
  store i8* %33, i8** %35, align 8
  %36 = load i64, i64* %9, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 10
  store i8* %37, i8** %39, align 16
  %40 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 16
  %42 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 9
  %46 = call i32 @store32(i32* %45, i32 0)
  %47 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 8
  %49 = call i32 @store32(i32* %48, i32 0)
  %50 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 7
  %52 = call i32 @store32(i32* %51, i32 0)
  %53 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 6
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 5
  store i64 0, i64* %56, align 16
  %57 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i8**, i8*** %58, align 8
  %60 = call i32 @memset(i8** %59, i32 0, i32 8)
  %61 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  %63 = load i8**, i8*** %62, align 16
  %64 = call i32 @memset(i8** %63, i32 0, i32 8)
  %65 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 4
  %67 = load i8**, i8*** %66, align 8
  %68 = call i32 @memset(i8** %67, i32 0, i32 8)
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %71 = call i64 @blake2b_init_param(i32* %69, %struct.TYPE_3__* %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %90

74:                                               ; preds = %31
  %75 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %76 = zext i32 %75 to i64
  %77 = call i8* @llvm.stacksave()
  store i8* %77, i8** %11, align 8
  %78 = alloca i8*, i64 %76, align 16
  store i64 %76, i64* %12, align 8
  %79 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %80 = call i32 @memset(i8** %78, i32 0, i32 %79)
  %81 = load i8*, i8** %8, align 8
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @memcpy(i8** %78, i8* %81, i64 %82)
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %86 = call i32 @blake2b_update(i32* %84, i8** %78, i32 %85)
  %87 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %88 = call i32 @secure_zero_memory(i8** %78, i32 %87)
  %89 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %89)
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %74, %73, %30, %19
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @store32(i32*, i32) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i64 @blake2b_init_param(i32*, %struct.TYPE_3__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8**, i8*, i64) #1

declare dso_local i32 @blake2b_update(i32*, i8**, i32) #1

declare dso_local i32 @secure_zero_memory(i8**, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
