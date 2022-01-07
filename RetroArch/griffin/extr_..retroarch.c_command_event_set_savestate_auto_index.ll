; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_command_event_set_savestate_auto_index.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_command_event_set_savestate_auto_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8* }
%struct.string_list = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8* }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@configuration_settings = common dso_local global %struct.TYPE_14__* null, align 8
@g_extern = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@DIR_LIST_PLAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s: #%d\0A\00", align 1
@MSG_FOUND_LAST_STATE_SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @command_event_set_savestate_auto_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @command_event_set_savestate_auto_index() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* null, i8** %2, align 8
  store i8* null, i8** %3, align 8
  %13 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 1
  store i64 %15, i64* %4, align 8
  store %struct.string_list* null, %struct.string_list** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** @configuration_settings, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_15__* @g_extern, %struct.TYPE_15__** %8, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %18 = icmp ne %struct.TYPE_15__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %0
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19, %0
  br label %132

26:                                               ; preds = %19
  %27 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %28 = call i64 @calloc(i32 %27, i32 1)
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %2, align 8
  %30 = load i8*, i8** %2, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @fill_pathname_basedir(i8* %30, i8* %34, i64 %35)
  %37 = load i8*, i8** %2, align 8
  %38 = load i32, i32* @DIR_LIST_PLAIN, align 4
  %39 = call %struct.string_list* @dir_list_new_special(i8* %37, i32 %38, i32* null)
  store %struct.string_list* %39, %struct.string_list** %5, align 8
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load %struct.string_list*, %struct.string_list** %5, align 8
  %43 = icmp ne %struct.string_list* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %26
  br label %132

45:                                               ; preds = %26
  %46 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %47 = call i64 @calloc(i32 %46, i32 1)
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %3, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @fill_pathname_base(i8* %49, i8* %53, i32 %55)
  store i64 0, i64* %1, align 8
  br label %57

57:                                               ; preds = %113, %45
  %58 = load i64, i64* %1, align 8
  %59 = load %struct.string_list*, %struct.string_list** %5, align 8
  %60 = getelementptr inbounds %struct.string_list, %struct.string_list* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %116

63:                                               ; preds = %57
  %64 = bitcast [128 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %64, i8 0, i64 128, i1 false)
  store i8* null, i8** %11, align 8
  %65 = load %struct.string_list*, %struct.string_list** %5, align 8
  %66 = getelementptr inbounds %struct.string_list, %struct.string_list* %65, i32 0, i32 1
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = load i64, i64* %1, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %12, align 8
  %72 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @fill_pathname_base(i8* %72, i8* %73, i32 128)
  %75 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %76 = load i8*, i8** %3, align 8
  %77 = call i8* @strstr(i8* %75, i8* %76)
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %79 = icmp ne i8* %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %63
  br label %113

81:                                               ; preds = %63
  %82 = load i8*, i8** %12, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  store i8* %86, i8** %11, align 8
  br label %87

87:                                               ; preds = %100, %81
  %88 = load i8*, i8** %11, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = icmp ugt i8* %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load i8*, i8** %11, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 -1
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = call i64 @isdigit(i32 %95)
  %97 = icmp ne i64 %96, 0
  br label %98

98:                                               ; preds = %91, %87
  %99 = phi i1 [ false, %87 ], [ %97, %91 ]
  br i1 %99, label %100, label %103

100:                                              ; preds = %98
  %101 = load i8*, i8** %11, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 -1
  store i8* %102, i8** %11, align 8
  br label %87

103:                                              ; preds = %98
  %104 = load i8*, i8** %11, align 8
  %105 = call i64 @strtoul(i8* %104, i32* null, i32 0)
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ugt i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %110, %103
  br label %113

113:                                              ; preds = %112, %80
  %114 = load i64, i64* %1, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %1, align 8
  br label %57

116:                                              ; preds = %57
  %117 = load %struct.string_list*, %struct.string_list** %5, align 8
  %118 = call i32 @dir_list_free(%struct.string_list* %117)
  %119 = load i8*, i8** %3, align 8
  %120 = call i32 @free(i8* %119)
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @configuration_set_int(%struct.TYPE_14__* %121, i32 %125, i32 %126)
  %128 = load i32, i32* @MSG_FOUND_LAST_STATE_SLOT, align 4
  %129 = call i32 @msg_hash_to_str(i32 %128)
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %116, %44, %25
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @fill_pathname_basedir(i8*, i8*, i64) #1

declare dso_local %struct.string_list* @dir_list_new_special(i8*, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fill_pathname_base(i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @dir_list_free(%struct.string_list*) #1

declare dso_local i32 @configuration_set_int(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
