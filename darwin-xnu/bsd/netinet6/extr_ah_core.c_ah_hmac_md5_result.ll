; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ah_core.c_ah_hmac_md5_result.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ah_core.c_ah_hmac_md5_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ah_algorithm_state = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"ah_hmac_md5_result: what?\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ah_algorithm_state*, i64, i64)* @ah_hmac_md5_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ah_hmac_md5_result(%struct.ah_algorithm_state* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ah_algorithm_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [16 x i32], align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.ah_algorithm_state* %0, %struct.ah_algorithm_state** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %12 = icmp ne %struct.ah_algorithm_state* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %15 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13, %3
  %19 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %13
  %21 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %22 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 64
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 64
  %29 = bitcast i32* %28 to i8*
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %10, align 8
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @MD5Final(i32* %31, i32* %32)
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @MD5Init(i32* %34)
  %36 = load i32*, i32** %10, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @MD5Update(i32* %36, i32* %37, i32 64)
  %39 = load i32*, i32** %10, align 8
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %41 = call i32 @MD5Update(i32* %39, i32* %40, i32 64)
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @MD5Final(i32* %42, i32* %43)
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %46 = load i64, i64* %5, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load i64, i64* %6, align 8
  %49 = icmp ugt i64 64, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %20
  %51 = load i64, i64* %6, align 8
  br label %53

52:                                               ; preds = %20
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i64 [ %51, %50 ], [ 64, %52 ]
  %55 = call i32 @bcopy(i32* %45, i8* %47, i64 %54)
  %56 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %57 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @M_TEMP, align 4
  %60 = call i32 @FREE(i64 %58, i32 %59)
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @MD5Final(i32*, i32*) #1

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, i32*, i32) #1

declare dso_local i32 @bcopy(i32*, i8*, i64) #1

declare dso_local i32 @FREE(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
