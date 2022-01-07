; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_imageboot.c_key_byteswap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_imageboot.c_key_byteswap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @key_byteswap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_byteswap(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = urem i64 %14, 4
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i64, i64* %6, align 8
  %20 = udiv i64 %19, 4
  store i64 %20, i64* %6, align 8
  store i64 0, i64* %9, align 8
  br label %21

21:                                               ; preds = %43, %3
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = load i32*, i32** %8, align 8
  %27 = ptrtoint i32* %26 to i64
  %28 = and i64 %27, 0
  %29 = icmp eq i64 %28, 0
  call void @llvm.assume(i1 %29)
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @OSSwapInt32(i32 %32)
  %34 = load i32*, i32** %7, align 8
  %35 = ptrtoint i32* %34 to i64
  %36 = and i64 %35, 0
  %37 = icmp eq i64 %36, 0
  call void @llvm.assume(i1 %37)
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %9, align 8
  %40 = sub i64 %38, %39
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds i32, i32* %34, i64 %41
  store i32 %33, i32* %42, align 4
  br label %43

43:                                               ; preds = %25
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %9, align 8
  br label %21

46:                                               ; preds = %21
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @OSSwapInt32(i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
