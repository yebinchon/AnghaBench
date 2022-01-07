; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_gdv.c_lz_copy.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_gdv.c_lz_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @lz_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lz_copy(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %36

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @bytestream2_tell_p(i32* %17)
  %19 = sub nsw i32 %18, 1
  %20 = load i32, i32* @SEEK_SET, align 4
  %21 = call i32 @bytestream2_seek(i32* %16, i32 %19, i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @bytestream2_get_byte(i32* %22)
  store i32 %23, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %32, %15
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @bytestream2_put_byte(i32* %29, i32 %30)
  br label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %24

35:                                               ; preds = %24
  br label %85

36:                                               ; preds = %4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %36
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @bytestream2_tell_p(i32* %40)
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 0, %42
  %44 = sub nsw i32 %41, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @SEEK_SET, align 4
  %48 = call i32 @bytestream2_seek(i32* %45, i32 %46, i32 %47)
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %58, %39
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @bytestream2_get_byte(i32* %55)
  %57 = call i32 @bytestream2_put_byte(i32* %54, i32 %56)
  br label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %49

61:                                               ; preds = %49
  br label %84

62:                                               ; preds = %36
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @bytestream2_tell_p(i32* %63)
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %64, %65
  store i32 %66, i32* %12, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @SEEK_SET, align 4
  %70 = call i32 @bytestream2_seek(i32* %67, i32 %68, i32 %69)
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %80, %62
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load i32*, i32** %5, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @bytestream2_get_byte(i32* %77)
  %79 = call i32 @bytestream2_put_byte(i32* %76, i32 %78)
  br label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %71

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83, %61
  br label %85

85:                                               ; preds = %84, %35
  ret void
}

declare dso_local i32 @bytestream2_seek(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_tell_p(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_put_byte(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
