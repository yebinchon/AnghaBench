; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_ftpuploadfrommem.c_read_callback.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_ftpuploadfrommem.c_read_callback.c"
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
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.WriteThis*
  store %struct.WriteThis* %14, %struct.WriteThis** %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = mul i64 %15, %16
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = icmp ult i64 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %56

21:                                               ; preds = %4
  %22 = load %struct.WriteThis*, %struct.WriteThis** %10, align 8
  %23 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %21
  %27 = load i64, i64* %11, align 8
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load %struct.WriteThis*, %struct.WriteThis** %10, align 8
  %30 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ugt i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.WriteThis*, %struct.WriteThis** %10, align 8
  %35 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %12, align 8
  br label %37

37:                                               ; preds = %33, %26
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.WriteThis*, %struct.WriteThis** %10, align 8
  %40 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @memcpy(i8* %38, i64 %41, i64 %42)
  %44 = load i64, i64* %12, align 8
  %45 = load %struct.WriteThis*, %struct.WriteThis** %10, align 8
  %46 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load %struct.WriteThis*, %struct.WriteThis** %10, align 8
  %51 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load i64, i64* %12, align 8
  store i64 %54, i64* %5, align 8
  br label %56

55:                                               ; preds = %21
  store i64 0, i64* %5, align 8
  br label %56

56:                                               ; preds = %55, %37, %20
  %57 = load i64, i64* %5, align 8
  ret i64 %57
}

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
