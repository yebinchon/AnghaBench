; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_SetRadiusServerEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_SetRadiusServerEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i64, i32* }

@RADIUS_RETRY_INTERVAL = common dso_local global i8* null, align 8
@RADIUS_RETRY_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetRadiusServerEx(%struct.TYPE_3__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = icmp eq %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  br label %104

14:                                               ; preds = %5
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @Lock(i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @Free(i32* %26)
  br label %28

28:                                               ; preds = %23, %14
  %29 = load i8*, i8** %7, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  store i32* null, i32** %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load i8*, i8** @RADIUS_RETRY_INTERVAL, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @FreeBuf(i8* %41)
  br label %99

43:                                               ; preds = %28
  %44 = load i8*, i8** %7, align 8
  %45 = call i32* @CopyStr(i8* %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  store i32* %45, i32** %47, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load i8*, i8** @RADIUS_RETRY_INTERVAL, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  br label %72

57:                                               ; preds = %43
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @RADIUS_RETRY_TIMEOUT, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i64, i64* @RADIUS_RETRY_TIMEOUT, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  br label %71

66:                                               ; preds = %57
  %67 = load i64, i64* %10, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %66, %61
  br label %72

72:                                               ; preds = %71, %53
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @FreeBuf(i8* %75)
  %77 = load i8*, i8** %9, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = call i8* (...) @NewBuf()
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  br label %98

83:                                               ; preds = %72
  %84 = call i8* (...) @NewBuf()
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @StrLen(i8* %91)
  %93 = call i32 @WriteBuf(i8* %89, i8* %90, i32 %92)
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @SeekBuf(i8* %96, i32 0, i32 0)
  br label %98

98:                                               ; preds = %83, %79
  br label %99

99:                                               ; preds = %98, %31
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @Unlock(i32 %102)
  br label %104

104:                                              ; preds = %99, %13
  ret void
}

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i32 @FreeBuf(i8*) #1

declare dso_local i32* @CopyStr(i8*) #1

declare dso_local i8* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(i8*, i8*, i32) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i32 @SeekBuf(i8*, i32, i32) #1

declare dso_local i32 @Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
