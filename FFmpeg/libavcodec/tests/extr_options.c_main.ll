; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_options.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_options.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dummy_v1_encoder = common dso_local global i32 0, align 4
@dummy_v2_encoder = common dso_local global i32 0, align 4
@dummy_v3_encoder = common dso_local global i32 0, align 4
@dummy_v4_encoder = common dso_local global i32 0, align 4
@__const.main.dummy_codec = private unnamed_addr constant [5 x i32*] [i32* @dummy_v1_encoder, i32* @dummy_v2_encoder, i32* @dummy_v3_encoder, i32* @dummy_v4_encoder, i32* null], align 16
@.str = private unnamed_addr constant [32 x i8] c"testing avcodec_copy_context()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x i32*], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = bitcast [5 x i32*]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([5 x i32*]* @__const.main.dummy_codec to i8*), i64 40, i1 false)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %18, %0
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [5 x i32*], [5 x i32*]* %2, i64 0, i64 %8
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %6
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [5 x i32*], [5 x i32*]* %2, i64 0, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @avcodec_register(i32* %16)
  br label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %6

21:                                               ; preds = %6
  %22 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %48, %21
  %24 = load i32, i32* %3, align 4
  %25 = getelementptr inbounds [5 x i32*], [5 x i32*]* %2, i64 0, i64 0
  %26 = call i32 @FF_ARRAY_ELEMS(i32** %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %44, %28
  %30 = load i32, i32* %4, align 4
  %31 = getelementptr inbounds [5 x i32*], [5 x i32*]* %2, i64 0, i64 0
  %32 = call i32 @FF_ARRAY_ELEMS(i32** %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [5 x i32*], [5 x i32*]* %2, i64 0, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [5 x i32*], [5 x i32*]* %2, i64 0, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @test_copy(i32* %38, i32* %42)
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %29

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %23

51:                                               ; preds = %23
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @avcodec_register(i32*) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @FF_ARRAY_ELEMS(i32**) #2

declare dso_local i32 @test_copy(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
