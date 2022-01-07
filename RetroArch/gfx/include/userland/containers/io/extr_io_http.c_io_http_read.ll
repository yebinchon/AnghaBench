; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/io/extr_io_http.c_io_http_read.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/io/extr_io_http.c_io_http_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32, i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_EOS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Error opening socket for GET request\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Error sending GET request\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"reconnecting\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Error reading GET response\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"received too much data (%i/%i)\00", align 1
@VC_CONTAINER_ERROR_CORRUPTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, i8*, i64)* @io_http_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @io_http_read(%struct.TYPE_9__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %9, align 8
  store i64 0, i64* %12, align 8
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %13, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i64, i64* @VC_CONTAINER_ERROR_EOS, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  store i64 0, i64* %4, align 8
  br label %172

30:                                               ; preds = %3
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = call i64 @io_http_open_socket(%struct.TYPE_9__* %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* %4, align 8
  br label %172

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %30
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i64 @io_http_send_get_request(%struct.TYPE_9__* %46, i64 %47)
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %162

54:                                               ; preds = %45
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = call i64 @io_http_read_response(%struct.TYPE_9__* %55)
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @VC_CONTAINER_ERROR_EOS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %54
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %85, label %65

65:                                               ; preds = %60
  %66 = call i32 @LOG_DEBUG(i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %68 = call i32 @io_http_close_socket(%struct.TYPE_10__* %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = call i64 @io_http_open_socket(%struct.TYPE_9__* %69)
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %65
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  store i32 1, i32* %76, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i64 @io_http_read(%struct.TYPE_9__* %77, i8* %78, i64 %79)
  store i64 %80, i64* %8, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  store i32 0, i32* %82, align 8
  %83 = load i64, i64* %8, align 8
  store i64 %83, i64* %4, align 8
  br label %172

84:                                               ; preds = %65
  br label %85

85:                                               ; preds = %84, %60, %54
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %162

91:                                               ; preds = %85
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @io_http_get_content_length(i32 %94)
  store i64 %95, i64* %10, align 8
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %7, align 8
  %98 = icmp ugt i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %91
  %100 = load i64, i64* %10, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i64, i64* %7, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %101, i32 %103)
  %105 = load i64, i64* @VC_CONTAINER_ERROR_CORRUPTED, align 8
  store i64 %105, i64* %8, align 8
  br label %162

106:                                              ; preds = %91
  store i64 0, i64* %11, align 8
  br label %107

107:                                              ; preds = %138, %106
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* %10, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %116 = icmp eq i64 %114, %115
  br label %117

117:                                              ; preds = %111, %107
  %118 = phi i1 [ false, %107 ], [ %116, %111 ]
  br i1 %118, label %119, label %139

119:                                              ; preds = %117
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %121 = load i8*, i8** %13, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* %11, align 8
  %124 = sub i64 %122, %123
  %125 = call i64 @io_http_read_from_net(%struct.TYPE_9__* %120, i8* %121, i64 %124)
  store i64 %125, i64* %12, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %119
  %132 = load i64, i64* %12, align 8
  %133 = load i64, i64* %11, align 8
  %134 = add i64 %133, %132
  store i64 %134, i64* %11, align 8
  %135 = load i64, i64* %12, align 8
  %136 = load i8*, i8** %13, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 %135
  store i8* %137, i8** %13, align 8
  br label %138

138:                                              ; preds = %131, %119
  br label %107

139:                                              ; preds = %117
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = load i64, i64* %11, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = add i64 %149, %146
  store i64 %150, i64* %148, align 8
  %151 = load i64, i64* %11, align 8
  store i64 %151, i64* %12, align 8
  br label %152

152:                                              ; preds = %145, %139
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %152
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %159 = call i32 @io_http_close_socket(%struct.TYPE_10__* %158)
  br label %160

160:                                              ; preds = %157, %152
  %161 = load i64, i64* %12, align 8
  store i64 %161, i64* %4, align 8
  br label %172

162:                                              ; preds = %99, %89, %52
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %162
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %169 = call i32 @io_http_close_socket(%struct.TYPE_10__* %168)
  br label %170

170:                                              ; preds = %167, %162
  %171 = load i64, i64* %8, align 8
  store i64 %171, i64* %4, align 8
  br label %172

172:                                              ; preds = %170, %160, %74, %41, %26
  %173 = load i64, i64* %4, align 8
  ret i64 %173
}

declare dso_local i64 @io_http_open_socket(%struct.TYPE_9__*) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*, ...) #1

declare dso_local i64 @io_http_send_get_request(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @io_http_read_response(%struct.TYPE_9__*) #1

declare dso_local i32 @LOG_DEBUG(i32*, i8*) #1

declare dso_local i32 @io_http_close_socket(%struct.TYPE_10__*) #1

declare dso_local i64 @io_http_get_content_length(i32) #1

declare dso_local i64 @io_http_read_from_net(%struct.TYPE_9__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
