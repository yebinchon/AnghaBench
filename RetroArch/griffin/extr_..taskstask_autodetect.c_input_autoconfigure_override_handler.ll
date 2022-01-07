; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_autodetect.c_input_autoconfigure_override_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_autodetect.c_input_autoconfigure_override_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_9__ = type { i64, i64, i32 }

@BLISSBOX_VID = common dso_local global i64 0, align 8
@BLISSBOX_UPDATE_MODE_PID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"[Autoconf]: Bliss-Box in update mode detected. Ignoring.\0A\00", align 1
@BLISSBOX_OLD_PID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [77 x i8] c"[Autoconf]: Bliss-Box 1.0 firmware detected. Please update to 2.0 or later.\0A\00", align 1
@BLISSBOX_PID = common dso_local global i64 0, align 8
@BLISSBOX_MAX_PAD_INDEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"[Autoconf]: Bliss-Box detected. Getting pad type...\0A\00", align 1
@blissbox_pads = common dso_local global %struct.TYPE_8__** null, align 8
@.str.3 = private unnamed_addr constant [58 x i8] c"[Autoconf]: Found Bliss-Box pad type: %s (%d) in port#%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Bliss-Box 4-Play \00", align 1
@blissbox_pad_types = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @input_autoconfigure_override_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_autoconfigure_override_handler(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca [255 x i8], align 16
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BLISSBOX_VID, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %129

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BLISSBOX_UPDATE_MODE_PID, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %128

19:                                               ; preds = %11
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BLISSBOX_OLD_PID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  br label %127

27:                                               ; preds = %19
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BLISSBOX_PID, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %126

33:                                               ; preds = %27
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BLISSBOX_PID, align 8
  %38 = load i64, i64* @BLISSBOX_MAX_PAD_INDEX, align 8
  %39 = add nsw i64 %37, %38
  %40 = icmp sle i64 %36, %39
  br i1 %40, label %41, label %126

41:                                               ; preds = %33
  %42 = bitcast [255 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %42, i8 0, i64 255, i1 false)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BLISSBOX_PID, align 8
  %47 = sub nsw i64 %45, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %5, align 4
  %49 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @blissbox_pads, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %50, i64 %52
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = icmp ne %struct.TYPE_8__* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %41
  %57 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @blissbox_pads, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %57, i64 %59
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** %3, align 8
  br label %70

62:                                               ; preds = %41
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call %struct.TYPE_8__* @input_autoconfigure_get_blissbox_pad_type(i64 %65, i64 %68)
  store %struct.TYPE_8__* %69, %struct.TYPE_8__** %3, align 8
  br label %70

70:                                               ; preds = %62, %56
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = icmp ne %struct.TYPE_8__* %71, null
  br i1 %72, label %73, label %114

73:                                               ; preds = %70
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @string_is_empty(i8* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %114, label %79

79:                                               ; preds = %73
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i8* %82, i32 %85, i32 %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %79
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @free(i32 %95)
  br label %97

97:                                               ; preds = %92, %79
  %98 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %99 = call i32 @strlcat(i8* %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 255)
  %100 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @strlcat(i8* %100, i8* %103, i32 255)
  %105 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %106 = call i32 @strdup(i8* %105)
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %110 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @blissbox_pads, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %110, i64 %112
  store %struct.TYPE_8__* %109, %struct.TYPE_8__** %113, align 8
  br label %125

114:                                              ; preds = %73, %70
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** @blissbox_pad_types, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** @blissbox_pad_types, align 8
  %117 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %116)
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i64 %119
  %121 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @blissbox_pads, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %121, i64 %123
  store %struct.TYPE_8__* %120, %struct.TYPE_8__** %124, align 8
  br label %125

125:                                              ; preds = %114, %97
  br label %126

126:                                              ; preds = %125, %33, %27
  br label %127

127:                                              ; preds = %126, %25
  br label %128

128:                                              ; preds = %127, %17
  br label %129

129:                                              ; preds = %128, %1
  ret void
}

declare dso_local i32 @RARCH_LOG(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.TYPE_8__* @input_autoconfigure_get_blissbox_pad_type(i64, i64) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
