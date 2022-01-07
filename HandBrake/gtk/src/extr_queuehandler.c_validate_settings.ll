; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_validate_settings.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_validate_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"hb_window\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"destination\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"uiSettings\00", align 1
@.str.4 = private unnamed_addr constant [98 x i8] c"Destination: %s\0A\0AAnother queued job has specified the same destination.\0ADo you want to overwrite?\00", align 1
@GTK_MESSAGE_QUESTION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"Cancel\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Overwrite\00", align 1
@G_FILE_TEST_IS_DIR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"Destination: %s\0A\0AThis is not a valid directory.\00", align 1
@GTK_MESSAGE_ERROR = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [54 x i8] c"Destination: %s\0A\0ACan not read or write the directory.\00", align 1
@G_FILE_TEST_EXISTS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [64 x i8] c"Destination: %s\0A\0AFile already exists.\0ADo you want to overwrite?\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i64)* @validate_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_settings(%struct.TYPE_3__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @GHB_WIDGET(i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %24 = call i32* @GTK_WINDOW(i32 %23)
  store i32* %24, i32** %15, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @ghb_dict_get_int(i32* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = call i32* @ghb_lookup_title(i64 %27, i64* %13)
  store i32* %28, i32** %14, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %4, align 4
  br label %179

33:                                               ; preds = %3
  %34 = load i32*, i32** %6, align 8
  %35 = call i32* @ghb_dict_get_string(i32* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32* %35, i32** %9, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ghb_array_len(i32 %38)
  store i64 %39, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %40

40:                                               ; preds = %77, %33
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %80

44:                                               ; preds = %40
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %11, align 8
  %49 = call i32* @ghb_array_get(i32 %47, i64 %48)
  store i32* %49, i32** %16, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = call i32* @ghb_dict_get(i32* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32* %51, i32** %17, align 8
  %52 = load i32*, i32** %17, align 8
  %53 = call i32* @ghb_dict_get_string(i32* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32* %53, i32** %18, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*, i32** %18, align 8
  %56 = call i64 @strcmp(i32* %54, i32* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %44
  %59 = call i32* @_(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.4, i64 0, i64 0))
  %60 = load i32*, i32** %9, align 8
  %61 = call i32* @g_strdup_printf(i32* %59, i32* %60)
  store i32* %61, i32** %8, align 8
  %62 = load i32*, i32** %15, align 8
  %63 = load i32, i32* @GTK_MESSAGE_QUESTION, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = call i32* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %66 = call i32* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %67 = call i32 @ghb_message_dialog(i32* %62, i32 %63, i32* %64, i32* %65, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %58
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @g_free(i32* %70)
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %4, align 4
  br label %179

73:                                               ; preds = %58
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @g_free(i32* %74)
  br label %80

76:                                               ; preds = %44
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %11, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %11, align 8
  br label %40

80:                                               ; preds = %73, %40
  %81 = load i32*, i32** %9, align 8
  %82 = call i32* @g_path_get_dirname(i32* %81)
  store i32* %82, i32** %19, align 8
  %83 = load i32*, i32** %19, align 8
  %84 = load i32, i32* @G_FILE_TEST_IS_DIR, align 4
  %85 = call i64 @g_file_test(i32* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %80
  %88 = call i32* @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %89 = load i32*, i32** %19, align 8
  %90 = call i32* @g_strdup_printf(i32* %88, i32* %89)
  store i32* %90, i32** %8, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = load i32, i32* @GTK_MESSAGE_ERROR, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = call i32* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %95 = call i32 @ghb_message_dialog(i32* %91, i32 %92, i32* %93, i32* %94, i32* null)
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @g_free(i32* %96)
  %98 = load i32*, i32** %19, align 8
  %99 = call i32 @g_free(i32* %98)
  %100 = load i32, i32* @FALSE, align 4
  store i32 %100, i32* %4, align 4
  br label %179

101:                                              ; preds = %80
  %102 = load i32*, i32** %19, align 8
  %103 = load i32, i32* @R_OK, align 4
  %104 = load i32, i32* @W_OK, align 4
  %105 = or i32 %103, %104
  %106 = call i64 @g_access(i32* %102, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %101
  %109 = call i32* @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0))
  %110 = load i32*, i32** %19, align 8
  %111 = call i32* @g_strdup_printf(i32* %109, i32* %110)
  store i32* %111, i32** %8, align 8
  %112 = load i32*, i32** %15, align 8
  %113 = load i32, i32* @GTK_MESSAGE_ERROR, align 4
  %114 = load i32*, i32** %8, align 8
  %115 = call i32* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %116 = call i32 @ghb_message_dialog(i32* %112, i32 %113, i32* %114, i32* %115, i32* null)
  %117 = load i32*, i32** %8, align 8
  %118 = call i32 @g_free(i32* %117)
  %119 = load i32*, i32** %19, align 8
  %120 = call i32 @g_free(i32* %119)
  %121 = load i32, i32* @FALSE, align 4
  store i32 %121, i32* %4, align 4
  br label %179

122:                                              ; preds = %101
  %123 = load i32*, i32** %19, align 8
  %124 = call i32 @g_free(i32* %123)
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* @G_FILE_TEST_EXISTS, align 4
  %127 = call i64 @g_file_test(i32* %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %149

129:                                              ; preds = %122
  %130 = call i32* @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i64 0, i64 0))
  %131 = load i32*, i32** %9, align 8
  %132 = call i32* @g_strdup_printf(i32* %130, i32* %131)
  store i32* %132, i32** %8, align 8
  %133 = load i32*, i32** %15, align 8
  %134 = load i32, i32* @GTK_MESSAGE_QUESTION, align 4
  %135 = load i32*, i32** %8, align 8
  %136 = call i32* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %137 = call i32* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %138 = call i32 @ghb_message_dialog(i32* %133, i32 %134, i32* %135, i32* %136, i32* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %129
  %141 = load i32*, i32** %8, align 8
  %142 = call i32 @g_free(i32* %141)
  %143 = load i32, i32* @FALSE, align 4
  store i32 %143, i32* %4, align 4
  br label %179

144:                                              ; preds = %129
  %145 = load i32*, i32** %8, align 8
  %146 = call i32 @g_free(i32* %145)
  %147 = load i32*, i32** %9, align 8
  %148 = call i32 @g_unlink(i32* %147)
  br label %149

149:                                              ; preds = %144, %122
  %150 = load i32*, i32** %6, align 8
  %151 = load i32*, i32** %15, align 8
  %152 = call i32 @ghb_validate_audio(i32* %150, i32* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %149
  %155 = load i32, i32* @FALSE, align 4
  store i32 %155, i32* %4, align 4
  br label %179

156:                                              ; preds = %149
  %157 = load i32*, i32** %6, align 8
  %158 = load i32*, i32** %15, align 8
  %159 = call i32 @ghb_validate_subtitles(i32* %157, i32* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %156
  %162 = load i32, i32* @FALSE, align 4
  store i32 %162, i32* %4, align 4
  br label %179

163:                                              ; preds = %156
  %164 = load i32*, i32** %6, align 8
  %165 = load i32*, i32** %15, align 8
  %166 = call i32 @ghb_validate_video(i32* %164, i32* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %163
  %169 = load i32, i32* @FALSE, align 4
  store i32 %169, i32* %4, align 4
  br label %179

170:                                              ; preds = %163
  %171 = load i32*, i32** %6, align 8
  %172 = load i32*, i32** %15, align 8
  %173 = call i32 @ghb_validate_filters(i32* %171, i32* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %170
  %176 = load i32, i32* @FALSE, align 4
  store i32 %176, i32* %4, align 4
  br label %179

177:                                              ; preds = %170
  %178 = load i32, i32* @TRUE, align 4
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %177, %175, %168, %161, %154, %140, %108, %87, %69, %31
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32* @GTK_WINDOW(i32) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i64 @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i32* @ghb_lookup_title(i64, i64*) #1

declare dso_local i32* @ghb_dict_get_string(i32*, i8*) #1

declare dso_local i64 @ghb_array_len(i32) #1

declare dso_local i32* @ghb_array_get(i32, i64) #1

declare dso_local i32* @ghb_dict_get(i32*, i8*) #1

declare dso_local i64 @strcmp(i32*, i32*) #1

declare dso_local i32* @g_strdup_printf(i32*, i32*) #1

declare dso_local i32* @_(i8*) #1

declare dso_local i32 @ghb_message_dialog(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32* @g_path_get_dirname(i32*) #1

declare dso_local i64 @g_file_test(i32*, i32) #1

declare dso_local i64 @g_access(i32*, i32) #1

declare dso_local i32 @g_unlink(i32*) #1

declare dso_local i32 @ghb_validate_audio(i32*, i32*) #1

declare dso_local i32 @ghb_validate_subtitles(i32*, i32*) #1

declare dso_local i32 @ghb_validate_video(i32*, i32*) #1

declare dso_local i32 @ghb_validate_filters(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
