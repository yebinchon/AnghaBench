; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_reader.c_asf_read_object_adv_content_encryption.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_reader.c_asf_read_object_adv_content_encryption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"Content Encryption Records Count\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"System ID\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"System Version\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Encrypted Object Record Count\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Encrypted Object ID Type\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Encrypted Object ID Length\00", align 1
@VC_CONTAINER_ERROR_CORRUPTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"Data Size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @asf_read_object_adv_content_encryption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_read_object_adv_content_encryption(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @ASF_READ_U16(i32* %12, i64 %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i64 %14, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %76, %2
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %79

19:                                               ; preds = %15
  %20 = load i32*, i32** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @ASF_SKIP_GUID(i32* %20, i64 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32*, i32** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @ASF_SKIP_U32(i32* %23, i64 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32*, i32** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @ASF_READ_U16(i32* %26, i64 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i64 %28, i64* %9, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @CHECK_POINT(i32* %29, i64 %30)
  store i64 0, i64* %8, align 8
  br label %32

32:                                               ; preds = %56, %19
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = load i32*, i32** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @ASF_SKIP_U16(i32* %37, i64 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i32*, i32** %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @ASF_READ_U16(i32* %40, i64 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %47, i32* %3, align 4
  br label %82

48:                                               ; preds = %36
  %49 = load i32*, i32** %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @ASF_SKIP_BYTES(i32* %49, i64 %50, i64 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @CHECK_POINT(i32* %53, i64 %54)
  br label %56

56:                                               ; preds = %48
  %57 = load i64, i64* %8, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %8, align 8
  br label %32

59:                                               ; preds = %32
  %60 = load i32*, i32** %4, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i64 @ASF_READ_U32(i32* %60, i64 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %67, i32* %3, align 4
  br label %82

68:                                               ; preds = %59
  %69 = load i32*, i32** %4, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @ASF_SKIP_BYTES(i32* %69, i64 %70, i64 %71)
  %73 = load i32*, i32** %4, align 8
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @CHECK_POINT(i32* %73, i64 %74)
  br label %76

76:                                               ; preds = %68
  %77 = load i64, i64* %6, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %6, align 8
  br label %15

79:                                               ; preds = %15
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @STREAM_STATUS(i32* %80)
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %66, %46
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @ASF_READ_U16(i32*, i64, i8*) #1

declare dso_local i32 @ASF_SKIP_GUID(i32*, i64, i8*) #1

declare dso_local i32 @ASF_SKIP_U32(i32*, i64, i8*) #1

declare dso_local i32 @CHECK_POINT(i32*, i64) #1

declare dso_local i32 @ASF_SKIP_U16(i32*, i64, i8*) #1

declare dso_local i32 @ASF_SKIP_BYTES(i32*, i64, i64) #1

declare dso_local i64 @ASF_READ_U32(i32*, i64, i8*) #1

declare dso_local i32 @STREAM_STATUS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
