; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/vn/extr_shadow.c_shadow_map_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/vn/extr_shadow.c_shadow_map_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i8*, i64, i8*, i8* }

@BAND_SIZE_DEFAULT = common dso_local global i32 0, align 4
@BAND_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"file is too big: %d > %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to allocate bitmap\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to allocate bands\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to allocate map\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @shadow_map_create(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @BAND_SIZE_DEFAULT, align 4
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %17, %4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i8* @howmany(i32 %20, i32 %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* @BAND_MAX, align 4
  %26 = add nsw i32 %25, 1
  %27 = icmp sgt i32 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @BAND_MAX, align 4
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  br label %100

32:                                               ; preds = %19
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @block_bitmap_size(i32 %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i8* @my_malloc(i32 %36)
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %100

42:                                               ; preds = %32
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @bzero(i8* %43, i32 %44)
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 1
  %49 = trunc i64 %48 to i32
  %50 = call i8* @my_malloc(i32 %49)
  store i8* %50, i8** %12, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %100

55:                                               ; preds = %42
  %56 = load i8*, i8** %12, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 1
  %60 = trunc i64 %59 to i32
  %61 = call i32 @bzero(i8* %56, i32 %60)
  %62 = call i8* @my_malloc(i32 48)
  %63 = bitcast i8* %62 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %13, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %65 = icmp eq %struct.TYPE_3__* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %100

68:                                               ; preds = %55
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sdiv i32 %69, %70
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 7
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 6
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %80, %83
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 5
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  store i32 -1, i32* %90, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i8* @howmany(i32 %91, i32 %92)
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  store %struct.TYPE_3__* %99, %struct.TYPE_3__** %5, align 8
  br label %113

100:                                              ; preds = %66, %53, %40, %28
  %101 = load i8*, i8** %10, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 @my_free(i8* %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i8*, i8** %12, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i8*, i8** %12, align 8
  %111 = call i32 @my_free(i8* %110)
  br label %112

112:                                              ; preds = %109, %106
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %5, align 8
  br label %113

113:                                              ; preds = %112, %68
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  ret %struct.TYPE_3__* %114
}

declare dso_local i8* @howmany(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @block_bitmap_size(i32, i32) #1

declare dso_local i8* @my_malloc(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @my_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
