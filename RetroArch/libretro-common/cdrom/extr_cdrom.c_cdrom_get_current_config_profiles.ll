; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/cdrom/extr_cdrom.c_cdrom_get_current_config_profiles.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/cdrom/extr_cdrom.c_cdrom_get_current_config_profiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.cdrom_get_current_config_profiles.cdb = private unnamed_addr constant [10 x i8] c"F\02\00\00\00\00\00\FF\FA\00", align 1
@DIRECTION_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"[CDROM] get current config profiles status code %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"[CDROM] Feature Header: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"[CDROM] Profile List Descriptor: \00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"[CDROM] Number of profiles: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"[CDROM] Profile Number: %04X (%s) \00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"(current)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdrom_get_current_config_profiles(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [10 x i8], align 1
  %4 = alloca [65530 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store i32* %0, i32** %2, align 8
  %8 = bitcast [10 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.cdrom_get_current_config_profiles.cdb, i32 0, i32 0), i64 10, i1 false)
  %9 = bitcast [65530 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 65530, i1 false)
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @DIRECTION_IN, align 4
  %12 = getelementptr inbounds [65530 x i8], [65530 x i8]* %4, i64 0, i64 0
  %13 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %14 = call i32 @cdrom_send_command(i32* %10, i32 %11, i8* %12, i32 65530, i8* %13, i32 10, i32 0)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %111

20:                                               ; preds = %1
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %32, %20
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [65530 x i8], [65530 x i8]* %4, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %22

35:                                               ; preds = %22
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %49, %35
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 8, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [65530 x i8], [65530 x i8]* %4, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %38

52:                                               ; preds = %38
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %54 = getelementptr inbounds [65530 x i8], [65530 x i8]* %4, i64 0, i64 11
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = sdiv i32 %56, 4
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %108, %52
  %60 = load i32, i32* %6, align 4
  %61 = getelementptr inbounds [65530 x i8], [65530 x i8]* %4, i64 0, i64 11
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = sdiv i32 %63, 4
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %111

66:                                               ; preds = %59
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  %69 = mul nsw i32 4, %68
  %70 = add nsw i32 8, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [65530 x i8], [65530 x i8]* %4, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = shl i32 %74, 8
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  %78 = mul nsw i32 4, %77
  %79 = add nsw i32 8, %78
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [65530 x i8], [65530 x i8]* %4, i64 0, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = or i32 %75, %84
  %86 = trunc i32 %85 to i16
  store i16 %86, i16* %7, align 2
  %87 = load i16, i16* %7, align 2
  %88 = zext i16 %87 to i32
  %89 = load i16, i16* %7, align 2
  %90 = call i8* @get_profile(i16 zeroext %89)
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %88, i8* %90)
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  %94 = mul nsw i32 4, %93
  %95 = add nsw i32 8, %94
  %96 = add nsw i32 %95, 2
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [65530 x i8], [65530 x i8]* %4, i64 0, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = and i32 %100, 1
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %66
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %107

105:                                              ; preds = %66
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %103
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %59

111:                                              ; preds = %19, %59
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cdrom_send_command(i32*, i32, i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @get_profile(i16 zeroext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
