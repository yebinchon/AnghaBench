; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_hmac.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_hmac.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@main.key2 = internal constant [5 x i8] c"Jefe\00", align 1
@main.data1 = internal constant [9 x i8] c"Hi There\00", align 1
@main.data2 = internal constant [29 x i8] c"what do ya want for nothing?\00", align 16
@main.data4 = internal constant [55 x i8] c"Test Using Larger Than Block-Size Key - Hash Key First\00", align 16
@main.data5 = internal constant [74 x i8] c"Test Using Larger Than Block-Size Key and Larger Than One Block-Size Data\00", align 16
@main.data6 = internal constant [153 x i8] c"This is a test using a larger than block-size key and a larger than block-size data. The key needs to be hashed before being used by the HMAC algorithm.\00", align 16
@AV_HMAC_MD5 = common dso_local global i32 0, align 4
@AV_HMAC_SHA1 = common dso_local global i32 0, align 4
@AV_HMAC_SHA224 = common dso_local global i32 0, align 4
@AV_HMAC_SHA512 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [20 x i8], align 16
  %3 = alloca [131 x i8], align 16
  %4 = alloca [50 x i8], align 16
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %8 = call i32 @memset(i8* %7, i32 11, i32 20)
  %9 = getelementptr inbounds [131 x i8], [131 x i8]* %3, i64 0, i64 0
  %10 = call i32 @memset(i8* %9, i32 170, i32 131)
  %11 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %12 = call i32 @memset(i8* %11, i32 221, i32 50)
  %13 = load i32, i32* @AV_HMAC_MD5, align 4
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %48, %0
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @AV_HMAC_SHA1, align 4
  %17 = icmp ule i32 %15, %16
  br i1 %17, label %18, label %51

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.TYPE_5__* @av_hmac_alloc(i32 %19)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %5, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 1, i32* %1, align 4
  br label %85

24:                                               ; preds = %18
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @test(%struct.TYPE_5__* %25, i8* %26, i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @main.data1, i64 0, i64 0), i32 9)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = call i32 @test(%struct.TYPE_5__* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @main.key2, i64 0, i64 0), i32 5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @main.data2, i64 0, i64 0), i32 29)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds [131 x i8], [131 x i8]* %3, i64 0, i64 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %39 = call i32 @test(%struct.TYPE_5__* %33, i8* %34, i32 %37, i8* %38, i32 50)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds [131 x i8], [131 x i8]* %3, i64 0, i64 0
  %42 = call i32 @test(%struct.TYPE_5__* %40, i8* %41, i32 80, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @main.data4, i64 0, i64 0), i32 55)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds [131 x i8], [131 x i8]* %3, i64 0, i64 0
  %45 = call i32 @test(%struct.TYPE_5__* %43, i8* %44, i32 80, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @main.data5, i64 0, i64 0), i32 74)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = call i32 @av_hmac_free(%struct.TYPE_5__* %46)
  br label %48

48:                                               ; preds = %24
  %49 = load i32, i32* %6, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %14

51:                                               ; preds = %14
  %52 = load i32, i32* @AV_HMAC_SHA224, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %81, %51
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @AV_HMAC_SHA512, align 4
  %56 = icmp ule i32 %54, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = call %struct.TYPE_5__* @av_hmac_alloc(i32 %58)
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** %5, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = icmp ne %struct.TYPE_5__* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  store i32 1, i32* %1, align 4
  br label %85

63:                                               ; preds = %57
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %66 = call i32 @test(%struct.TYPE_5__* %64, i8* %65, i32 20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @main.data1, i64 0, i64 0), i32 9)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = call i32 @test(%struct.TYPE_5__* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @main.key2, i64 0, i64 0), i32 5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @main.data2, i64 0, i64 0), i32 29)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds [131 x i8], [131 x i8]* %3, i64 0, i64 0
  %71 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %72 = call i32 @test(%struct.TYPE_5__* %69, i8* %70, i32 20, i8* %71, i32 50)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds [131 x i8], [131 x i8]* %3, i64 0, i64 0
  %75 = call i32 @test(%struct.TYPE_5__* %73, i8* %74, i32 131, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @main.data4, i64 0, i64 0), i32 55)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = getelementptr inbounds [131 x i8], [131 x i8]* %3, i64 0, i64 0
  %78 = call i32 @test(%struct.TYPE_5__* %76, i8* %77, i32 131, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @main.data6, i64 0, i64 0), i32 153)
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = call i32 @av_hmac_free(%struct.TYPE_5__* %79)
  br label %81

81:                                               ; preds = %63
  %82 = load i32, i32* %6, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %53

84:                                               ; preds = %53
  store i32 0, i32* %1, align 4
  br label %85

85:                                               ; preds = %84, %62, %23
  %86 = load i32, i32* %1, align 4
  ret i32 %86
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @av_hmac_alloc(i32) #1

declare dso_local i32 @test(%struct.TYPE_5__*, i8*, i32, i8*, i32) #1

declare dso_local i32 @av_hmac_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
