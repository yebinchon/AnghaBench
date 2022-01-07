; ModuleID = '/home/carl/AnghaBench/darwin-xnu/san/extr_kasan.c_kasan_dealloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/san/extr_kasan.c_kasan_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kasan_alloc_header = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kasan_dealloc(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.kasan_alloc_header*, align 8
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8
  %10 = icmp ne i64 %9, 0
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ false, %2 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64, i64* %3, align 8
  %16 = call %struct.kasan_alloc_header* @header_for_user_addr(i64 %15)
  store %struct.kasan_alloc_header* %16, %struct.kasan_alloc_header** %5, align 8
  %17 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %5, align 8
  %18 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %4, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i64, i64* %3, align 8
  %22 = load %struct.kasan_alloc_header*, %struct.kasan_alloc_header** %5, align 8
  %23 = getelementptr inbounds %struct.kasan_alloc_header, %struct.kasan_alloc_header* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  ret i64 %25
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.kasan_alloc_header* @header_for_user_addr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
