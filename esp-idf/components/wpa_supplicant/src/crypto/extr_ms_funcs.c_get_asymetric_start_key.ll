; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_ms_funcs.c_get_asymetric_start_key.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_ms_funcs.c_get_asymetric_start_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_asymetric_start_key.magic2 = internal constant [84 x i32] [i32 79, i32 110, i32 32, i32 116, i32 104, i32 101, i32 32, i32 99, i32 108, i32 105, i32 101, i32 110, i32 116, i32 32, i32 115, i32 105, i32 100, i32 101, i32 44, i32 32, i32 116, i32 104, i32 105, i32 115, i32 32, i32 105, i32 115, i32 32, i32 116, i32 104, i32 101, i32 32, i32 115, i32 101, i32 110, i32 100, i32 32, i32 107, i32 101, i32 121, i32 59, i32 32, i32 111, i32 110, i32 32, i32 116, i32 104, i32 101, i32 32, i32 115, i32 101, i32 114, i32 118, i32 101, i32 114, i32 32, i32 115, i32 105, i32 100, i32 101, i32 44, i32 32, i32 105, i32 116, i32 32, i32 105, i32 115, i32 32, i32 116, i32 104, i32 101, i32 32, i32 114, i32 101, i32 99, i32 101, i32 105, i32 118, i32 101, i32 32, i32 107, i32 101, i32 121, i32 46], align 16
@get_asymetric_start_key.magic3 = internal constant [84 x i32] [i32 79, i32 110, i32 32, i32 116, i32 104, i32 101, i32 32, i32 99, i32 108, i32 105, i32 101, i32 110, i32 116, i32 32, i32 115, i32 105, i32 100, i32 101, i32 44, i32 32, i32 116, i32 104, i32 105, i32 115, i32 32, i32 105, i32 115, i32 32, i32 116, i32 104, i32 101, i32 32, i32 114, i32 101, i32 99, i32 101, i32 105, i32 118, i32 101, i32 32, i32 107, i32 101, i32 121, i32 59, i32 32, i32 111, i32 110, i32 32, i32 116, i32 104, i32 101, i32 32, i32 115, i32 101, i32 114, i32 118, i32 101, i32 114, i32 32, i32 115, i32 105, i32 100, i32 101, i32 44, i32 32, i32 105, i32 116, i32 32, i32 105, i32 115, i32 32, i32 116, i32 104, i32 101, i32 32, i32 115, i32 101, i32 110, i32 100, i32 32, i32 107, i32 101, i32 121, i32 46], align 16
@get_asymetric_start_key.shs_pad1 = internal constant [40 x i32] zeroinitializer, align 16
@get_asymetric_start_key.shs_pad2 = internal constant [40 x i32] [i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242, i32 242], align 16
@SHA1_MAC_LEN = common dso_local global i32 0, align 4
@__const.get_asymetric_start_key.len = private unnamed_addr constant [4 x i64] [i64 16, i64 40, i64 84, i64 40], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_asymetric_start_key(i32* %0, i32* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [4 x i8*], align 16
  %15 = alloca [4 x i64], align 16
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* @SHA1_MAC_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = bitcast [4 x i64]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([4 x i64]* @__const.get_asymetric_start_key.len to i8*), i64 32, i1 false)
  %22 = load i32*, i32** %7, align 8
  %23 = bitcast i32* %22 to i8*
  %24 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 0
  store i8* %23, i8** %24, align 16
  %25 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 1
  store i8* bitcast ([40 x i32]* @get_asymetric_start_key.shs_pad1 to i8*), i8** %25, align 8
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %5
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32* getelementptr inbounds ([84 x i32], [84 x i32]* @get_asymetric_start_key.magic3, i64 0, i64 0), i32* getelementptr inbounds ([84 x i32], [84 x i32]* @get_asymetric_start_key.magic2, i64 0, i64 0)
  %33 = bitcast i32* %32 to i8*
  %34 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 2
  store i8* %33, i8** %34, align 16
  br label %42

35:                                               ; preds = %5
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32* getelementptr inbounds ([84 x i32], [84 x i32]* @get_asymetric_start_key.magic2, i64 0, i64 0), i32* getelementptr inbounds ([84 x i32], [84 x i32]* @get_asymetric_start_key.magic3, i64 0, i64 0)
  %40 = bitcast i32* %39 to i8*
  %41 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 2
  store i8* %40, i8** %41, align 16
  br label %42

42:                                               ; preds = %35, %28
  %43 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 3
  store i8* bitcast ([40 x i32]* @get_asymetric_start_key.shs_pad2 to i8*), i8** %43, align 8
  %44 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i64 0, i64 0
  %45 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 0
  %46 = call i64 @sha1_vector(i32 4, i8** %44, i64* %45, i32* %20)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %61

49:                                               ; preds = %42
  %50 = load i64, i64* %9, align 8
  %51 = load i32, i32* @SHA1_MAC_LEN, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ugt i64 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @SHA1_MAC_LEN, align 4
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %9, align 8
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i32*, i32** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @os_memcpy(i32* %58, i32* %20, i64 %59)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %61

61:                                               ; preds = %57, %48
  %62 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @sha1_vector(i32, i8**, i64*, i32*) #3

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
