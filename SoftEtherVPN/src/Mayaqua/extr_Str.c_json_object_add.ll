; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_json_object_add.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_json_object_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__**, i32** }
%struct.TYPE_8__ = type { i32 }

@JSON_RET_ERROR = common dso_local global i64 0, align 8
@STARTING_CAPACITY = common dso_local global i32 0, align 4
@JSON_RET_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, i8*, %struct.TYPE_8__*)* @json_object_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @json_object_add(%struct.TYPE_9__* %0, i8* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = icmp eq %struct.TYPE_9__* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %17 = icmp eq %struct.TYPE_8__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %12, %3
  %19 = load i64, i64* @JSON_RET_ERROR, align 8
  store i64 %19, i64* %4, align 8
  br label %87

20:                                               ; preds = %15
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32* @JsonGet(%struct.TYPE_9__* %21, i8* %22)
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i64, i64* @JSON_RET_ERROR, align 8
  store i64 %26, i64* %4, align 8
  br label %87

27:                                               ; preds = %20
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %27
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 2
  %40 = load i32, i32* @STARTING_CAPACITY, align 4
  %41 = call i64 @MAX(i32 %39, i32 %40)
  store i64 %41, i64* %9, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @json_object_resize(%struct.TYPE_9__* %42, i64 %43)
  %45 = load i64, i64* @JSON_RET_ERROR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i64, i64* @JSON_RET_ERROR, align 8
  store i64 %48, i64* %4, align 8
  br label %87

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49, %27
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %8, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i32* @parson_strdup(i8* %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  %59 = load i32**, i32*** %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds i32*, i32** %59, i64 %60
  store i32* %56, i32** %61, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  %64 = load i32**, i32*** %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds i32*, i32** %64, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %50
  %70 = load i64, i64* @JSON_RET_ERROR, align 8
  store i64 %70, i64* %4, align 8
  br label %87

71:                                               ; preds = %50
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = call i32 @JsonGetWrappingValue(%struct.TYPE_9__* %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %79, i64 %80
  store %struct.TYPE_8__* %76, %struct.TYPE_8__** %81, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  %86 = load i64, i64* @JSON_RET_OK, align 8
  store i64 %86, i64* %4, align 8
  br label %87

87:                                               ; preds = %71, %69, %47, %25, %18
  %88 = load i64, i64* %4, align 8
  ret i64 %88
}

declare dso_local i32* @JsonGet(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i64 @json_object_resize(%struct.TYPE_9__*, i64) #1

declare dso_local i32* @parson_strdup(i8*) #1

declare dso_local i32 @JsonGetWrappingValue(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
