; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_network.c_forward_network.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_network.c_forward_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i64, {}*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @forward_network(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = bitcast %struct.TYPE_8__* %3 to i8*
  %8 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 32, i1 false)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %52, %1
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %55

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 5
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i64 %20
  %22 = bitcast %struct.TYPE_9__* %5 to i8*
  %23 = bitcast %struct.TYPE_9__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 40, i1 false)
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %29, %31
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @fill_cpu(i32 %32, i32 0, i64 %34, i32 1)
  br label %36

36:                                               ; preds = %27, %14
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 4
  %38 = bitcast {}** %37 to i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)**
  %39 = load i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)** %38, align 8
  %40 = call i32 %39(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %5, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %3)
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 4
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 3
  store i32 %49, i32* %50, align 8
  br label %51

51:                                               ; preds = %47, %36
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %9

55:                                               ; preds = %9
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %57 = call i32 @calc_network_cost(%struct.TYPE_8__* %56)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fill_cpu(i32, i32, i64, i32) #2

declare dso_local i32 @calc_network_cost(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
