; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_mp3.c_mp3_start_play.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_mp3.c_mp3_start_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mp3_file_pos = common dso_local global i32 0, align 4
@mp3_file_len = common dso_local global i32 0, align 4
@mp3_current_file = common dso_local global i32* null, align 8
@cdda_out_pos = common dso_local global i64 0, align 8
@decoder_active = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4
@POPT_EN_MCD_CDDA = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp3_start_play(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2048 x i8], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %6, align 8
  store i32 0, i32* @mp3_file_pos, align 4
  store i32 0, i32* @mp3_file_len, align 4
  store i32* null, i32** @mp3_current_file, align 8
  store i64 0, i64* @cdda_out_pos, align 8
  store i32 0, i32* @decoder_active, align 4
  %13 = load i32, i32* @PicoOpt, align 4
  %14 = load i32, i32* @POPT_EN_MCD_CDDA, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32*, i32** %6, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %2
  br label %86

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @SEEK_END, align 4
  %24 = call i32 @fseek(i32* %22, i32 0, i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @ftell(i32* %25)
  store i32 %26, i32* @mp3_file_len, align 4
  br label %27

27:                                               ; preds = %51, %21
  %28 = load i32, i32* @mp3_file_pos, align 4
  %29 = icmp slt i32 %28, 131072
  br i1 %29, label %30, label %56

30:                                               ; preds = %27
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @mp3_file_pos, align 4
  %33 = load i32, i32* @SEEK_SET, align 4
  %34 = call i32 @fseek(i32* %31, i32 %32, i32 %33)
  %35 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @fread(i8* %35, i32 1, i32 2048, i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %56

41:                                               ; preds = %30
  %42 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @mp3_find_sync_word(i8* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @mp3_file_pos, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* @mp3_file_pos, align 4
  br label %56

51:                                               ; preds = %41
  %52 = load i32, i32* %9, align 4
  %53 = sub nsw i32 %52, 3
  %54 = load i32, i32* @mp3_file_pos, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* @mp3_file_pos, align 4
  br label %27

56:                                               ; preds = %47, %40, %27
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load i32, i32* @mp3_file_len, align 4
  %61 = load i32, i32* @mp3_file_pos, align 4
  %62 = sub nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %10, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %10, align 8
  %67 = mul i64 %66, %65
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = lshr i64 %68, 10
  %70 = load i32, i32* @mp3_file_pos, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* @mp3_file_pos, align 4
  br label %74

74:                                               ; preds = %59, %56
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* @mp3_file_pos, align 4
  %77 = call i32 @mp3dec_start(i32* %75, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %86

81:                                               ; preds = %74
  %82 = load i32*, i32** %6, align 8
  store i32* %82, i32** @mp3_current_file, align 8
  store i32 1, i32* @decoder_active, align 4
  %83 = load i32*, i32** @mp3_current_file, align 8
  %84 = load i32, i32* @mp3_file_len, align 4
  %85 = call i32 @mp3dec_decode(i32* %83, i32* @mp3_file_pos, i32 %84)
  br label %86

86:                                               ; preds = %81, %80, %20
  ret void
}

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @mp3_find_sync_word(i8*, i32) #1

declare dso_local i32 @mp3dec_start(i32*, i32) #1

declare dso_local i32 @mp3dec_decode(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
