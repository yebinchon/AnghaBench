; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_ttime.c_parseFraction.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_ttime.c_parseFraction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.parseFraction.factor = private unnamed_addr constant [6 x i32] [i32 1, i32 10, i32 100, i32 1000, i32 10000, i32 100000], align 16
@TSDB_TIME_PRECISION_MILLI = common dso_local global i32 0, align 4
@TSDB_TIME_PRECISION_MICRO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parseFraction(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [6 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 3, i32* %10, align 4
  store i32 6, i32* %11, align 4
  %15 = bitcast [6 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([6 x i32]* @__const.parseFraction.factor to i8*), i64 24, i1 false)
  store i32 1, i32* %13, align 4
  br label %16

16:                                               ; preds = %34, %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sge i32 %22, 48
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp sle i32 %30, 57
  br label %32

32:                                               ; preds = %24, %16
  %33 = phi i1 [ false, %16 ], [ %31, %24 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %16

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %80

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @TSDB_TIME_PRECISION_MILLI, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = icmp sge i32 %47, 3
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 3, i32* %8, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 3, %51
  store i32 %52, i32* %13, align 4
  br label %65

53:                                               ; preds = %42
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @TSDB_TIME_PRECISION_MICRO, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = icmp sge i32 %59, 6
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 6, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %53
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 6, %63
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %62, %50
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @strnatoi(i8* %66, i32 %67)
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %68, %72
  store i32 %73, i32* %9, align 4
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8**, i8*** %6, align 8
  store i8* %77, i8** %78, align 8
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %65, %41
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @strnatoi(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
