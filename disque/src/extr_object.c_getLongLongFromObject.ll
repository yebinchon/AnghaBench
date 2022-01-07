; ModuleID = '/home/carl/AnghaBench/disque/src/extr_object.c_getLongLongFromObject.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_object.c_getLongLongFromObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64 }

@OBJ_STRING = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@C_ERR = common dso_local global i32 0, align 4
@OBJ_ENCODING_INT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Unknown string encoding\00", align 1
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getLongLongFromObject(%struct.TYPE_5__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = icmp eq %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %63

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OBJ_STRING, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @serverAssertWithInfo(i32* null, %struct.TYPE_5__* %12, i32 %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = call i64 @sdsEncodedObject(%struct.TYPE_5__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %11
  store i64 0, i64* @errno, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @strtoll(i64 %26, i8** %7, i32 10)
  store i64 %27, i64* %6, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @isspace(i8 signext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %23
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = load i64, i64* @errno, align 8
  %44 = load i64, i64* @ERANGE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %36, %23
  %47 = load i32, i32* @C_ERR, align 4
  store i32 %47, i32* %3, align 4
  br label %71

48:                                               ; preds = %42
  br label %62

49:                                               ; preds = %11
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @OBJ_ENCODING_INT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %6, align 8
  br label %61

59:                                               ; preds = %49
  %60 = call i32 @serverPanic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %55
  br label %62

62:                                               ; preds = %61, %48
  br label %63

63:                                               ; preds = %62, %10
  %64 = load i64*, i64** %5, align 8
  %65 = icmp ne i64* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i64, i64* %6, align 8
  %68 = load i64*, i64** %5, align 8
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* @C_OK, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %46
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @serverAssertWithInfo(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @sdsEncodedObject(%struct.TYPE_5__*) #1

declare dso_local i64 @strtoll(i64, i8**, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
