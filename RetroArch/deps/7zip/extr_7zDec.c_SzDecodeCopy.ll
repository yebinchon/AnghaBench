; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_7zDec.c_SzDecodeCopy.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_7zDec.c_SzDecodeCopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i8*, i64)*, i32 (i8*, i8**, i64*)* }

@SZ_ERROR_INPUT_EOF = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_3__*, i32*)* @SzDecodeCopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SzDecodeCopy(i64 %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  br label %10

10:                                               ; preds = %31, %3
  %11 = load i64, i64* %5, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %10
  store i64 262144, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  store i64 %18, i64* %9, align 8
  br label %19

19:                                               ; preds = %17, %13
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32 (i8*, i8**, i64*)*, i32 (i8*, i8**, i64*)** %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = bitcast %struct.TYPE_3__* %23 to i8*
  %25 = call i32 %22(i8* %24, i8** %8, i64* %9)
  %26 = call i32 @RINOK(i32 %25)
  %27 = load i64, i64* %9, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* @SZ_ERROR_INPUT_EOF, align 4
  store i32 %30, i32* %4, align 4
  br label %52

31:                                               ; preds = %19
  %32 = load i32*, i32** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @memcpy(i32* %32, i8* %33, i64 %34)
  %36 = load i64, i64* %9, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 %36
  store i32* %38, i32** %7, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %5, align 8
  %41 = sub i64 %40, %39
  store i64 %41, i64* %5, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (i8*, i64)*, i32 (i8*, i64)** %43, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = bitcast %struct.TYPE_3__* %45 to i8*
  %47 = load i64, i64* %9, align 8
  %48 = call i32 %44(i8* %46, i64 %47)
  %49 = call i32 @RINOK(i32 %48)
  br label %10

50:                                               ; preds = %10
  %51 = load i32, i32* @SZ_OK, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %29
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
