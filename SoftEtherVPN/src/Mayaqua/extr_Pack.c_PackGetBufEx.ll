; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_PackGetBufEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_PackGetBufEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PackGetBufEx(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  store i32* null, i32** %4, align 8
  br label %44

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @PackGetDataSizeEx(i32* %18, i8* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @MallocEx(i32 %22, i32 1)
  store i8* %23, i8** %9, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @PackGetDataEx(i32* %24, i8* %25, i8* %26, i32 %27)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @Free(i8* %31)
  store i32* null, i32** %4, align 8
  br label %44

33:                                               ; preds = %17
  %34 = call i32* (...) @NewBuf()
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @WriteBuf(i32* %35, i8* %36, i32 %37)
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @SeekBuf(i32* %39, i32 0, i32 0)
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @Free(i8* %41)
  %43 = load i32*, i32** %10, align 8
  store i32* %43, i32** %4, align 8
  br label %44

44:                                               ; preds = %33, %30, %16
  %45 = load i32*, i32** %4, align 8
  ret i32* %45
}

declare dso_local i32 @PackGetDataSizeEx(i32*, i8*, i32) #1

declare dso_local i8* @MallocEx(i32, i32) #1

declare dso_local i32 @PackGetDataEx(i32*, i8*, i8*, i32) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(i32*, i8*, i32) #1

declare dso_local i32 @SeekBuf(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
