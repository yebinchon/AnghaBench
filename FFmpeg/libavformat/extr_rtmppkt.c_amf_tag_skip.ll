; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmppkt.c_amf_tag_skip.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmppkt.c_amf_tag_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @amf_tag_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amf_tag_skip(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @bytestream2_get_bytes_left(i32* %9)
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %89

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @bytestream2_get_byte(i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %88 [
    i32 131, label %17
    i32 136, label %20
    i32 128, label %23
    i32 134, label %28
    i32 132, label %33
    i32 135, label %34
    i32 137, label %37
    i32 133, label %38
    i32 130, label %41
    i32 129, label %87
  ]

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @bytestream2_get_be64(i32* %18)
  store i32 0, i32* %2, align 4
  br label %89

20:                                               ; preds = %13
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @bytestream2_get_byte(i32* %21)
  store i32 0, i32* %2, align 4
  br label %89

23:                                               ; preds = %13
  %24 = load i32*, i32** %3, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @bytestream2_get_be16(i32* %25)
  %27 = call i32 @bytestream2_skip(i32* %24, i32 %26)
  store i32 0, i32* %2, align 4
  br label %89

28:                                               ; preds = %13
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @bytestream2_get_be32(i32* %30)
  %32 = call i32 @bytestream2_skip(i32* %29, i32 %31)
  store i32 0, i32* %2, align 4
  br label %89

33:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %89

34:                                               ; preds = %13
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @bytestream2_skip(i32* %35, i32 10)
  store i32 0, i32* %2, align 4
  br label %89

37:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %13, %37
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @bytestream2_get_be32(i32* %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %13, %38
  br label %42

42:                                               ; preds = %85, %41
  %43 = load i32, i32* %5, align 4
  %44 = add i32 %43, -1
  store i32 %44, i32* %5, align 4
  %45 = icmp ugt i32 %43, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 137
  br label %49

49:                                               ; preds = %46, %42
  %50 = phi i1 [ true, %42 ], [ %48, %46 ]
  br i1 %50, label %51, label %86

51:                                               ; preds = %49
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %51
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @bytestream2_get_be16(i32* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @bytestream2_get_byte(i32* %60)
  br label %86

62:                                               ; preds = %54
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @bytestream2_get_bytes_left(i32* %67)
  %69 = icmp sge i32 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65, %62
  store i32 -1, i32* %2, align 4
  br label %89

71:                                               ; preds = %65
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @bytestream2_skip(i32* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %51
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @amf_tag_skip(i32* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @bytestream2_get_bytes_left(i32* %81)
  %83 = icmp sle i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80, %75
  store i32 -1, i32* %2, align 4
  br label %89

85:                                               ; preds = %80
  br label %42

86:                                               ; preds = %59, %49
  store i32 0, i32* %2, align 4
  br label %89

87:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %89

88:                                               ; preds = %13
  store i32 -1, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %87, %86, %84, %70, %34, %33, %28, %23, %20, %17, %12
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_get_be64(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_be16(i32*) #1

declare dso_local i32 @bytestream2_get_be32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
