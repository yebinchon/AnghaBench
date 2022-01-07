; ModuleID = '/home/carl/AnghaBench/disque/src/extr_syncio.c_syncRead.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_syncio.c_syncRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DISQUE_SYNCIO_RESOLUTION = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@AE_READABLE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @syncRead(i32 %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %11, align 8
  %16 = call i64 (...) @mstime()
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %9, align 8
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %80

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %21, %76
  %23 = load i64, i64* %13, align 8
  %24 = load i64, i64* @DISQUE_SYNCIO_RESOLUTION, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64, i64* %13, align 8
  br label %30

28:                                               ; preds = %22
  %29 = load i64, i64* @DISQUE_SYNCIO_RESOLUTION, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  store i64 %31, i64* %14, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @read(i32 %32, i8* %33, i64 %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i64 -1, i64* %5, align 8
  br label %80

39:                                               ; preds = %30
  %40 = load i64, i64* %10, align 8
  %41 = icmp eq i64 %40, -1
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i64, i64* @errno, align 8
  %44 = load i64, i64* @EAGAIN, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i64 -1, i64* %5, align 8
  br label %80

47:                                               ; preds = %42
  br label %58

48:                                               ; preds = %39
  %49 = load i64, i64* %10, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 %49
  store i8* %51, i8** %7, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %8, align 8
  %54 = sub nsw i64 %53, %52
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %11, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %11, align 8
  br label %58

58:                                               ; preds = %48, %47
  %59 = load i64, i64* %8, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i64, i64* %11, align 8
  store i64 %62, i64* %5, align 8
  br label %80

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @AE_READABLE, align 4
  %66 = load i64, i64* %14, align 8
  %67 = call i32 @aeWait(i32 %64, i32 %65, i64 %66)
  %68 = call i64 (...) @mstime()
  %69 = load i64, i64* %12, align 8
  %70 = sub nsw i64 %68, %69
  store i64 %70, i64* %15, align 8
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* %9, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i64, i64* @ETIMEDOUT, align 8
  store i64 %75, i64* @errno, align 8
  store i64 -1, i64* %5, align 8
  br label %80

76:                                               ; preds = %63
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %15, align 8
  %79 = sub nsw i64 %77, %78
  store i64 %79, i64* %13, align 8
  br label %22

80:                                               ; preds = %74, %61, %46, %38, %20
  %81 = load i64, i64* %5, align 8
  ret i64 %81
}

declare dso_local i64 @mstime(...) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @aeWait(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
