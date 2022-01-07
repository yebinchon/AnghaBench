; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_tgHandle.c_tgGetStableName.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_tgHandle.c_tgGetStableName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i8**, i8*, i32 }
%struct.TYPE_7__ = type { i32 }

@tgSchemas = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tgGetStableName(i8* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %82, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tgSchemas, i32 0, i32 0), align 8
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %85

20:                                               ; preds = %16
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tgSchemas, i32 0, i32 1), align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %23
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %9, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strcasecmp(i32 %27, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %82

32:                                               ; preds = %20
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %71, %32
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %74

39:                                               ; preds = %33
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i8**, i8*** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %47

47:                                               ; preds = %63, %39
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = load i32, i32* %14, align 4
  %54 = call %struct.TYPE_7__* @cJSON_GetArrayItem(%struct.TYPE_7__* %52, i32 %53)
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %15, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %12, align 8
  %59 = call i64 @strcasecmp(i32 %57, i8* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  store i32 1, i32* %13, align 4
  br label %66

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  br label %47

66:                                               ; preds = %61, %47
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  store i32 0, i32* %10, align 4
  br label %74

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %33

74:                                               ; preds = %69, %33
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %4, align 8
  br label %87

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %31
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %16

85:                                               ; preds = %16
  %86 = load i8*, i8** %5, align 8
  store i8* %86, i8** %4, align 8
  br label %87

87:                                               ; preds = %85, %77
  %88 = load i8*, i8** %4, align 8
  ret i8* %88
}

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @cJSON_GetArrayItem(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
