; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/png/extr_rpng_encode.c_png_write_iend_string.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/png/extr_rpng_encode.c_png_write_iend_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.png_write_iend_string.data = private unnamed_addr constant [8 x i8] c"\00\00\00\00IEND", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @png_write_iend_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_write_iend_string(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [8 x i8], align 1
  store i32* %0, i32** %3, align 8
  %5 = bitcast [8 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.png_write_iend_string.data, i32 0, i32 0), i64 8, i1 false)
  %6 = load i32*, i32** %3, align 8
  %7 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %8 = call i32 @intfstream_write(i32* %6, i8* %7, i32 8)
  %9 = sext i32 %8 to i64
  %10 = icmp ne i64 %9, 8
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %17

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %15 = getelementptr inbounds i8, i8* %14, i64 4
  %16 = call i32 @png_write_crc_string(i32* %13, i8* %15, i32 4)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %12, %11
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @intfstream_write(i32*, i8*, i32) #2

declare dso_local i32 @png_write_crc_string(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
