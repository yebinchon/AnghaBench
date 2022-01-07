; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_SSTP.c_SstpBuildAttributeList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_SSTP.c_SstpBuildAttributeList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SstpBuildAttributeList(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %51

14:                                               ; preds = %2
  %15 = call i32* (...) @NewBuf()
  store i32* %15, i32** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @Endian16(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @WriteBuf(i32* %18, i32* %8, i32 4)
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @LIST_NUM(i32* %20)
  %22 = trunc i64 %21 to i32
  %23 = call i32 @Endian16(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @WriteBuf(i32* %24, i32* %8, i32 4)
  store i64 0, i64* %6, align 8
  br label %26

26:                                               ; preds = %46, %14
  %27 = load i64, i64* %6, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @LIST_NUM(i32* %28)
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %26
  %32 = load i32*, i32** %4, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32* @LIST_DATA(i32* %32, i64 %33)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32* @SstpBuildAttribute(i32* %35)
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @WriteBufBuf(i32* %40, i32* %41)
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @FreeBuf(i32* %43)
  br label %45

45:                                               ; preds = %39, %31
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %6, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %6, align 8
  br label %26

49:                                               ; preds = %26
  %50 = load i32*, i32** %7, align 8
  store i32* %50, i32** %3, align 8
  br label %51

51:                                               ; preds = %49, %13
  %52 = load i32*, i32** %3, align 8
  ret i32* %52
}

declare dso_local i32* @NewBuf(...) #1

declare dso_local i32 @Endian16(i32) #1

declare dso_local i32 @WriteBuf(i32*, i32*, i32) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i32* @LIST_DATA(i32*, i64) #1

declare dso_local i32* @SstpBuildAttribute(i32*) #1

declare dso_local i32 @WriteBufBuf(i32*, i32*) #1

declare dso_local i32 @FreeBuf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
