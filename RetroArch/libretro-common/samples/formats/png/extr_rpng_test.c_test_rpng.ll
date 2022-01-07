; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/samples/formats/png/extr_rpng_test.c_test_rpng.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/samples/formats/png/extr_rpng_test.c_test_rpng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_rpng.test_data = private unnamed_addr constant [16 x i32] [i32 -16777136, i32 -16777088, i32 -16777152, i32 -16777080, i32 -16777136, i32 -16777088, i32 -16777152, i32 -16777080, i32 -16777021, i32 -16777005, i32 -16777021, i32 -16777005, i32 -16777021, i32 -16777005, i32 -16777021, i32 -16777005], align 16
@.str = private unnamed_addr constant [14 x i8] c"/tmp/test.png\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Path: %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Got image: %u x %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_rpng to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_rpng(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [16 x i32], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = bitcast [16 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([16 x i32]* @__const.test_rpng.test_data to i8*), i64 64, i1 false)
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %10 = call i32 @rpng_save_image_argb(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %9, i32 4, i32 4, i32 16)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %28

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @rpng_load_image_argb(i8* %14, i32** %5, i32* %6, i32* %7)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32 2, i32* %2, align 4
  br label %28

18:                                               ; preds = %13
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @stderr, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @free(i32* %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %18, %17, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @rpng_save_image_argb(i8*, i32*, i32, i32, i32) #2

declare dso_local i32 @rpng_load_image_argb(i8*, i32**, i32*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
