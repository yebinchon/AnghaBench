; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/cdrom/extr_cdrom.c_cdrom_get_inquiry.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/cdrom/extr_cdrom.c_cdrom_get_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.cdrom_get_inquiry.cdb = private unnamed_addr constant [6 x i8] c"\12\00\00\00\FF\00", align 1
@DIRECTION_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdrom_get_inquiry(i32* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [6 x i8], align 1
  %11 = alloca [256 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = bitcast [6 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.cdrom_get_inquiry.cdb, i32 0, i32 0), i64 6, i1 false)
  %15 = bitcast [256 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 256, i1 false)
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @DIRECTION_IN, align 4
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %19 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %20 = call i32 @cdrom_send_command(i32* %16, i32 %17, i8* %18, i32 256, i8* %19, i32 6, i32 0)
  store i32 %20, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %66

24:                                               ; preds = %4
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %52

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = icmp sge i32 %28, 32
  br i1 %29, label %30, label %52

30:                                               ; preds = %27
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @memset(i8* %31, i32 0, i32 %32)
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %36 = getelementptr inbounds i8, i8* %35, i64 8
  %37 = call i32 @memcpy(i8* %34, i8* %36, i32 8)
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 8
  store i8 32, i8* %39, align 1
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 9
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %43 = getelementptr inbounds i8, i8* %42, i64 16
  %44 = call i32 @memcpy(i8* %41, i8* %43, i32 16)
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 25
  store i8 32, i8* %46, align 1
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 26
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %50 = getelementptr inbounds i8, i8* %49, i64 32
  %51 = call i32 @memcpy(i8* %48, i8* %50, i32 4)
  br label %52

52:                                               ; preds = %30, %27, %24
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %54 = load i8, i8* %53, align 16
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %55, 5
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %13, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32*, i32** %9, align 8
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %63, %60, %52
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %23
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cdrom_send_command(i32*, i32, i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
