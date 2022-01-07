; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1517.c_read_callback.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1517.c_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WriteThis = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*)* @read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_callback(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.WriteThis*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.WriteThis*
  store %struct.WriteThis* %13, %struct.WriteThis** %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = mul i64 %14, %15
  store i64 %16, i64* %11, align 8
  %17 = call i32 @wait_ms(i32 1000)
  %18 = load i64, i64* %11, align 8
  %19 = icmp ult i64 %18, 1
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load %struct.WriteThis*, %struct.WriteThis** %10, align 8
  %22 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %4
  store i64 0, i64* %5, align 8
  br label %54

26:                                               ; preds = %20
  %27 = load %struct.WriteThis*, %struct.WriteThis** %10, align 8
  %28 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.WriteThis*, %struct.WriteThis** %10, align 8
  %34 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %11, align 8
  br label %36

36:                                               ; preds = %32, %26
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.WriteThis*, %struct.WriteThis** %10, align 8
  %39 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @memcpy(i8* %37, i64 %40, i64 %41)
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.WriteThis*, %struct.WriteThis** %10, align 8
  %45 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, %43
  store i64 %47, i64* %45, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.WriteThis*, %struct.WriteThis** %10, align 8
  %50 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub i64 %51, %48
  store i64 %52, i64* %50, align 8
  %53 = load i64, i64* %11, align 8
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %36, %25
  %55 = load i64, i64* %5, align 8
  ret i64 %55
}

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
