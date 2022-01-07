; ModuleID = '/home/carl/AnghaBench/Cinder/src/linebreak/extr_linebreak.c_lb_get_next_char_utf16.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/linebreak/extr_linebreak.c_lb_get_next_char_utf16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lb_get_next_char_utf16(i32* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i64*, i64** %7, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ule i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EOS, align 4
  store i32 %20, i32* %4, align 4
  br label %74

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %24
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 55296
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %31, 56319
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %21
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %74

35:                                               ; preds = %30
  %36 = load i64*, i64** %7, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i64*, i64** %7, align 8
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, -1
  store i64 %43, i64* %41, align 8
  %44 = load i32, i32* @EOS, align 4
  store i32 %44, i32* %4, align 4
  br label %74

45:                                               ; preds = %35
  %46 = load i32*, i32** %5, align 8
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 56320
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load i32*, i32** %5, align 8
  %54 = load i64*, i64** %7, align 8
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 57343
  br i1 %58, label %59, label %61

59:                                               ; preds = %52, %45
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %74

61:                                               ; preds = %52
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, 1023
  %64 = shl i32 %63, 10
  %65 = load i32*, i32** %5, align 8
  %66 = load i64*, i64** %7, align 8
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = getelementptr inbounds i32, i32* %65, i64 %67
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 1023
  %72 = add nsw i32 %64, %71
  %73 = add nsw i32 %72, 65536
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %61, %59, %40, %33, %19
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
