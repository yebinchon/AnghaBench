; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/cdrom/extr_cdrom.c_cdrom_get_current_config_core.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/cdrom/extr_cdrom.c_cdrom_get_current_config_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.cdrom_get_current_config_core.cdb = private unnamed_addr constant [10 x i8] c"F\02\00\01\00\00\00\00\14\00", align 1
@DIRECTION_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"[CDROM] get current config core status code %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"[CDROM] Feature Header: \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"[CDROM] Current Profile: CD-ROM\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"[CDROM] Current Profile: %02X%02X\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"[CDROM] Core Feature Descriptor: \00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Unspecified\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"SCSI Family\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"ATAPI\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Serial ATAPI\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"USB\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"[CDROM] Physical Interface Standard: %u (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdrom_get_current_config_core(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [10 x i8], align 1
  %4 = alloca [20 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %9 = bitcast [10 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.cdrom_get_current_config_core.cdb, i32 0, i32 0), i64 10, i1 false)
  %10 = bitcast [20 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 20, i1 false)
  store i32 0, i32* %5, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @DIRECTION_IN, align 4
  %13 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %14 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %15 = call i32 @cdrom_send_command(i32* %11, i32 %12, i8* %13, i32 20, i8* %14, i32 10, i32 0)
  store i32 %15, i32* %6, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %104

21:                                               ; preds = %1
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %33, %21
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %23

36:                                               ; preds = %23
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %38 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 6
  %39 = load i8, i8* %38, align 2
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 7
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 8
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %57

49:                                               ; preds = %42, %36
  %50 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 6
  %51 = load i8, i8* %50, align 2
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 7
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %49, %47
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %70, %57
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 12
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 8, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %59

73:                                               ; preds = %59
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %75 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 12
  %76 = load i8, i8* %75, align 4
  %77 = zext i8 %76 to i32
  %78 = shl i32 %77, 24
  %79 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 13
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = shl i32 %81, 16
  %83 = or i32 %78, %82
  %84 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 14
  %85 = load i8, i8* %84, align 2
  %86 = zext i8 %85 to i32
  %87 = shl i32 %86, 8
  %88 = or i32 %83, %87
  %89 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 15
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = or i32 %88, %91
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  switch i32 %93, label %99 [
    i32 0, label %94
    i32 1, label %95
    i32 2, label %96
    i32 7, label %97
    i32 8, label %98
  ]

94:                                               ; preds = %73
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  br label %100

95:                                               ; preds = %73
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %8, align 8
  br label %100

96:                                               ; preds = %73
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %8, align 8
  br label %100

97:                                               ; preds = %73
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8** %8, align 8
  br label %100

98:                                               ; preds = %73
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %8, align 8
  br label %100

99:                                               ; preds = %73
  br label %100

100:                                              ; preds = %99, %98, %97, %96, %95, %94
  %101 = load i32, i32* %5, align 4
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0), i32 %101, i8* %102)
  br label %104

104:                                              ; preds = %100, %20
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cdrom_send_command(i32*, i32, i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
