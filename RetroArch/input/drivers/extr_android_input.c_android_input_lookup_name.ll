; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_android_input_lookup_name.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_android_input_lookup_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* (%struct.TYPE_10__**, i32*, i32)*, i32 (%struct.TYPE_10__**, i32*, i8*)* }

@.str = private unnamed_addr constant [17 x i8] c"Using new lookup\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"android/view/InputDevice\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"getDevice\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"(I)Landroid/view/InputDevice;\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to find device for ID: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"getName\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"()Ljava/lang/String;\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Failed to find name for device ID: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"device name: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"getVendorId\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"()I\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"device vendor id: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"getProductId\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"device product id: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i64, i32)* @android_input_lookup_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @android_input_lookup_name(i8* %0, i32* %1, i32* %2, i64 %3, i32 %4) #0 {
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
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_10__**, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i8* null, i8** %19, align 8
  %21 = call i64 (...) @jni_thread_getenv()
  %22 = inttoptr i64 %21 to %struct.TYPE_10__**
  store %struct.TYPE_10__** %22, %struct.TYPE_10__*** %20, align 8
  %23 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %20, align 8
  %24 = icmp ne %struct.TYPE_10__** %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  br label %136

26:                                               ; preds = %5
  %27 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %20, align 8
  %29 = load i32*, i32** %18, align 8
  %30 = call i32 @FIND_CLASS(%struct.TYPE_10__** %28, i32* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32*, i32** %18, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %136

34:                                               ; preds = %26
  %35 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %20, align 8
  %36 = load i32*, i32** %17, align 8
  %37 = load i32*, i32** %18, align 8
  %38 = call i32 @GET_STATIC_METHOD_ID(%struct.TYPE_10__** %35, i32* %36, i32* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i32*, i32** %17, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %136

42:                                               ; preds = %34
  %43 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %20, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = load i32*, i32** %18, align 8
  %46 = load i32*, i32** %17, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @CALL_OBJ_STATIC_METHOD_PARAM(%struct.TYPE_10__** %43, i32* %44, i32* %45, i32* %46, i32 %47)
  %49 = load i32*, i32** %15, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  br label %136

54:                                               ; preds = %42
  %55 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %20, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = load i32*, i32** %18, align 8
  %58 = call i32 @GET_METHOD_ID(%struct.TYPE_10__** %55, i32* %56, i32* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %59 = load i32*, i32** %14, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  br label %136

62:                                               ; preds = %54
  %63 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %20, align 8
  %64 = load i32*, i32** %16, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = call i32 @CALL_OBJ_METHOD(%struct.TYPE_10__** %63, i32* %64, i32* %65, i32* %66)
  %68 = load i32*, i32** %16, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %71)
  br label %136

73:                                               ; preds = %62
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  store i8 0, i8* %75, align 1
  %76 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %20, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i8* (%struct.TYPE_10__**, i32*, i32)*, i8* (%struct.TYPE_10__**, i32*, i32)** %78, align 8
  %80 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %20, align 8
  %81 = load i32*, i32** %16, align 8
  %82 = call i8* %79(%struct.TYPE_10__** %80, i32* %81, i32 0)
  store i8* %82, i8** %19, align 8
  %83 = load i8*, i8** %19, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %73
  %86 = load i8*, i8** %7, align 8
  %87 = load i8*, i8** %19, align 8
  %88 = load i64, i64* %10, align 8
  %89 = call i32 @strlcpy(i8* %86, i8* %87, i64 %88)
  br label %90

90:                                               ; preds = %85, %73
  %91 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %20, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32 (%struct.TYPE_10__**, i32*, i8*)*, i32 (%struct.TYPE_10__**, i32*, i8*)** %93, align 8
  %95 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %20, align 8
  %96 = load i32*, i32** %16, align 8
  %97 = load i8*, i8** %19, align 8
  %98 = call i32 %94(%struct.TYPE_10__** %95, i32* %96, i8* %97)
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %99)
  %101 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %20, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = load i32*, i32** %18, align 8
  %104 = call i32 @GET_METHOD_ID(%struct.TYPE_10__** %101, i32* %102, i32* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %105 = load i32*, i32** %12, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %90
  br label %136

108:                                              ; preds = %90
  %109 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %20, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %15, align 8
  %113 = load i32*, i32** %12, align 8
  %114 = call i32 @CALL_INT_METHOD(%struct.TYPE_10__** %109, i32 %111, i32* %112, i32* %113)
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %116)
  %118 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %20, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = load i32*, i32** %18, align 8
  %121 = call i32 @GET_METHOD_ID(%struct.TYPE_10__** %118, i32* %119, i32* %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %122 = load i32*, i32** %13, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %108
  br label %136

125:                                              ; preds = %108
  %126 = load i32*, i32** %9, align 8
  store i32 0, i32* %126, align 4
  %127 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %20, align 8
  %128 = load i32*, i32** %9, align 8
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %15, align 8
  %131 = load i32*, i32** %13, align 8
  %132 = call i32 @CALL_INT_METHOD(%struct.TYPE_10__** %127, i32 %129, i32* %130, i32* %131)
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %134)
  store i32 1, i32* %6, align 4
  br label %137

136:                                              ; preds = %124, %107, %70, %61, %51, %41, %33, %25
  store i32 0, i32* %6, align 4
  br label %137

137:                                              ; preds = %136, %125
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i64 @jni_thread_getenv(...) #1

declare dso_local i32 @RARCH_LOG(i8*, ...) #1

declare dso_local i32 @FIND_CLASS(%struct.TYPE_10__**, i32*, i8*) #1

declare dso_local i32 @GET_STATIC_METHOD_ID(%struct.TYPE_10__**, i32*, i32*, i8*, i8*) #1

declare dso_local i32 @CALL_OBJ_STATIC_METHOD_PARAM(%struct.TYPE_10__**, i32*, i32*, i32*, i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i32) #1

declare dso_local i32 @GET_METHOD_ID(%struct.TYPE_10__**, i32*, i32*, i8*, i8*) #1

declare dso_local i32 @CALL_OBJ_METHOD(%struct.TYPE_10__**, i32*, i32*, i32*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @CALL_INT_METHOD(%struct.TYPE_10__**, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
