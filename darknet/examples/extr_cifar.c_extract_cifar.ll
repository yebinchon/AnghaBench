; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_cifar.c_extract_cifar.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_cifar.c_extract_cifar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32* }

@.str = private unnamed_addr constant [9 x i8] c"airplane\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"automobile\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bird\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"deer\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"dog\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"frog\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"horse\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ship\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"truck\00", align 1
@__const.extract_cifar.labels = private unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)], align 16
@.str.10 = private unnamed_addr constant [47 x i8] c"data/cifar/cifar-10-batches-bin/test_batch.bin\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"data/cifar/train/%d_%s\00", align 1
@PNG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [22 x i8] c"data/cifar/test/%d_%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extract_cifar() #0 {
  %1 = alloca [10 x i8*], align 16
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [256 x i8], align 16
  %11 = bitcast [10 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([10 x i8*]* @__const.extract_cifar.labels to i8*), i64 80, i1 false)
  call void (%struct.TYPE_8__*, ...) @load_all_cifar10(%struct.TYPE_8__* sret %3)
  call void @load_cifar10_data(%struct.TYPE_8__* sret %4, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %46, %0
  %13 = load i32, i32* %2, align 4
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @float_to_image(i32 32, i32 32, i32 3, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @max_index(i32 %33, i32 10)
  store i32 %34, i32* %6, align 4
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [10 x i8*], [10 x i8*]* %1, i64 0, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %36, i8* %40)
  %42 = load i32, i32* %5, align 4
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %44 = load i32, i32* @PNG, align 4
  %45 = call i32 @save_image_options(i32 %42, i8* %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %18
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %12

49:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %84, %49
  %51 = load i32, i32* %2, align 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %87

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @float_to_image(i32 32, i32 32, i32 3, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @max_index(i32 %71, i32 10)
  store i32 %72, i32* %9, align 4
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [10 x i8*], [10 x i8*]* %1, i64 0, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @sprintf(i8* %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %74, i8* %78)
  %80 = load i32, i32* %8, align 4
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %82 = load i32, i32* @PNG, align 4
  %83 = call i32 @save_image_options(i32 %80, i8* %81, i32 %82, i32 0)
  br label %84

84:                                               ; preds = %56
  %85 = load i32, i32* %2, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %2, align 4
  br label %50

87:                                               ; preds = %50
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @load_all_cifar10(%struct.TYPE_8__* sret, ...) #2

declare dso_local void @load_cifar10_data(%struct.TYPE_8__* sret, i8*) #2

declare dso_local i32 @float_to_image(i32, i32, i32, i32) #2

declare dso_local i32 @max_index(i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*) #2

declare dso_local i32 @save_image_options(i32, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
