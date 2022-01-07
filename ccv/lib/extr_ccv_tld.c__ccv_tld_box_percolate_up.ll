; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_tld.c__ccv_tld_box_percolate_up.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_tld.c__ccv_tld_box_percolate_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @_ccv_tld_box_percolate_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_tld_box_percolate_up(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %12

12:                                               ; preds = %100, %2
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  %16 = sdiv i32 %15, 2
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %101

21:                                               ; preds = %12
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @ccv_array_get(%struct.TYPE_9__* %22, i32 %23)
  %25 = inttoptr i64 %24 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %7, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @ccv_array_get(%struct.TYPE_9__* %26, i32 %27)
  %29 = inttoptr i64 %28 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %8, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %33, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %21
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %4, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %8, align 8
  br label %42

42:                                               ; preds = %39, %21
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %101

47:                                               ; preds = %42
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i64 @ccv_array_get(%struct.TYPE_9__* %48, i32 %49)
  %51 = inttoptr i64 %50 to %struct.TYPE_8__*
  %52 = bitcast %struct.TYPE_8__* %9 to i8*
  %53 = bitcast %struct.TYPE_8__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 8, i1 false)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @ccv_array_get(%struct.TYPE_9__* %54, i32 %55)
  %57 = inttoptr i64 %56 to %struct.TYPE_8__*
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i64 @ccv_array_get(%struct.TYPE_9__* %58, i32 %59)
  %61 = inttoptr i64 %60 to %struct.TYPE_8__*
  %62 = bitcast %struct.TYPE_8__* %57 to i8*
  %63 = bitcast %struct.TYPE_8__* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 8, i1 false)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i64 @ccv_array_get(%struct.TYPE_9__* %64, i32 %65)
  %67 = inttoptr i64 %66 to %struct.TYPE_8__*
  %68 = bitcast %struct.TYPE_8__* %67 to i8*
  %69 = bitcast %struct.TYPE_8__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 8, i1 false)
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  %72 = mul nsw i32 2, %71
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, 1
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = sub nsw i32 %72, %77
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %47
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i64 @ccv_array_get(%struct.TYPE_9__* %85, i32 %86)
  %88 = inttoptr i64 %87 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %88, %struct.TYPE_8__** %11, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %92, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %84
  br label %101

99:                                               ; preds = %84
  br label %100

100:                                              ; preds = %99, %47
  br label %12

101:                                              ; preds = %98, %46, %20
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @_ccv_tld_box_percolate_down(%struct.TYPE_9__* %102, i32 %103)
  ret void
}

declare dso_local i64 @ccv_array_get(%struct.TYPE_9__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @_ccv_tld_box_percolate_down(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
