; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_lz4.c_lz4raw_decode_buffer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_lz4.c_lz4raw_decode_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LZ4_GOFAST_SAFETY_MARGIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lz4raw_decode_buffer(i32* noalias %0, i64 %1, i32* noalias %2, i64 %3, i8* noalias %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i32*, i32** %9, align 8
  store i32* %14, i32** %12, align 8
  %15 = load i32*, i32** %7, align 8
  store i32* %15, i32** %13, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32*, i32** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = call i64 @lz4_decode(i32** %13, i32* %16, i32* %19, i32** %12, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %33

26:                                               ; preds = %5
  %27 = load i32*, i32** %13, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = ptrtoint i32* %27 to i64
  %30 = ptrtoint i32* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 4
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %26, %25
  %34 = load i64, i64* %6, align 8
  ret i64 %34
}

declare dso_local i64 @lz4_decode(i32**, i32*, i32*, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
