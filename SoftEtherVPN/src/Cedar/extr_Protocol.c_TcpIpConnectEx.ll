; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_TcpIpConnectEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_TcpIpConnectEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @TcpIpConnectEx(i8* %0, i64 %1, i32* %2, i8* %3, i64* %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32* %2, i32** %12, align 8
  store i8* %3, i8** %13, align 8
  store i64* %4, i64** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i64 0, i64* %19, align 8
  %20 = load i64*, i64** %14, align 8
  %21 = icmp eq i64* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %8
  store i64* %19, i64** %14, align 8
  br label %23

23:                                               ; preds = %22, %8
  %24 = load i64*, i64** %14, align 8
  store i64 0, i64* %24, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %11, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %23
  store i32* null, i32** %9, align 8
  br label %46

31:                                               ; preds = %27
  %32 = load i8*, i8** %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load i32, i32* %15, align 4
  %37 = load i64*, i64** %14, align 8
  %38 = load i32, i32* %16, align 4
  %39 = load i32*, i32** %17, align 8
  %40 = call i32* @TcpConnectEx3(i8* %32, i64 %33, i32 0, i32* %34, i8* %35, i32 %36, i64* %37, i32 %38, i32* %39)
  store i32* %40, i32** %18, align 8
  %41 = load i32*, i32** %18, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store i32* null, i32** %9, align 8
  br label %46

44:                                               ; preds = %31
  %45 = load i32*, i32** %18, align 8
  store i32* %45, i32** %9, align 8
  br label %46

46:                                               ; preds = %44, %43, %30
  %47 = load i32*, i32** %9, align 8
  ret i32* %47
}

declare dso_local i32* @TcpConnectEx3(i8*, i64, i32, i32*, i8*, i32, i64*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
