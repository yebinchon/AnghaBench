; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rdt.c_ff_rdt_calc_response_and_checksum.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rdt.c_ff_rdt_calc_response_and_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.ff_rdt_calc_response_and_checksum.buf = private unnamed_addr constant <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\A1\E9\14\9D\0Ek;Y", [56 x i8] zeroinitializer }>, align 16
@ff_rdt_calc_response_and_checksum.xor_table = internal constant [37 x i8] c"\05\18t\D0\0D\09\02S\C0\01\05\05g\03\19p\08'f\10\10r\08\09c\11\03q\08\08p\02\10W\05\18T", align 16
@.str = private unnamed_addr constant [9 x i8] c"01d0a8e3\00", align 1
@XOR_TABLE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_rdt_calc_response_and_checksum(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  %10 = alloca [64 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %7, align 4
  %13 = bitcast [64 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 getelementptr inbounds (<{ [8 x i8], [56 x i8] }>, <{ [8 x i8], [56 x i8] }>* @__const.ff_rdt_calc_response_and_checksum.buf, i32 0, i32 0, i32 0), i64 64, i1 false)
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 40
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 32, i32* %7, align 4
  br label %22

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 56
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 56, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %17
  br label %22

22:                                               ; preds = %21, %16
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %24 = getelementptr inbounds i8, i8* %23, i64 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @memcpy(i8* %24, i8* %25, i32 %26)
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %45, %22
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 37
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [37 x i8], [37 x i8]* @ff_rdt_calc_response_and_checksum.xor_table, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 8, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = xor i32 %42, %36
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %40, align 1
  br label %45

45:                                               ; preds = %31
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %28

48:                                               ; preds = %28
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %51 = call i32 @av_md5_sum(i8* %49, i8* %50, i32 64)
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %54 = call i32 @ff_data_to_hex(i8* %52, i8* %53, i32 16, i32 1)
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 32
  %57 = call i32 @strcpy(i8* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %72, %48
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 8
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load i8*, i8** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = mul nsw i32 %63, 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 %67, i8* %71, align 1
  br label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %58

75:                                               ; preds = %58
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 8
  store i8 0, i8* %77, align 1
  ret void
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @av_md5_sum(i8*, i8*, i32) #1

declare dso_local i32 @ff_data_to_hex(i8*, i8*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
