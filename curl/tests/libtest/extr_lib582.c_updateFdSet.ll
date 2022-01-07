; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib582.c_updateFdSet.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib582.c_updateFdSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Sockets = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Sockets*, i32*, i64*)* @updateFdSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @updateFdSet(%struct.Sockets* %0, i32* %1, i64* %2) #0 {
  %4 = alloca %struct.Sockets*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.Sockets* %0, %struct.Sockets** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %46, %3
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.Sockets*, %struct.Sockets** %4, align 8
  %11 = getelementptr inbounds %struct.Sockets, %struct.Sockets* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %8
  %15 = load %struct.Sockets*, %struct.Sockets** %4, align 8
  %16 = getelementptr inbounds %struct.Sockets, %struct.Sockets* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @FD_SET(i64 %21, i32* %22)
  %24 = load i64*, i64** %6, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.Sockets*, %struct.Sockets** %4, align 8
  %27 = getelementptr inbounds %struct.Sockets, %struct.Sockets* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  %34 = icmp slt i64 %25, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %14
  %36 = load %struct.Sockets*, %struct.Sockets** %4, align 8
  %37 = getelementptr inbounds %struct.Sockets, %struct.Sockets* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  %44 = load i64*, i64** %6, align 8
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %35, %14
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %8

49:                                               ; preds = %8
  ret void
}

declare dso_local i32 @FD_SET(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
