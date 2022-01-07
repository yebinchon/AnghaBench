; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vmdvideo.c_rle_unpack.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vmdvideo.c_rle_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32)* @rle_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rle_unpack(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %16, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @bytestream2_init(i32* %17, i8* %23, i32 %24)
  %26 = load i8*, i8** %8, align 8
  store i8* %26, i8** %12, align 8
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %5
  %31 = call i32 @bytestream2_get_bytes_left(i32* %17)
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %121

34:                                               ; preds = %30
  %35 = call i8* @bytestream2_get_byteu(i32* %17)
  %36 = ptrtoint i8* %35 to i8
  %37 = load i8*, i8** %12, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %12, align 8
  store i8 %36, i8* %37, align 1
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %34, %5
  br label %42

42:                                               ; preds = %115, %41
  %43 = call i32 @bytestream2_get_bytes_left(i32* %17)
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %119

46:                                               ; preds = %42
  %47 = call i8* @bytestream2_get_byteu(i32* %17)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = and i32 %49, 128
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %46
  %53 = load i32, i32* %14, align 4
  %54 = and i32 %53, 127
  %55 = mul nsw i32 %54, 2
  store i32 %55, i32* %14, align 4
  %56 = load i8*, i8** %16, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp slt i64 %60, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %52
  %65 = call i32 @bytestream2_get_bytes_left(i32* %17)
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64, %52
  %69 = call i32 @bytestream2_tell(i32* %17)
  store i32 %69, i32* %6, align 4
  br label %121

70:                                               ; preds = %64
  %71 = load i8*, i8** %12, align 8
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @bytestream2_get_bufferu(i32* %17, i8* %71, i32 %72)
  %74 = load i32, i32* %14, align 4
  %75 = load i8*, i8** %12, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %12, align 8
  br label %111

78:                                               ; preds = %46
  %79 = load i8*, i8** %16, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = load i32, i32* %14, align 4
  %85 = mul nsw i32 2, %84
  %86 = sext i32 %85 to i64
  %87 = icmp slt i64 %83, %86
  br i1 %87, label %91, label %88

88:                                               ; preds = %78
  %89 = call i32 @bytestream2_get_bytes_left(i32* %17)
  %90 = icmp slt i32 %89, 2
  br i1 %90, label %91, label %93

91:                                               ; preds = %88, %78
  %92 = call i32 @bytestream2_tell(i32* %17)
  store i32 %92, i32* %6, align 4
  br label %121

93:                                               ; preds = %88
  %94 = call i32 @bytestream2_get_ne16(i32* %17)
  store i32 %94, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %95

95:                                               ; preds = %105, %93
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  %100 = load i8*, i8** %12, align 8
  %101 = load i32, i32* %18, align 4
  %102 = call i32 @AV_WN16(i8* %100, i32 %101)
  %103 = load i8*, i8** %12, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  store i8* %104, i8** %12, align 8
  br label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %95

108:                                              ; preds = %95
  %109 = load i32, i32* %14, align 4
  %110 = mul nsw i32 %109, 2
  store i32 %110, i32* %14, align 4
  br label %111

111:                                              ; preds = %108, %70
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %42, label %119

119:                                              ; preds = %115, %45
  %120 = call i32 @bytestream2_tell(i32* %17)
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %119, %91, %68, %33
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i32 @bytestream2_init(i32*, i8*, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i8* @bytestream2_get_byteu(i32*) #1

declare dso_local i32 @bytestream2_tell(i32*) #1

declare dso_local i32 @bytestream2_get_bufferu(i32*, i8*, i32) #1

declare dso_local i32 @bytestream2_get_ne16(i32*) #1

declare dso_local i32 @AV_WN16(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
