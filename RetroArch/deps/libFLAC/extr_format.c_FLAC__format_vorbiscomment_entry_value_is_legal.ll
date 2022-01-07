; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_format.c_FLAC__format_vorbiscomment_entry_value_is_legal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_format.c_FLAC__format_vorbiscomment_entry_value_is_legal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FLAC__format_vorbiscomment_entry_value_is_legal(i64* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %22, %11
  %13 = load i64*, i64** %4, align 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i64*, i64** %4, align 8
  %18 = call i32 @utf8len_(i64* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %55

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = load i64*, i64** %4, align 8
  %25 = zext i32 %23 to i64
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  store i64* %26, i64** %4, align 8
  br label %12

27:                                               ; preds = %12
  br label %54

28:                                               ; preds = %2
  %29 = load i64*, i64** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  store i64* %32, i64** %7, align 8
  br label %33

33:                                               ; preds = %43, %28
  %34 = load i64*, i64** %4, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = icmp ult i64* %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load i64*, i64** %4, align 8
  %39 = call i32 @utf8len_(i64* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %55

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = load i64*, i64** %4, align 8
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  store i64* %47, i64** %4, align 8
  br label %33

48:                                               ; preds = %33
  %49 = load i64*, i64** %4, align 8
  %50 = load i64*, i64** %7, align 8
  %51 = icmp ne i64* %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %55

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53, %27
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %52, %42, %21
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @utf8len_(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
