; ModuleID = '/home/carl/AnghaBench/darwin-xnu/san/extr_kasan.c_kasan_alloc_crc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/san/extr_kasan.c_kasan_alloc_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kasan_alloc_header = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @kasan_alloc_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kasan_alloc_crc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.kasan_alloc_header*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call %struct.kasan_alloc_header* @header_for_user_addr(i64 %7)
  store %struct.kasan_alloc_header* %8, %struct.kasan_alloc_header** %3, align 8
  %9 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %3, align 8
  %10 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %3, align 8
  %13 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %11, %14
  %16 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %3, align 8
  %17 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  store i64 %19, i64* %4, align 8
  %20 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %3, align 8
  %21 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  %23 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %3, align 8
  %24 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  store i64 0, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %2, align 8
  %27 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %3, align 8
  %28 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %3, align 8
  %33 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @__nosan_crc16(i64 %25, i8* %31, i64 %34)
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %2, align 8
  %38 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %3, align 8
  %39 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = inttoptr i64 %41 to i8*
  %43 = load i64, i64* %4, align 8
  %44 = call i64 @__nosan_crc16(i64 %36, i8* %42, i64 %43)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %3, align 8
  %47 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %6, align 8
  ret i64 %48
}

declare dso_local %struct.kasan_alloc_header* @header_for_user_addr(i64) #1

declare dso_local i64 @__nosan_crc16(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
