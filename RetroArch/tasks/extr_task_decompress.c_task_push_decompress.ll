; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_decompress.c_task_push_decompress.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_decompress.c_task_push_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32*, %struct.archive_extract_userdata*, %struct.TYPE_6__, i32*, i32*, i32* }
%struct.archive_extract_userdata = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32*, i8*, i32, i32, %struct.TYPE_8__*, i8* }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"[decompress] Empty or null source file or target directory arguments.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"zip\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"apk\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"[decompress] File '%s' does not exist or is not a compressed file.\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"[decompress] File '%s' already being decompressed.\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"[decompress] File '%s.\0A\00", align 1
@ARCHIVE_TRANSFER_INIT = common dso_local global i32 0, align 4
@task_decompress_handler = common dso_local global i32 0, align 4
@task_decompress_handler_subdir = common dso_local global i32 0, align 4
@task_decompress_handler_target_file = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"%s '%s'\00", align 1
@MSG_EXTRACTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_push_decompress(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_8__*, align 8
  %22 = alloca %struct.TYPE_7__*, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  %24 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %18, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %19, align 8
  store i8* null, i8** %20, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %22, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 0, i8* %28, align 16
  %29 = load i8*, i8** %11, align 8
  %30 = call i64 @string_is_empty(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %8
  %33 = load i8*, i8** %10, align 8
  %34 = call i64 @string_is_empty(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %8
  %37 = call i32 (i8*, ...) @RARCH_WARN(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  store i32 1, i32* %23, align 4
  br label %165

38:                                               ; preds = %32
  %39 = load i8*, i8** %10, align 8
  %40 = call i8* @path_get_extension(i8* %39)
  store i8* %40, i8** %20, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @path_is_valid(i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load i8*, i8** %20, align 8
  %46 = call i32 @string_is_equal_noncase(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %20, align 8
  %50 = call i32 @string_is_equal_noncase(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48, %38
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 (i8*, ...) @RARCH_WARN(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  store i32 0, i32* %9, align 4
  store i32 1, i32* %23, align 4
  br label %165

55:                                               ; preds = %48, %44
  %56 = load i8*, i8** %14, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i8*, i8** %14, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58, %55
  store i8* null, i8** %14, align 8
  br label %64

64:                                               ; preds = %63, %58
  %65 = load i8*, i8** %10, align 8
  %66 = call i64 @task_check_decompress(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i8* %69)
  store i32 0, i32* %9, align 4
  store i32 1, i32* %23, align 4
  br label %165

71:                                               ; preds = %64
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %72)
  %74 = call i64 @calloc(i32 1, i32 56)
  %75 = inttoptr i64 %74 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %21, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %77 = icmp ne %struct.TYPE_8__* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  store i32 0, i32* %9, align 4
  store i32 1, i32* %23, align 4
  br label %165

79:                                               ; preds = %71
  %80 = call i64 @calloc(i32 1, i32 40)
  %81 = inttoptr i64 %80 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %81, %struct.TYPE_7__** %22, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %83 = icmp ne %struct.TYPE_7__* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %86 = call i32 @free(%struct.TYPE_8__* %85)
  store i32 0, i32* %9, align 4
  store i32 1, i32* %23, align 4
  br label %165

87:                                               ; preds = %79
  %88 = load i8*, i8** %10, align 8
  %89 = call i32* @strdup(i8* %88)
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 6
  store i32* %89, i32** %91, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = call i32* @strdup(i8* %92)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 5
  store i32* %93, i32** %95, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %87
  %99 = load i8*, i8** %14, align 8
  %100 = call i32* @strdup(i8* %99)
  br label %102

101:                                              ; preds = %87
  br label %102

102:                                              ; preds = %101, %98
  %103 = phi i32* [ %100, %98 ], [ null, %101 ]
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 4
  store i32* %103, i32** %105, align 8
  %106 = load i32, i32* @ARCHIVE_TRANSFER_INIT, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  %110 = call i64 @calloc(i32 1, i32 4)
  %111 = inttoptr i64 %110 to %struct.archive_extract_userdata*
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  store %struct.archive_extract_userdata* %111, %struct.archive_extract_userdata** %113, align 8
  %114 = load i8*, i8** %17, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 5
  store i8* %114, i8** %116, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 4
  store %struct.TYPE_8__* %117, %struct.TYPE_8__** %119, align 8
  %120 = load i32, i32* @task_decompress_handler, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load i8*, i8** %13, align 8
  %124 = call i64 @string_is_empty(i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %102
  %127 = load i8*, i8** %13, align 8
  %128 = call i32* @strdup(i8* %127)
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  store i32* %128, i32** %130, align 8
  %131 = load i32, i32* @task_decompress_handler_subdir, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  br label %147

134:                                              ; preds = %102
  %135 = load i8*, i8** %12, align 8
  %136 = call i64 @string_is_empty(i8* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %134
  %139 = load i8*, i8** %12, align 8
  %140 = call i32* @strdup(i8* %139)
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  store i32* %140, i32** %142, align 8
  %143 = load i32, i32* @task_decompress_handler_target_file, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %138, %134
  br label %147

147:                                              ; preds = %146, %126
  %148 = load i32, i32* %15, align 4
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  %151 = load i8*, i8** %16, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  store i8* %151, i8** %153, align 8
  %154 = trunc i64 %25 to i32
  %155 = load i32, i32* @MSG_EXTRACTING, align 4
  %156 = call i8* @msg_hash_to_str(i32 %155)
  %157 = load i8*, i8** %10, align 8
  %158 = call i8* @path_basename(i8* %157)
  %159 = call i32 @snprintf(i8* %27, i32 %154, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %156, i8* %158)
  %160 = call i32* @strdup(i8* %27)
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  store i32* %160, i32** %162, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %164 = call i32 @task_queue_push(%struct.TYPE_7__* %163)
  store i32 1, i32* %9, align 4
  store i32 1, i32* %23, align 4
  br label %165

165:                                              ; preds = %147, %84, %78, %68, %52, %36
  %166 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load i32, i32* %9, align 4
  ret i32 %167
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @string_is_empty(i8*) #2

declare dso_local i32 @RARCH_WARN(i8*, ...) #2

declare dso_local i8* @path_get_extension(i8*) #2

declare dso_local i32 @path_is_valid(i8*) #2

declare dso_local i32 @string_is_equal_noncase(i8*, i8*) #2

declare dso_local i64 @task_check_decompress(i8*) #2

declare dso_local i32 @RARCH_LOG(i8*, i8*) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i32 @free(%struct.TYPE_8__*) #2

declare dso_local i32* @strdup(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @msg_hash_to_str(i32) #2

declare dso_local i8* @path_basename(i8*) #2

declare dso_local i32 @task_queue_push(%struct.TYPE_7__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
