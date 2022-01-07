; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_network.c_get_network_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_network.c_get_network_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @get_network_image(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_8__, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %27, %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call { i64, i32 } @get_network_image_layer(%struct.TYPE_7__* %14, i32 %15)
  %17 = bitcast %struct.TYPE_8__* %2 to { i64, i32 }*
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %19 = extractvalue { i64, i32 } %16, 0
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %21 = extractvalue { i64, i32 } %16, 1
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %34

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %4, align 4
  br label %10

30:                                               ; preds = %10
  %31 = bitcast %struct.TYPE_8__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 16, i1 false)
  %32 = bitcast %struct.TYPE_8__* %2 to i8*
  %33 = bitcast %struct.TYPE_8__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  br label %34

34:                                               ; preds = %30, %25
  %35 = bitcast %struct.TYPE_8__* %2 to { i64, i32 }*
  %36 = load { i64, i32 }, { i64, i32 }* %35, align 8
  ret { i64, i32 } %36
}

declare dso_local { i64, i32 } @get_network_image_layer(%struct.TYPE_7__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
