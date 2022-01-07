; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_android_input_lookup_name_prekitkat.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_android_input_lookup_name_prekitkat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* (%struct.TYPE_9__**, i32*, i32)*, i32 (%struct.TYPE_9__**, i32*, i8*)* }

@.str = private unnamed_addr constant [17 x i8] c"Using old lookup\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"android/view/InputDevice\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"getDevice\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"(I)Landroid/view/InputDevice;\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to find device for ID: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"getName\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"()Ljava/lang/String;\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Failed to find name for device ID: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"device name: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i64, i32)* @android_input_lookup_name_prekitkat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @android_input_lookup_name_prekitkat(i8* %0, i32* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_9__**, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i64 0, i64* %16, align 8
  store i8* null, i8** %17, align 8
  %19 = call i64 (...) @jni_thread_getenv()
  %20 = inttoptr i64 %19 to %struct.TYPE_9__**
  store %struct.TYPE_9__** %20, %struct.TYPE_9__*** %18, align 8
  %21 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %18, align 8
  %22 = icmp ne %struct.TYPE_9__** %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  br label %99

24:                                               ; preds = %5
  %25 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %18, align 8
  %27 = load i64, i64* %16, align 8
  %28 = call i32 @FIND_CLASS(%struct.TYPE_9__** %26, i64 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i64, i64* %16, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %99

32:                                               ; preds = %24
  %33 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %18, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = load i64, i64* %16, align 8
  %36 = call i32 @GET_STATIC_METHOD_ID(%struct.TYPE_9__** %33, i32* %34, i64 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i32*, i32** %15, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %99

40:                                               ; preds = %32
  %41 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %18, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = load i64, i64* %16, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @CALL_OBJ_STATIC_METHOD_PARAM(%struct.TYPE_9__** %41, i32* %42, i64 %43, i32* %44, i32 %45)
  %47 = load i32*, i32** %14, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  br label %99

52:                                               ; preds = %40
  %53 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %18, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = load i64, i64* %16, align 8
  %56 = call i32 @GET_METHOD_ID(%struct.TYPE_9__** %53, i32* %54, i64 %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %57 = load i32*, i32** %13, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  br label %99

60:                                               ; preds = %52
  %61 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %18, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 @CALL_OBJ_METHOD(%struct.TYPE_9__** %61, i32* %62, i32* %63, i32* %64)
  %66 = load i32*, i32** %12, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %69)
  br label %99

71:                                               ; preds = %60
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  store i8 0, i8* %73, align 1
  %74 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %18, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i8* (%struct.TYPE_9__**, i32*, i32)*, i8* (%struct.TYPE_9__**, i32*, i32)** %76, align 8
  %78 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %18, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = call i8* %77(%struct.TYPE_9__** %78, i32* %79, i32 0)
  store i8* %80, i8** %17, align 8
  %81 = load i8*, i8** %17, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %71
  %84 = load i8*, i8** %7, align 8
  %85 = load i8*, i8** %17, align 8
  %86 = load i64, i64* %10, align 8
  %87 = call i32 @strlcpy(i8* %84, i8* %85, i64 %86)
  br label %88

88:                                               ; preds = %83, %71
  %89 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %18, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32 (%struct.TYPE_9__**, i32*, i8*)*, i32 (%struct.TYPE_9__**, i32*, i8*)** %91, align 8
  %93 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %18, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = load i8*, i8** %17, align 8
  %96 = call i32 %92(%struct.TYPE_9__** %93, i32* %94, i8* %95)
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %97)
  store i32 1, i32* %6, align 4
  br label %100

99:                                               ; preds = %68, %59, %49, %39, %31, %23
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %99, %88
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i64 @jni_thread_getenv(...) #1

declare dso_local i32 @RARCH_LOG(i8*, ...) #1

declare dso_local i32 @FIND_CLASS(%struct.TYPE_9__**, i64, i8*) #1

declare dso_local i32 @GET_STATIC_METHOD_ID(%struct.TYPE_9__**, i32*, i64, i8*, i8*) #1

declare dso_local i32 @CALL_OBJ_STATIC_METHOD_PARAM(%struct.TYPE_9__**, i32*, i64, i32*, i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i32) #1

declare dso_local i32 @GET_METHOD_ID(%struct.TYPE_9__**, i32*, i64, i8*, i8*) #1

declare dso_local i32 @CALL_OBJ_METHOD(%struct.TYPE_9__**, i32*, i32*, i32*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
