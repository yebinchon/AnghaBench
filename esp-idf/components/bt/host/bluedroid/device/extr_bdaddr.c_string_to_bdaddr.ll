; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/device/extr_bdaddr.c_string_to_bdaddr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/device/extr_bdaddr.c_string_to_bdaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [30 x i8] c"%02x:%02x:%02x:%02x:%02x:%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string_to_bdaddr(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [6 x i64], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 0
  %22 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 1
  %23 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 2
  %24 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 3
  %25 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 4
  %26 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 5
  %27 = call i32 @sscanf(i8* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64* %21, i64* %22, i64* %23, i64* %24, i64* %25, i64* %26)
  %28 = icmp eq i32 %27, 6
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %46, %32
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 6
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %33

49:                                               ; preds = %33
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = call i32 @memcpy(%struct.TYPE_5__* %50, %struct.TYPE_5__* %5, i32 8)
  br label %52

52:                                               ; preds = %49, %2
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*, i64*, i64*, i64*, i64*) #1

declare dso_local i32 @memcpy(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
