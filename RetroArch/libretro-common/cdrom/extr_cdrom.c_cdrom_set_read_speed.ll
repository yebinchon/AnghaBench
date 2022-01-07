; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/cdrom/extr_cdrom.c_cdrom_set_read_speed.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/cdrom/extr_cdrom.c_cdrom_set_read_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.cdrom_set_read_speed.cmd = private unnamed_addr constant <{ i8, [11 x i8] }> <{ i8 -69, [11 x i8] zeroinitializer }>, align 1
@DIRECTION_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdrom_set_read_speed(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [12 x i8], align 1
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = bitcast [12 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds (<{ i8, [11 x i8] }>, <{ i8, [11 x i8] }>* @__const.cdrom_set_read_speed.cmd, i32 0, i32 0), i64 12, i1 false)
  %7 = load i32, i32* %4, align 4
  %8 = lshr i32 %7, 24
  %9 = and i32 %8, 255
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 2
  store i8 %10, i8* %11, align 1
  %12 = load i32, i32* %4, align 4
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 3
  store i8 %15, i8* %16, align 1
  %17 = load i32, i32* %4, align 4
  %18 = lshr i32 %17, 8
  %19 = and i32 %18, 255
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 4
  store i8 %20, i8* %21, align 1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 255
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 5
  store i8 %24, i8* %25, align 1
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @DIRECTION_NONE, align 4
  %28 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %29 = call i32 @cdrom_send_command(i32* %26, i32 %27, i32* null, i32 0, i8* %28, i32 12, i32 0)
  ret i32 %29
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cdrom_send_command(i32*, i32, i32*, i32, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
