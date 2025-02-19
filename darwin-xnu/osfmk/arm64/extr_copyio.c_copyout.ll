; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_copyio.c_copyout.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_copyio.c_copyout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@kernel_pmap = common dso_local global i64 0, align 8
@COPYIO_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copyout(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @copyout_validate(i64 %14, i64 %15, i64 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %42

22:                                               ; preds = %12
  %23 = call %struct.TYPE_4__* (...) @current_thread()
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @kernel_pmap, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @copyout_kern(i8* %31, i64 %32, i64 %33)
  store i32 %34, i32* %4, align 4
  br label %42

35:                                               ; preds = %22
  %36 = load i32, i32* @COPYIO_OUT, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @copyio(i32 %36, i8* %37, i8* %39, i64 %40, i32* null)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %35, %30, %20, %11
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @copyout_validate(i64, i64, i64) #1

declare dso_local %struct.TYPE_4__* @current_thread(...) #1

declare dso_local i32 @copyout_kern(i8*, i64, i64) #1

declare dso_local i32 @copyio(i32, i8*, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
