; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_sco.c_Convert_16S_ToBT_Filtered.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_sco.c_Convert_16S_ToBT_Filtered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTA_DM_PCM_OVERLAP_SIZE = common dso_local global i32 0, align 4
@SRC_CHANNELS = common dso_local global i32 0, align 4
@BTA_DM_PCM_SMPL_RATE_44100 = common dso_local global i32 0, align 4
@BTA_DM_PCM_SMPL_RATE_22050 = common dso_local global i32 0, align 4
@BTA_DM_PCM_SMPL_RATE_11025 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Convert_16S_ToBT_Filtered(i32* %0, i8* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %18, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* @BTA_DM_PCM_OVERLAP_SIZE, align 4
  %25 = mul nsw i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @BTA_DM_PCM_OVERLAP_SIZE, align 4
  %30 = mul nsw i32 %29, 2
  %31 = call i32 @memcpy(i32* %27, i32* %28, i32 %30)
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* @BTA_DM_PCM_OVERLAP_SIZE, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32* %35, i32** %16, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* @BTA_DM_PCM_OVERLAP_SIZE, align 4
  %38 = mul nsw i32 %37, 3
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32* %40, i32** %17, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* @BTA_DM_PCM_OVERLAP_SIZE, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32* %44, i32** %14, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @SRC_CHANNELS, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  %52 = load i32, i32* @BTA_DM_PCM_OVERLAP_SIZE, align 4
  %53 = sext i32 %52 to i64
  %54 = sub i64 0, %53
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32* %55, i32** %15, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @BTA_DM_PCM_SMPL_RATE_44100, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %6
  %60 = load i32*, i32** %16, align 8
  %61 = load i32*, i32** %17, align 8
  %62 = call i32 @CONVERT_44100_TO_BLUETOOTH(i32* %60, i32* %61)
  %63 = load i32*, i32** %14, align 8
  %64 = load i32*, i32** %15, align 8
  %65 = call i32 @CONVERT_44100_TO_BLUETOOTH(i32* %63, i32* %64)
  br label %90

66:                                               ; preds = %6
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @BTA_DM_PCM_SMPL_RATE_22050, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load i32*, i32** %16, align 8
  %72 = load i32*, i32** %17, align 8
  %73 = call i32 @CONVERT_22050_TO_BLUETOOTH(i32* %71, i32* %72)
  %74 = load i32*, i32** %14, align 8
  %75 = load i32*, i32** %15, align 8
  %76 = call i32 @CONVERT_22050_TO_BLUETOOTH(i32* %74, i32* %75)
  br label %89

77:                                               ; preds = %66
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @BTA_DM_PCM_SMPL_RATE_11025, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i32*, i32** %16, align 8
  %83 = load i32*, i32** %17, align 8
  %84 = call i32 @CONVERT_11025_TO_BLUETOOTH(i32* %82, i32* %83)
  %85 = load i32*, i32** %14, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = call i32 @CONVERT_11025_TO_BLUETOOTH(i32* %85, i32* %86)
  br label %88

88:                                               ; preds = %81, %77
  br label %89

89:                                               ; preds = %88, %70
  br label %90

90:                                               ; preds = %89, %59
  %91 = load i32*, i32** %12, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @SRC_CHANNELS, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 4
  %98 = getelementptr inbounds i32, i32* %92, i64 %97
  %99 = load i32, i32* @BTA_DM_PCM_OVERLAP_SIZE, align 4
  %100 = mul nsw i32 %99, 2
  %101 = sext i32 %100 to i64
  %102 = sub i64 0, %101
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = load i32, i32* @BTA_DM_PCM_OVERLAP_SIZE, align 4
  %105 = mul nsw i32 %104, 2
  %106 = call i32 @memcpy(i32* %91, i32* %103, i32 %105)
  %107 = load i32, i32* %13, align 4
  %108 = load i32*, i32** %11, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i32*, i32** %18, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = bitcast i8* %110 to i32*
  %112 = ptrtoint i32* %109 to i64
  %113 = ptrtoint i32* %111 to i64
  %114 = sub i64 %112, %113
  %115 = sdiv exact i64 %114, 4
  %116 = trunc i64 %115 to i32
  ret i32 %116
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @CONVERT_44100_TO_BLUETOOTH(i32*, i32*) #1

declare dso_local i32 @CONVERT_22050_TO_BLUETOOTH(i32*, i32*) #1

declare dso_local i32 @CONVERT_11025_TO_BLUETOOTH(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
