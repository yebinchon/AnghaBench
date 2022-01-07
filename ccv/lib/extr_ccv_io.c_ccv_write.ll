; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_io.c_ccv_write.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_io.c_ccv_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCV_IO_ANY_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@CCV_IO_ERROR = common dso_local global i32 0, align 4
@CCV_IO_FINAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccv_write(i32* %0, i8* %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32* null, i32** %12, align 8
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @CCV_IO_ANY_FILE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %5
  %18 = load i8*, i8** %8, align 8
  %19 = call i32* @fopen(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %12, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @CCV_IO_ERROR, align 4
  store i32 %23, i32* %6, align 4
  br label %51

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %5
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %41 [
    i32 129, label %27
    i32 128, label %29
    i32 130, label %31
  ]

27:                                               ; preds = %25
  %28 = call i32 @assert(i32 0)
  br label %41

29:                                               ; preds = %25
  %30 = call i32 @assert(i32 0)
  br label %41

31:                                               ; preds = %25
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @_ccv_write_binary_fd(i32* %32, i32* %33, i8* %34)
  %36 = load i32*, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32*, i32** %9, align 8
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %38, %31
  br label %41

41:                                               ; preds = %25, %40, %29, %27
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @CCV_IO_ANY_FILE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @fclose(i32* %47)
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i32, i32* @CCV_IO_FINAL, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %22
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_ccv_write_binary_fd(i32*, i32*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
