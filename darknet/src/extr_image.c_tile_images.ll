; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_tile_images.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_tile_images.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tile_images(%struct.TYPE_12__* noalias sret %0, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %1, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__, align 8
  store i32 %3, i32* %5, align 4
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  call void @copy_image(%struct.TYPE_12__* sret %0, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %2)
  br label %68

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %13, %15
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  br label %31

28:                                               ; preds = %11
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i64 [ %27, %25 ], [ %30, %28 ]
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  br label %44

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i64 [ %40, %38 ], [ %43, %41 ]
  call void @make_image(%struct.TYPE_12__* sret %6, i64 %19, i64 %32, i64 %45)
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = mul nsw i64 %47, %49
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = mul nsw i64 %50, %52
  %54 = trunc i64 %53 to i32
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @fill_cpu(i32 %54, i32 1, i32 %56, i32 1)
  %58 = call i32 @embed_image(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %1, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %6, i32 0, i32 0)
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @composite_image(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %2, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %6, i32 %64, i32 0)
  %66 = bitcast %struct.TYPE_12__* %0 to i8*
  %67 = bitcast %struct.TYPE_12__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 32, i1 false)
  br label %68

68:                                               ; preds = %44, %10
  ret void
}

declare dso_local void @copy_image(%struct.TYPE_12__* sret, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8) #1

declare dso_local void @make_image(%struct.TYPE_12__* sret, i64, i64, i64) #1

declare dso_local i32 @fill_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @embed_image(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8, i32, i32) #1

declare dso_local i32 @composite_image(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
