; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_img_tape.c_IMG_TAPE_Create.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_img_tape.c_IMG_TAPE_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i8*, i8*, i64, i64, i64, i64, i64, i64, i8*, i32, i32* }
%struct.TYPE_6__ = type { i8, i32, i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"wb+\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"FUJI\00", align 1
@DEFAULT_BAUDRATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"baud\00", align 1
@CASSETTE_DESCRIPTION_MAX = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@DEFAULT_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @IMG_TAPE_Create(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %9, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %118

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %8, align 8
  %19 = call i32 @memset(%struct.TYPE_6__* %7, i32 0, i32 24)
  %20 = load i64, i64* %8, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = ptrtoint i8* %21 to i8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i8 %22, i8* %23, align 8
  %24 = load i64, i64* %8, align 8
  %25 = lshr i64 %24, 8
  %26 = inttoptr i64 %25 to i8*
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store i8* %26, i8** %27, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 4, i32* %28)
  %30 = icmp ne i32 %29, 4
  br i1 %30, label %45, label %31

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @fwrite(i8* %32, i32 1, i32 4, i32* %33)
  %35 = icmp ne i32 %34, 4
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %8, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @fwrite(i8* %37, i32 1, i32 %39, i32* %40)
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %36, %31, %15
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @fclose(i32* %46)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %118

48:                                               ; preds = %36
  %49 = call i32 @memset(%struct.TYPE_6__* %7, i32 0, i32 24)
  %50 = load i32, i32* @DEFAULT_BAUDRATE, align 4
  %51 = and i32 %50, 255
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @DEFAULT_BAUDRATE, align 4
  %54 = ashr i32 %53, 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store i32 %54, i32* %55, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 4, i32* %56)
  %58 = icmp ne i32 %57, 4
  br i1 %58, label %64, label %59

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @fwrite(i8* %60, i32 1, i32 4, i32* %61)
  %63 = icmp ne i32 %62, 4
  br i1 %63, label %64, label %67

64:                                               ; preds = %59, %48
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @fclose(i32* %65)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %118

67:                                               ; preds = %59
  %68 = call i8* @Util_malloc(i32 104)
  %69 = bitcast i8* %68 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %6, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 12
  store i32* %70, i32** %72, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %67
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 11
  %78 = load i32, i32* %77, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* @CASSETTE_DESCRIPTION_MAX, align 4
  %81 = call i32 @Util_strlcpy(i32 %78, i8* %79, i32 %80)
  br label %82

82:                                               ; preds = %75, %67
  %83 = load i8*, i8** @TRUE, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 10
  store i8* %83, i8** %85, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 9
  store i64 0, i64* %87, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 8
  store i64 0, i64* %89, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 7
  store i64 0, i64* %91, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 6
  store i64 0, i64* %93, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 5
  store i64 0, i64* %95, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 4
  store i64 0, i64* %97, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 @strlen(i8* %98)
  %100 = add nsw i32 %99, 16
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 %100, i32* %104, align 4
  %105 = load i32, i32* @DEFAULT_BUFFER_SIZE, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = sext i32 %105 to i64
  %109 = mul i64 %108, 8
  %110 = trunc i64 %109 to i32
  %111 = call i8* @Util_malloc(i32 %110)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 3
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** @TRUE, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %117, %struct.TYPE_5__** %3, align 8
  br label %118

118:                                              ; preds = %82, %64, %45, %14
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %119
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @Util_malloc(i32) #1

declare dso_local i32 @Util_strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
