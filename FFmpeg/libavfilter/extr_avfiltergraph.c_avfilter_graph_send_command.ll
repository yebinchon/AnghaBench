; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfiltergraph.c_avfilter_graph_send_command.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfiltergraph.c_avfilter_graph_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

@ENOSYS = common dso_local global i32 0, align 4
@AVFILTER_CMD_FLAG_ONE = common dso_local global i32 0, align 4
@AVFILTER_CMD_FLAG_FAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avfilter_graph_send_command(%struct.TYPE_7__* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* @ENOSYS, align 4
  %20 = call i32 @AVERROR(i32 %19)
  store i32 %20, i32* %17, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %7
  %24 = load i32, i32* %17, align 4
  store i32 %24, i32* %8, align 4
  br label %131

25:                                               ; preds = %7
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* @AVFILTER_CMD_FLAG_ONE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %25
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* @AVFILTER_CMD_FLAG_FAST, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* @AVFILTER_CMD_FLAG_FAST, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @avfilter_graph_send_command(%struct.TYPE_7__* %36, i8* %37, i8* %38, i8* %39, i8* %40, i32 %41, i32 %44)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* @ENOSYS, align 4
  %48 = call i32 @AVERROR(i32 %47)
  %49 = icmp ne i32 %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = load i32, i32* %17, align 4
  store i32 %51, i32* %8, align 4
  br label %131

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %52, %30, %25
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i8*, i8** %13, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i8*, i8** %13, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 0, i8* %61, align 1
  br label %62

62:                                               ; preds = %59, %56, %53
  store i32 0, i32* %16, align 4
  br label %63

63:                                               ; preds = %126, %62
  %64 = load i32, i32* %16, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %129

69:                                               ; preds = %63
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %71, align 8
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %72, i64 %74
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  store %struct.TYPE_8__* %76, %struct.TYPE_8__** %18, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %101

80:                                               ; preds = %69
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load i8*, i8** %10, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @strcmp(i8* %86, i8* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %85, %80
  %93 = load i8*, i8** %10, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @strcmp(i8* %93, i8* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %125, label %101

101:                                              ; preds = %92, %85, %69
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @avfilter_process_command(%struct.TYPE_8__* %102, i8* %103, i8* %104, i8* %105, i32 %106, i32 %107)
  store i32 %108, i32* %17, align 4
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* @ENOSYS, align 4
  %111 = call i32 @AVERROR(i32 %110)
  %112 = icmp ne i32 %109, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %101
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* @AVFILTER_CMD_FLAG_ONE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %17, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118, %113
  %122 = load i32, i32* %17, align 4
  store i32 %122, i32* %8, align 4
  br label %131

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %123, %101
  br label %125

125:                                              ; preds = %124, %92
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %16, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %16, align 4
  br label %63

129:                                              ; preds = %63
  %130 = load i32, i32* %17, align 4
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %129, %121, %50, %23
  %132 = load i32, i32* %8, align 4
  ret i32 %132
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @avfilter_process_command(%struct.TYPE_8__*, i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
