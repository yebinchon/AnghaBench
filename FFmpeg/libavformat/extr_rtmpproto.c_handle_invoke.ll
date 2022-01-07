; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_handle_invoke.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_handle_invoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_15__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"_error\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"_result\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"onStatus\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"onBWDone\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"releaseStream\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"FCPublish\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"publish\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"play\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"_checkbw\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"createStream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)* @handle_invoke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_invoke(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @ff_amf_match_string(i32 %13, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = call i32 @handle_invoke_error(%struct.TYPE_14__* %20, %struct.TYPE_15__* %21)
  store i32 %22, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %146

26:                                               ; preds = %19
  br label %144

27:                                               ; preds = %2
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @ff_amf_match_string(i32 %30, i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %27
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = call i32 @handle_invoke_result(%struct.TYPE_14__* %37, %struct.TYPE_15__* %38)
  store i32 %39, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %146

43:                                               ; preds = %36
  br label %143

44:                                               ; preds = %27
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ff_amf_match_string(i32 %47, i32 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %44
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %56 = call i32 @handle_invoke_status(%struct.TYPE_14__* %54, %struct.TYPE_15__* %55)
  store i32 %56, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %146

60:                                               ; preds = %53
  br label %142

61:                                               ; preds = %44
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @ff_amf_match_string(i32 %64, i32 %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %61
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @gen_check_bw(%struct.TYPE_14__* %71, i32* %72)
  store i32 %73, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %146

77:                                               ; preds = %70
  br label %141

78:                                               ; preds = %61
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @ff_amf_match_string(i32 %81, i32 %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %132, label %87

87:                                               ; preds = %78
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @ff_amf_match_string(i32 %90, i32 %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %132, label %96

96:                                               ; preds = %87
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @ff_amf_match_string(i32 %99, i32 %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %132, label %105

105:                                              ; preds = %96
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @ff_amf_match_string(i32 %108, i32 %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %132, label %114

114:                                              ; preds = %105
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @ff_amf_match_string(i32 %117, i32 %120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %132, label %123

123:                                              ; preds = %114
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @ff_amf_match_string(i32 %126, i32 %129, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %123, %114, %105, %96, %87, %78
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %135 = call i32 @send_invoke_response(%struct.TYPE_14__* %133, %struct.TYPE_15__* %134)
  store i32 %135, i32* %7, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %3, align 4
  br label %146

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %139, %123
  br label %141

141:                                              ; preds = %140, %77
  br label %142

142:                                              ; preds = %141, %60
  br label %143

143:                                              ; preds = %142, %43
  br label %144

144:                                              ; preds = %143, %26
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %144, %137, %75, %58, %41, %24
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i64 @ff_amf_match_string(i32, i32, i8*) #1

declare dso_local i32 @handle_invoke_error(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @handle_invoke_result(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @handle_invoke_status(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @gen_check_bw(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @send_invoke_response(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
