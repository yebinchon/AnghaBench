; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_getsastatbyspi.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_getsastatbyspi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sastat = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sastat*, i32, %struct.sastat*, i32*)* @key_getsastatbyspi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_getsastatbyspi(%struct.sastat* %0, i32 %1, %struct.sastat* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sastat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sastat*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sastat* %0, %struct.sastat** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sastat* %2, %struct.sastat** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.sastat*, %struct.sastat** %6, align 8
  %13 = icmp eq %struct.sastat* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = load %struct.sastat*, %struct.sastat** %8, align 8
  %16 = icmp eq %struct.sastat* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32*, i32** %9, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14, %4
  store i32 -1, i32* %5, align 4
  br label %53

21:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %43, %21
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load %struct.sastat*, %struct.sastat** %6, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sastat, %struct.sastat* %27, i64 %29
  %31 = getelementptr inbounds %struct.sastat, %struct.sastat* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sastat*, %struct.sastat** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.sastat, %struct.sastat* %33, i64 %35
  %37 = call i64 @key_getsastatbyspi_one(i32 %32, %struct.sastat* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %39, %26
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %22

46:                                               ; preds = %22
  %47 = load i32, i32* %11, align 4
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %53

52:                                               ; preds = %46
  store i32 -1, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %51, %20
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @key_getsastatbyspi_one(i32, %struct.sastat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
