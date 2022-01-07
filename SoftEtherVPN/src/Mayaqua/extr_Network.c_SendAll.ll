; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_SendAll.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_SendAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SendAll(%struct.TYPE_4__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = icmp eq %struct.TYPE_4__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %4
  store i32 0, i32* %5, align 4
  br label %55

19:                                               ; preds = %15
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %55

25:                                               ; preds = %19
  %26 = load i64, i64* %8, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* %5, align 4
  br label %55

29:                                               ; preds = %25
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %10, align 8
  store i64 0, i64* %11, align 8
  br label %32

32:                                               ; preds = %29, %54
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %11, align 8
  %37 = sub nsw i64 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @Send(%struct.TYPE_4__* %33, i32* %34, i64 %37, i32 %38)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %55

43:                                               ; preds = %32
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %11, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 %47
  store i32* %49, i32** %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 1, i32* %5, align 4
  br label %55

54:                                               ; preds = %43
  br label %32

55:                                               ; preds = %53, %42, %28, %24, %18
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @Send(%struct.TYPE_4__*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
