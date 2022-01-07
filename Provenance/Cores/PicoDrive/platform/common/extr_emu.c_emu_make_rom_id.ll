; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_emu.c_emu_make_rom_id.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_emu.c_emu_make_rom_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@emu_make_rom_id.id_string = internal global [201 x i8] zeroinitializer, align 16
@PicoAHW = common dso_local global i32 0, align 4
@PAHW_MCD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"CD|\00", align 1
@PAHW_SMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"MS|\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"MD|\00", align 1
@media_id_header = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @emu_make_rom_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @emu_make_rom_id(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 1, i32* %5, align 4
  %6 = load i32, i32* @PicoAHW, align 4
  %7 = load i32, i32* @PAHW_MCD, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @strcpy(i8* getelementptr inbounds ([201 x i8], [201 x i8]* @emu_make_rom_id.id_string, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load i32, i32* @PicoAHW, align 4
  %14 = load i32, i32* @PAHW_SMS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @strcpy(i8* getelementptr inbounds ([201 x i8], [201 x i8]* @emu_make_rom_id.id_string, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %21

19:                                               ; preds = %12
  %20 = call i32 @strcpy(i8* getelementptr inbounds ([201 x i8], [201 x i8]* @emu_make_rom_id.id_string, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %17
  br label %22

22:                                               ; preds = %21, %10
  store i32 3, i32* %4, align 4
  %23 = load i32, i32* @PicoAHW, align 4
  %24 = load i32, i32* @PAHW_SMS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %78, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* getelementptr inbounds ([201 x i8], [201 x i8]* @emu_make_rom_id.id_string, i64 0, i64 0), i64 %29
  %31 = load i64, i64* @media_id_header, align 8
  %32 = add nsw i64 %31, 128
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @extract_text(i8* %30, i64 %32, i32 14, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [201 x i8], [201 x i8]* @emu_make_rom_id.id_string, i64 0, i64 %40
  store i8 124, i8* %41, align 1
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* getelementptr inbounds ([201 x i8], [201 x i8]* @emu_make_rom_id.id_string, i64 0, i64 0), i64 %45
  %47 = load i64, i64* @media_id_header, align 8
  %48 = add nsw i64 %47, 240
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @extract_text(i8* %46, i64 %48, i32 3, i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [201 x i8], [201 x i8]* @emu_make_rom_id.id_string, i64 0, i64 %56
  store i8 124, i8* %57, align 1
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* getelementptr inbounds ([201 x i8], [201 x i8]* @emu_make_rom_id.id_string, i64 0, i64 0), i64 %61
  %63 = load i64, i64* @media_id_header, align 8
  %64 = add nsw i64 %63, 80
  %65 = load i32, i32* %5, align 4
  %66 = call i64 @extract_text(i8* %62, i64 %64, i32 48, i32 %65)
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [201 x i8], [201 x i8]* @emu_make_rom_id.id_string, i64 0, i64 %72
  store i8 0, i8* %73, align 1
  %74 = load i32, i32* %4, align 4
  %75 = icmp sgt i32 %74, 5
  br i1 %75, label %76, label %77

76:                                               ; preds = %27
  store i8* getelementptr inbounds ([201 x i8], [201 x i8]* @emu_make_rom_id.id_string, i64 0, i64 0), i8** %2, align 8
  br label %81

77:                                               ; preds = %27
  store i32 3, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %22
  %79 = load i8*, i8** %3, align 8
  %80 = call i32 @fname_ext(i8* getelementptr inbounds ([201 x i8], [201 x i8]* @emu_make_rom_id.id_string, i64 0, i64 3), i32 198, i32* null, i32* null, i8* %79)
  store i8* getelementptr inbounds ([201 x i8], [201 x i8]* @emu_make_rom_id.id_string, i64 0, i64 0), i8** %2, align 8
  br label %81

81:                                               ; preds = %78, %76
  %82 = load i8*, i8** %2, align 8
  ret i8* %82
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @extract_text(i8*, i64, i32, i32) #1

declare dso_local i32 @fname_ext(i8*, i32, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
