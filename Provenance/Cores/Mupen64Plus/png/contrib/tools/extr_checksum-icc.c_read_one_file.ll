; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_checksum-icc.c_read_one_file.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_checksum-icc.c_read_one_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [203 x i8] c"PNG_ICC_CHECKSUM(0x%8.8lx, 0x%8.8lx,\0A   PNG_MD5(0x%2.2x%2.2x%2.2x%2.2x, 0x%2.2x%2.2x%2.2x%2.2x, 0x%2.2x%2.2x%2.2x%2.2x, 0x%2.2x%2.2x%2.2x%2.2x), %d,\0A   \22%4.4d/%2.2d/%2.2d %2.2d:%2.2d:%2.2d\22, %lu, \22%s\22)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @read_one_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_one_file(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [132 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = call i32 @adler32(i32 0, i32* null, i32 0)
  store i32 %12, i32* %7, align 4
  %13 = call i32 @crc32(i32 0, i32* null, i32 0)
  store i32 %13, i32* %8, align 4
  br label %14

14:                                               ; preds = %31, %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @getc(i32* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @EOF, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %38

21:                                               ; preds = %14
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 528
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 %29
  store i32 %27, i32* %30, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @adler32(i32 %34, i32* %11, i32 1)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @crc32(i32 %36, i32* %11, i32 1)
  store i32 %37, i32* %8, align 4
  br label %14

38:                                               ; preds = %20
  %39 = load i32*, i32** %4, align 8
  %40 = call i64 @ferror(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %134

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 84
  %49 = load i32, i32* %48, align 16
  %50 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 85
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 86
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 87
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 88
  %57 = load i32, i32* %56, align 16
  %58 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 89
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 90
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 91
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 92
  %65 = load i32, i32* %64, align 16
  %66 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 93
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 94
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 95
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 96
  %73 = load i32, i32* %72, align 16
  %74 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 97
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 98
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 99
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 64
  %81 = load i32, i32* %80, align 16
  %82 = mul nsw i32 %81, 256
  %83 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 65
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %82, %84
  %86 = mul nsw i32 %85, 65536
  %87 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 66
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %88, 256
  %90 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 67
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %89, %91
  %93 = add nsw i32 %86, %92
  %94 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 24
  %95 = load i32, i32* %94, align 16
  %96 = mul nsw i32 %95, 256
  %97 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 25
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %96, %98
  %100 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 26
  %101 = load i32, i32* %100, align 8
  %102 = mul nsw i32 %101, 256
  %103 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 27
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %102, %104
  %106 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 28
  %107 = load i32, i32* %106, align 16
  %108 = mul nsw i32 %107, 256
  %109 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 29
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %108, %110
  %112 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 30
  %113 = load i32, i32* %112, align 8
  %114 = mul nsw i32 %113, 256
  %115 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 31
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %114, %116
  %118 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 32
  %119 = load i32, i32* %118, align 16
  %120 = mul nsw i32 %119, 256
  %121 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 33
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %120, %122
  %124 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 34
  %125 = load i32, i32* %124, align 8
  %126 = mul nsw i32 %125, 256
  %127 = getelementptr inbounds [132 x i32], [132 x i32]* %9, i64 0, i64 35
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %126, %128
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = load i8*, i8** %5, align 8
  %133 = call i32 @printf(i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str, i64 0, i64 0), i64 %45, i64 %47, i32 %49, i32 %51, i32 %53, i32 %55, i32 %57, i32 %59, i32 %61, i32 %63, i32 %65, i32 %67, i32 %69, i32 %71, i32 %73, i32 %75, i32 %77, i32 %79, i32 %93, i32 %99, i32 %105, i32 %111, i32 %117, i32 %123, i32 %129, i64 %131, i8* %132)
  store i32 1, i32* %3, align 4
  br label %134

134:                                              ; preds = %43, %42
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @adler32(i32, i32*, i32) #1

declare dso_local i32 @crc32(i32, i32*, i32) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @printf(i8*, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
