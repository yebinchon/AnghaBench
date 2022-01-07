; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_IpReceived.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_IpReceived.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IpReceived(i32* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6, i32 %7, i32* %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i8* %4, i8** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32* %8, i32** %21, align 8
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %25 = load i32*, i32** %13, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %12
  %28 = load i8*, i8** %17, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %12
  br label %70

31:                                               ; preds = %27
  %32 = load i32, i32* %16, align 4
  switch i32 %32, label %70 [
    i32 130, label %33
    i32 129, label %48
    i32 128, label %60
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* %19, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load i8*, i8** %17, align 8
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* %20, align 4
  %43 = load i32*, i32** %21, align 8
  %44 = load i32, i32* %22, align 4
  %45 = load i32, i32* %24, align 4
  %46 = call i32 @VirtualIcmpReceived(i32* %37, i32 %38, i32 %39, i8* %40, i32 %41, i32 %42, i32* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %36, %33
  br label %70

48:                                               ; preds = %31
  %49 = load i32, i32* %19, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i8*, i8** %17, align 8
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %24, align 4
  %58 = call i32 @VirtualTcpReceived(i32* %52, i32 %53, i32 %54, i8* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %51, %48
  br label %70

60:                                               ; preds = %31
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i8*, i8** %17, align 8
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* %19, align 4
  %67 = load i32, i32* %23, align 4
  %68 = load i32, i32* %24, align 4
  %69 = call i32 @VirtualUdpReceived(i32* %61, i32 %62, i32 %63, i8* %64, i32 %65, i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %30, %31, %60, %59, %47
  ret void
}

declare dso_local i32 @VirtualIcmpReceived(i32*, i32, i32, i8*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @VirtualTcpReceived(i32*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @VirtualUdpReceived(i32*, i32, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
