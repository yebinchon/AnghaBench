; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mux.c_ff_choose_timebase.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mux.c_ff_choose_timebase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ff_choose_timebase(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = bitcast %struct.TYPE_6__* %4 to i8*
  %12 = bitcast %struct.TYPE_6__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 8, i1 false)
  store i32 2, i32* %8, align 4
  br label %13

13:                                               ; preds = %39, %3
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 14
  br i1 %15, label %16, label %46

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %33, %16
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %19, %21
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = srem i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br label %31

31:                                               ; preds = %25, %17
  %32 = phi i1 [ false, %17 ], [ %30, %25 ]
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = load i32, i32* %8, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, %34
  store i32 %37, i32* %35, align 4
  br label %17

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = icmp sgt i32 %40, 2
  %42 = zext i1 %41 to i32
  %43 = add nsw i32 1, %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %13

46:                                               ; preds = %13
  br label %47

47:                                               ; preds = %61, %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %49, %51
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 16777216
  br label %59

59:                                               ; preds = %55, %47
  %60 = phi i1 [ false, %47 ], [ %58, %55 ]
  br i1 %60, label %61, label %65

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %47

65:                                               ; preds = %59
  %66 = bitcast %struct.TYPE_6__* %4 to i64*
  %67 = load i64, i64* %66, align 4
  ret i64 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
