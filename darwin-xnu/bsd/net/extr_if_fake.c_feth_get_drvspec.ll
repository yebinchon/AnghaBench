; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_fake.c_feth_get_drvspec.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_fake.c_feth_get_drvspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.if_fake_request = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @feth_get_drvspec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feth_get_drvspec(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca %struct.if_fake_request, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %49 [
    i32 128, label %15
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %9, align 4
  br label %50

21:                                               ; preds = %15
  %22 = call i32 (...) @feth_lock()
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @ifnet_softc(i32* %23)
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %10, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %28 = icmp eq %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = call i32 (...) @feth_unlock()
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %31, i32* %9, align 4
  br label %50

32:                                               ; preds = %21
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %12, align 8
  %36 = call i32 (...) @feth_unlock()
  %37 = call i32 @bzero(%struct.if_fake_request* %11, i32 4)
  %38 = load i32*, i32** %12, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.if_fake_request, %struct.if_fake_request* %11, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @if_name(i32* %43)
  %45 = call i32 @strlcpy(i32 %42, i32 %44, i32 4)
  br label %46

46:                                               ; preds = %40, %32
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @copyout(%struct.if_fake_request* %11, i32 %47, i32 4)
  store i32 %48, i32* %9, align 4
  br label %50

49:                                               ; preds = %4
  br label %50

50:                                               ; preds = %49, %46, %29, %19
  %51 = load i32, i32* %9, align 4
  ret i32 %51
}

declare dso_local i32 @feth_lock(...) #1

declare dso_local i32 @ifnet_softc(i32*) #1

declare dso_local i32 @feth_unlock(...) #1

declare dso_local i32 @bzero(%struct.if_fake_request*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @if_name(i32*) #1

declare dso_local i32 @copyout(%struct.if_fake_request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
