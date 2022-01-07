; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_hmac_sha1.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_hmac_sha1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1_RESULTLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mptcp_hmac_sha1(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [8 x i32], align 16
  %13 = alloca [8 x i32], align 16
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %16 = bitcast [8 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 32, i1 false)
  %17 = bitcast [8 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 32, i1 false)
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* @SHA1_RESULTLEN, align 4
  %20 = call i32 @bzero(i32* %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  store i32 %21, i32* %22, align 16
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  store i32 %25, i32* %26, align 16
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 %31, i32* %32, align 4
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %51, %5
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = xor i64 %41, 3906369333256140342
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = xor i64 %48, 6655295901103053916
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  br label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %15, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %15, align 4
  br label %33

54:                                               ; preds = %33
  %55 = call i32 @SHA1Init(i32* %11)
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %57 = bitcast i32* %56 to i8*
  %58 = call i32 @SHA1Update(i32* %11, i8* %57, i32 32)
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %60 = bitcast i32* %59 to i8*
  %61 = call i32 @SHA1Update(i32* %11, i8* %60, i32 8)
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @SHA1Final(i32* %62, i32* %11)
  %64 = call i32 @SHA1Init(i32* %11)
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %66 = bitcast i32* %65 to i8*
  %67 = call i32 @SHA1Update(i32* %11, i8* %66, i32 32)
  %68 = load i32*, i32** %10, align 8
  %69 = bitcast i32* %68 to i8*
  %70 = load i32, i32* @SHA1_RESULTLEN, align 4
  %71 = call i32 @SHA1Update(i32* %11, i8* %69, i32 %70)
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @SHA1Final(i32* %72, i32* %11)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bzero(i32*, i32) #2

declare dso_local i32 @SHA1Init(i32*) #2

declare dso_local i32 @SHA1Update(i32*, i8*, i32) #2

declare dso_local i32 @SHA1Final(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
