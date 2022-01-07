; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngtest.c_write_vpAg_chunk.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngtest.c_write_vpAg_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }

@__const.write_vpAg_chunk.vpAg = private unnamed_addr constant [5 x i32] [i32 118, i32 112, i32 65, i32 103, i32 0], align 16
@verbose = common dso_local global i64 0, align 8
@STDERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c" vpAg = %lu x %lu, units = %d\0A\00", align 1
@user_chunk_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @write_vpAg_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_vpAg_chunk(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [5 x i32], align 16
  %4 = alloca [9 x i32], align 16
  store i32 %0, i32* %2, align 4
  %5 = bitcast [5 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([5 x i32]* @__const.write_vpAg_chunk.vpAg to i8*), i64 20, i1 false)
  %6 = load i64, i64* @verbose, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @STDERR, align 4
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @user_chunk_data, i32 0, i32 2), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @user_chunk_data, i32 0, i32 1), align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @user_chunk_data, i32 0, i32 0), align 8
  %13 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %10, i64 %11, i32 %12)
  br label %14

14:                                               ; preds = %8, %1
  %15 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @user_chunk_data, i32 0, i32 2), align 8
  %17 = call i32 @png_save_uint_32(i32* %15, i64 %16)
  %18 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @user_chunk_data, i32 0, i32 1), align 8
  %21 = call i32 @png_save_uint_32(i32* %19, i64 %20)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @user_chunk_data, i32 0, i32 0), align 8
  %23 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 8
  store i32 %22, i32* %23, align 16
  %24 = load i32, i32* %2, align 4
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  %26 = getelementptr inbounds [9 x i32], [9 x i32]* %4, i64 0, i64 0
  %27 = call i32 @png_write_chunk(i32 %24, i32* %25, i32* %26, i32 9)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i64, i32) #2

declare dso_local i32 @png_save_uint_32(i32*, i64) #2

declare dso_local i32 @png_write_chunk(i32, i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
