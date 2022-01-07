; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_cropscale.c_crop_scale_info.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_cropscale.c_crop_scale_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"crop_scale_info: allocation failure\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"crop-top\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"crop-bottom\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"crop-left\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"crop-right\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"source: %d * %d, crop (%d/%d/%d/%d): %d * %d, scale: %d * %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_12__*)* @crop_scale_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @crop_scale_info(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %4, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = icmp eq %struct.TYPE_11__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  br label %88

21:                                               ; preds = %1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %6, align 8
  %25 = call %struct.TYPE_13__* @calloc(i32 1, i32 8)
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %5, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = icmp eq %struct.TYPE_13__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 @hb_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  br label %88

30:                                               ; preds = %21
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @hb_dict_extract_int(i32* %9, i32* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @hb_dict_extract_int(i32* %10, i32* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @hb_dict_extract_int(i32* %11, i32* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @hb_dict_extract_int(i32* %12, i32* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @hb_dict_extract_int(i32* %7, i32* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @hb_dict_extract_int(i32* %8, i32* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %53, %54
  %56 = sub nsw i32 %52, %55
  store i32 %56, i32* %13, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %62, %63
  %65 = sub nsw i32 %61, %64
  store i32 %65, i32* %14, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @hb_strdup_printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 %70, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %87, %struct.TYPE_13__** %2, align 8
  br label %88

88:                                               ; preds = %30, %28, %20
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  ret %struct.TYPE_13__* %89
}

declare dso_local %struct.TYPE_13__* @calloc(i32, i32) #1

declare dso_local i32 @hb_error(i8*) #1

declare dso_local i32 @hb_dict_extract_int(i32*, i32*, i8*) #1

declare dso_local i32 @hb_strdup_printf(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
