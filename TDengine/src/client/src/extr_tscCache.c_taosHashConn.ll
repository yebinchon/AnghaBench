; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscCache.c_taosHashConn.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscCache.c_taosHashConn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosHashConn(i8* %0, i32 %1, i16 signext %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i16 %2, i16* %7, align 2
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 %13, 16
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 65535
  %17 = trunc i32 %16 to i16
  %18 = zext i16 %17 to i32
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* %10, align 4
  %21 = load i16, i16* %7, align 2
  %22 = zext i16 %21 to i32
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %30, %4
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %8, align 8
  br label %25

38:                                               ; preds = %25
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = srem i32 %39, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
