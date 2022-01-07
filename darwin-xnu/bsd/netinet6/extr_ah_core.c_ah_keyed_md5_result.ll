; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ah_core.c_ah_keyed_md5_result.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ah_core.c_ah_keyed_md5_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ah_algorithm_state = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"ah_keyed_md5_result: what?\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ah_algorithm_state*, i64, i64)* @ah_keyed_md5_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ah_keyed_md5_result(%struct.ah_algorithm_state* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ah_algorithm_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [16 x i32], align 4
  store %struct.ah_algorithm_state* %0, %struct.ah_algorithm_state** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %9 = icmp ne %struct.ah_algorithm_state* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %3
  %13 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %14 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %12
  %18 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %19 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  %22 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %23 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @_KEYBUF(i32 %26)
  %28 = inttoptr i64 %27 to i32*
  %29 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %30 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @_KEYLEN(i32 %33)
  %35 = trunc i64 %34 to i32
  %36 = call i32 @MD5Update(i32* %21, i32* %28, i32 %35)
  br label %37

37:                                               ; preds = %17, %12
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %39 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %40 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = call i32 @MD5Final(i32* %38, i32* %42)
  %44 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %45 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @M_TEMP, align 4
  %48 = call i32 @FREE(i64 %46, i32 %47)
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %50 = load i64, i64* %5, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = load i64, i64* %6, align 8
  %53 = icmp ugt i64 64, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %37
  %55 = load i64, i64* %6, align 8
  br label %57

56:                                               ; preds = %37
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i64 [ %55, %54 ], [ 64, %56 ]
  %59 = call i32 @bcopy(i32* %49, i8* %51, i64 %58)
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @MD5Update(i32*, i32*, i32) #1

declare dso_local i64 @_KEYBUF(i32) #1

declare dso_local i64 @_KEYLEN(i32) #1

declare dso_local i32 @MD5Final(i32*, i32*) #1

declare dso_local i32 @FREE(i64, i32) #1

declare dso_local i32 @bcopy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
