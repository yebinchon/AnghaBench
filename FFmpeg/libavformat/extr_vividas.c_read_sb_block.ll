; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vividas.c_read_sb_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vividas.c_read_sb_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i32*, i32)* @read_sb_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_sb_block(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [8 x i8], align 1
  %12 = alloca [8 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %18 = call i32 @avio_read(i32* %16, i8* %17, i32 8)
  %19 = icmp ult i32 %18, 8
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %115

21:                                               ; preds = %4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %25 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @decode_block(i8* %24, i8* %25, i32 8, i32 %27, i32* %13, i32 0)
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  %31 = call i32 @get_v(i8* %30, i32 6)
  store i32 %31, i32* %14, align 4
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 83
  br i1 %35, label %48, label %36

36:                                               ; preds = %21
  %37 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 66
  br i1 %40, label %48, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %9, align 4
  %43 = icmp ugt i32 %42, 0
  br i1 %43, label %44, label %77

44:                                               ; preds = %41
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %77

48:                                               ; preds = %44, %36, %21
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @recover_key(i8* %49, i32 %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  store i32 %52, i32* %13, align 4
  %53 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @decode_block(i8* %53, i8* %54, i32 8, i32 %55, i32* %13, i32 0)
  %57 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  %59 = call i32 @get_v(i8* %58, i32 6)
  store i32 %59, i32* %14, align 4
  %60 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 83
  br i1 %63, label %73, label %64

64:                                               ; preds = %48
  %65 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 66
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %64, %48
  store i8* null, i8** %5, align 8
  br label %115

74:                                               ; preds = %69
  %75 = load i32, i32* %15, align 4
  %76 = load i32*, i32** %8, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %44, %41
  %78 = load i32, i32* %14, align 4
  %79 = icmp ult i32 %78, 8
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i8* null, i8** %5, align 8
  br label %115

81:                                               ; preds = %77
  %82 = load i32, i32* %14, align 4
  %83 = call i8* @av_malloc(i32 %82)
  store i8* %83, i8** %10, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  store i8* null, i8** %5, align 8
  br label %115

87:                                               ; preds = %81
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %90 = call i32 @memcpy(i8* %88, i8* %89, i32 8)
  %91 = load i32, i32* %14, align 4
  %92 = load i32*, i32** %7, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %14, align 4
  %94 = sub i32 %93, 8
  store i32 %94, i32* %14, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 8
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @avio_read(i32* %95, i8* %97, i32 %98)
  %100 = load i32, i32* %14, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %87
  %103 = load i8*, i8** %10, align 8
  %104 = call i32 @av_free(i8* %103)
  store i8* null, i8** %5, align 8
  br label %115

105:                                              ; preds = %87
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 8
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 8
  %110 = load i32, i32* %14, align 4
  %111 = load i32*, i32** %8, align 8
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @decode_block(i8* %107, i8* %109, i32 %110, i32 %112, i32* %13, i32 0)
  %114 = load i8*, i8** %10, align 8
  store i8* %114, i8** %5, align 8
  br label %115

115:                                              ; preds = %105, %102, %86, %80, %73, %20
  %116 = load i8*, i8** %5, align 8
  ret i8* %116
}

declare dso_local i32 @avio_read(i32*, i8*, i32) #1

declare dso_local i32 @decode_block(i8*, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @get_v(i8*, i32) #1

declare dso_local i32 @recover_key(i8*, i32) #1

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
