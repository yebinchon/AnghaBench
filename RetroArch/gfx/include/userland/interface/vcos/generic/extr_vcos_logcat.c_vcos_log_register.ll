; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vcos/generic/extr_vcos_logcat.c_vcos_log_register.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vcos/generic/extr_vcos_logcat.c_vcos_log_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i64, i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@VCOS_LOG_UNINITIALIZED = common dso_local global i64 0, align 8
@VCOS_LOG_ERROR = common dso_local global i64 0, align 8
@dflt_log_category = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@lock = common dso_local global i32 0, align 4
@vcos_logging_categories = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@warned_loglevel = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"VC_LOGLEVEL format invalid at %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Registered log category '%s' with level %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcos_log_register(i8* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VCOS_LOG_UNINITIALIZED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i64, i64* @VCOS_LOG_ERROR, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, @dflt_log_category
  %24 = zext i1 %23 to i32
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = call i32 @vcos_mutex_lock(i32* @lock)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vcos_logging_categories, align 8
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %6, align 8
  br label %30

30:                                               ; preds = %43, %21
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = icmp ne %struct.TYPE_8__* %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = icmp eq %struct.TYPE_8__* %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  br label %47

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %6, align 8
  br label %30

47:                                               ; preds = %37, %30
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = icmp ne %struct.TYPE_8__* %48, null
  br i1 %49, label %61, label %50

50:                                               ; preds = %47
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vcos_logging_categories, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %53, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** @vcos_logging_categories, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = call i32 @vcos_log_platform_register(%struct.TYPE_8__* %59)
  br label %61

61:                                               ; preds = %50, %47
  %62 = call i32 @vcos_mutex_unlock(i32* @lock)
  %63 = call i8* (...) @_VCOS_LOG_LEVEL()
  store i8* %63, i8** %5, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %109

66:                                               ; preds = %61
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %109

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %102, %72
  %74 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %75 = call i64 @read_tok(i8* %74, i32 64, i8** %5, i8 signext 58)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %73
  %78 = call i64 @read_level(i64* %8, i8** %5, i8 signext 44)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  %81 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %82 = load i8*, i8** %3, align 8
  %83 = call i64 @strcmp(i8* %81, i8* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85, %80
  %90 = load i64, i64* %8, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %89, %85
  br label %101

94:                                               ; preds = %77, %73
  %95 = load i32, i32* @warned_loglevel, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 @vcos_log(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %98)
  store i32 1, i32* @warned_loglevel, align 4
  br label %100

100:                                              ; preds = %97, %94
  br label %118

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %73, label %108

108:                                              ; preds = %102
  br label %109

109:                                              ; preds = %108, %66, %61
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @vcos_log_level_to_string(i64 %115)
  %117 = call i32 @vcos_log_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %112, i32 %116)
  br label %118

118:                                              ; preds = %109, %100
  ret void
}

declare dso_local i32 @vcos_mutex_lock(i32*) #1

declare dso_local i32 @vcos_log_platform_register(%struct.TYPE_8__*) #1

declare dso_local i32 @vcos_mutex_unlock(i32*) #1

declare dso_local i8* @_VCOS_LOG_LEVEL(...) #1

declare dso_local i64 @read_tok(i8*, i32, i8**, i8 signext) #1

declare dso_local i64 @read_level(i64*, i8**, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @vcos_log(i8*, i8*) #1

declare dso_local i32 @vcos_log_info(i8*, i8*, i32) #1

declare dso_local i32 @vcos_log_level_to_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
