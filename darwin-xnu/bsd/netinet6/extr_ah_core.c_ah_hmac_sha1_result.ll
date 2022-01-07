; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ah_core.c_ah_hmac_sha1_result.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ah_core.c_ah_hmac_sha1_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ah_algorithm_state = type { i64 }

@SHA1_RESULTLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ah_hmac_sha1_result: what?\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ah_algorithm_state*, i32*, i64)* @ah_hmac_sha1_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ah_hmac_sha1_result(%struct.ah_algorithm_state* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ah_algorithm_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.ah_algorithm_state* %0, %struct.ah_algorithm_state** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32, i32* @SHA1_RESULTLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 4
  store i64 %13, i64* %8, align 8
  %16 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %17 = icmp ne %struct.ah_algorithm_state* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %20 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18, %3
  %24 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %18
  %26 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %27 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %9, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 64
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 64
  %34 = bitcast i32* %33 to i8*
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** %11, align 8
  %36 = getelementptr inbounds i32, i32* %15, i64 0
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @SHA1Final(i32* %36, i32* %37)
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @SHA1Init(i32* %39)
  %41 = load i32*, i32** %11, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @SHA1Update(i32* %41, i32* %42, i32 64)
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds i32, i32* %15, i64 0
  %46 = mul nuw i64 4, %13
  %47 = trunc i64 %46 to i32
  %48 = call i32 @SHA1Update(i32* %44, i32* %45, i32 %47)
  %49 = getelementptr inbounds i32, i32* %15, i64 0
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @SHA1Final(i32* %49, i32* %50)
  %52 = getelementptr inbounds i32, i32* %15, i64 0
  %53 = load i32*, i32** %5, align 8
  %54 = bitcast i32* %53 to i8*
  %55 = mul nuw i64 4, %13
  %56 = load i64, i64* %6, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %25
  %59 = load i64, i64* %6, align 8
  br label %62

60:                                               ; preds = %25
  %61 = mul nuw i64 4, %13
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i64 [ %59, %58 ], [ %61, %60 ]
  %64 = call i32 @bcopy(i32* %52, i8* %54, i64 %63)
  %65 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %66 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @M_TEMP, align 4
  %69 = call i32 @FREE(i64 %67, i32 %68)
  %70 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %70)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @panic(i8*) #2

declare dso_local i32 @SHA1Final(i32*, i32*) #2

declare dso_local i32 @SHA1Init(i32*) #2

declare dso_local i32 @SHA1Update(i32*, i32*, i32) #2

declare dso_local i32 @bcopy(i32*, i8*, i64) #2

declare dso_local i32 @FREE(i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
