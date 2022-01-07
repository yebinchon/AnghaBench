; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_bits.c_test_copy_bytes.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_bits.c_test_copy_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bits_0_to_10 = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Testing vc_container_bits_copy_bytes\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Copy whole buffer\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to copy the whole buffer\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Single copy doesn't match original\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Copy buffer piecemeal\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to copy the buffer piecemeal\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Multiple copy doesn't match original\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Copy part of buffer\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Failed to copy part of buffer\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Partial copy doesn't match original\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_copy_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_copy_bytes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %6 = load i32*, i32** @bits_0_to_10, align 8
  %7 = call i32 @countof(i32* %6)
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = call i32 @LOG_DEBUG(i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** @bits_0_to_10, align 8
  %13 = load i32*, i32** @bits_0_to_10, align 8
  %14 = call i32 @countof(i32* %13)
  %15 = call i32 @BITS_INIT(i32* null, i32* %1, i32* %12, i32 %14)
  %16 = mul nuw i64 4, %8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @memset(i32* %10, i32 0, i32 %17)
  %19 = call i32 @countof(i32* %10)
  %20 = call i32 @BITS_COPY_BYTES(i32* null, i32* %1, i32 %19, i32* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @BITS_VALID(i32* null, i32* %1)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %0
  %24 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %0
  %28 = load i32*, i32** @bits_0_to_10, align 8
  %29 = load i32*, i32** @bits_0_to_10, align 8
  %30 = call i32 @countof(i32* %29)
  %31 = call i64 @memcmp(i32* %10, i32* %28, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %27
  %38 = load i32*, i32** @bits_0_to_10, align 8
  %39 = load i32*, i32** @bits_0_to_10, align 8
  %40 = call i32 @countof(i32* %39)
  %41 = call i32 @BITS_INIT(i32* null, i32* %1, i32* %38, i32 %40)
  %42 = mul nuw i64 4, %8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memset(i32* %10, i32 0, i32 %43)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %55, %37
  %46 = load i32, i32* %5, align 4
  %47 = load i32*, i32** @bits_0_to_10, align 8
  %48 = call i32 @countof(i32* %47)
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %10, i64 %52
  %54 = call i32 @BITS_COPY_BYTES(i32* null, i32* %1, i32 1, i32* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %45

58:                                               ; preds = %45
  %59 = call i32 @BITS_VALID(i32* null, i32* %1)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i32, i32* %2, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %58
  %66 = load i32*, i32** @bits_0_to_10, align 8
  %67 = load i32*, i32** @bits_0_to_10, align 8
  %68 = call i32 @countof(i32* %67)
  %69 = call i64 @memcmp(i32* %10, i32* %66, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %73 = load i32, i32* %2, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %71, %65
  %76 = load i32*, i32** @bits_0_to_10, align 8
  %77 = load i32*, i32** @bits_0_to_10, align 8
  %78 = call i32 @countof(i32* %77)
  %79 = call i32 @BITS_INIT(i32* null, i32* %1, i32* %76, i32 %78)
  %80 = mul nuw i64 4, %8
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memset(i32* %10, i32 0, i32 %81)
  %83 = call i32 @BITS_SKIP_BYTES(i32* null, i32* %1, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %84 = call i32 @BITS_REDUCE_BYTES(i32* null, i32* %1, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %85 = call i32 @countof(i32* %10)
  %86 = sub nsw i32 %85, 2
  %87 = call i32 @BITS_COPY_BYTES(i32* null, i32* %1, i32 %86, i32* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %88 = call i32 @BITS_VALID(i32* null, i32* %1)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %75
  %91 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %92 = load i32, i32* %2, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %90, %75
  %95 = load i32*, i32** @bits_0_to_10, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32*, i32** @bits_0_to_10, align 8
  %98 = call i32 @countof(i32* %97)
  %99 = sub nsw i32 %98, 2
  %100 = call i64 @memcmp(i32* %10, i32* %96, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %104 = load i32, i32* %2, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %102, %94
  %107 = load i32, i32* %2, align 4
  %108 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %108)
  ret i32 %107
}

declare dso_local i32 @countof(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @LOG_DEBUG(i32*, i8*) #1

declare dso_local i32 @BITS_INIT(i32*, i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @BITS_COPY_BYTES(i32*, i32*, i32, i32*, i8*) #1

declare dso_local i32 @BITS_VALID(i32*, i32*) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @BITS_SKIP_BYTES(i32*, i32*, i32, i8*) #1

declare dso_local i32 @BITS_REDUCE_BYTES(i32*, i32*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
