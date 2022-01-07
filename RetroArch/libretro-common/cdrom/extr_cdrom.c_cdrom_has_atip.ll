; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/cdrom/extr_cdrom.c_cdrom_has_atip.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/cdrom/extr_cdrom.c_cdrom_has_atip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.cdrom_has_atip.cdb = private unnamed_addr constant [10 x i8] c"C\02\04\00\00\00\00\090\00", align 1
@DIRECTION_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdrom_has_atip(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [10 x i8], align 1
  %5 = alloca [32 x i8], align 16
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = bitcast [10 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.cdrom_has_atip.cdb, i32 0, i32 0), i64 10, i1 false)
  %9 = bitcast [32 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 32, i1 false)
  store i16 0, i16* %6, align 2
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @DIRECTION_IN, align 4
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %13 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %14 = call i32 @cdrom_send_command(i32* %10, i32 %11, i8* %12, i32 32, i8* %13, i32 10, i32 0)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

18:                                               ; preds = %1
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %20 = load i8, i8* %19, align 16
  %21 = zext i8 %20 to i32
  %22 = shl i32 %21, 8
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %22, %25
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %6, align 2
  %28 = load i16, i16* %6, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp slt i32 %29, 5
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %33

32:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31, %17
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cdrom_send_command(i32*, i32, i8*, i32, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
