; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_validate_subtitles.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_validate_subtitles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"No title found.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"FileFormat\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Track\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Import\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Burn\00", align 1
@.str.6 = private unnamed_addr constant [139 x i8] c"Only one subtitle may be burned into the video.\0A\0AYou should change your subtitle selections.\0AIf you continue, some subtitles will be lost.\00", align 1
@GTK_MESSAGE_WARNING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"Cancel\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Continue\00", align 1
@TRUE = common dso_local global i32 0, align 4
@HB_MUX_MASK_WEBM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [141 x i8] c"WebM in HandBrake only supports burned subtitles.\0A\0AYou should change your subtitle selections.\0AIf you continue, some subtitles will be lost.\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Filename\00", align 1
@G_FILE_TEST_IS_REGULAR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [128 x i8] c"SRT file does not exist or not a regular file.\0A\0AYou should choose a valid file.\0AIf you continue, this subtitle will be ignored.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ghb_validate_subtitles(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_3__*, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @ghb_dict_get_int(i32* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32* @ghb_lookup_title(i64 %23, i64* %7)
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @g_message(i32 %28)
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %3, align 4
  br label %150

31:                                               ; preds = %2
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %17, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = call i8* @ghb_dict_get_string(i32* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i8* %34, i8** %18, align 8
  %35 = load i8*, i8** %18, align 8
  %36 = call %struct.TYPE_3__* @ghb_lookup_container_by_name(i8* %35)
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %19, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i32* @ghb_get_job_subtitle_list(i32* %37)
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = call i64 @ghb_array_len(i32* %39)
  store i64 %40, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %41

41:                                               ; preds = %145, %31
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* %13, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %148

45:                                               ; preds = %41
  %46 = load i32*, i32** %10, align 8
  %47 = load i64, i64* %14, align 8
  %48 = call i32* @ghb_array_get(i32* %46, i64 %47)
  store i32* %48, i32** %11, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i64 @ghb_dict_get_int(i32* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i64 %50, i64* %15, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32* @ghb_dict_get(i32* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32* %52, i32** %12, align 8
  %53 = load i64, i64* %15, align 8
  %54 = icmp ne i64 %53, -1
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load i32*, i32** %11, align 8
  %57 = call i64 @ghb_dict_get_bool(i32* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %55, %45
  %60 = phi i1 [ false, %45 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %59
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %64
  %68 = call i32 @_(i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.6, i64 0, i64 0))
  %69 = call i32* @g_strdup_printf(i32 %68)
  store i32* %69, i32** %9, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* @GTK_MESSAGE_WARNING, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %74 = call i32 @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %75 = call i32 @ghb_message_dialog(i32* %70, i32 %71, i32* %72, i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %67
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @g_free(i32* %78)
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %3, align 4
  br label %150

81:                                               ; preds = %67
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @g_free(i32* %82)
  br label %148

84:                                               ; preds = %64, %59
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @TRUE, align 4
  store i32 %88, i32* %17, align 4
  br label %114

89:                                               ; preds = %84
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @HB_MUX_MASK_WEBM, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %89
  %97 = call i32 @_(i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.9, i64 0, i64 0))
  %98 = call i32* @g_strdup_printf(i32 %97)
  store i32* %98, i32** %9, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* @GTK_MESSAGE_WARNING, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %103 = call i32 @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %104 = call i32 @ghb_message_dialog(i32* %99, i32 %100, i32* %101, i32 %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %96
  %107 = load i32*, i32** %9, align 8
  %108 = call i32 @g_free(i32* %107)
  %109 = load i32, i32* @FALSE, align 4
  store i32 %109, i32* %3, align 4
  br label %150

110:                                              ; preds = %96
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @g_free(i32* %111)
  br label %148

113:                                              ; preds = %89
  br label %114

114:                                              ; preds = %113, %87
  br label %115

115:                                              ; preds = %114
  %116 = load i32*, i32** %12, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %144

118:                                              ; preds = %115
  %119 = load i32*, i32** %12, align 8
  %120 = call i8* @ghb_dict_get_string(i32* %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %121 = bitcast i8* %120 to i32*
  store i32* %121, i32** %20, align 8
  %122 = load i32*, i32** %20, align 8
  %123 = load i32, i32* @G_FILE_TEST_IS_REGULAR, align 4
  %124 = call i32 @g_file_test(i32* %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %143, label %126

126:                                              ; preds = %118
  %127 = call i32 @_(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.11, i64 0, i64 0))
  %128 = call i32* @g_strdup_printf(i32 %127)
  store i32* %128, i32** %9, align 8
  %129 = load i32*, i32** %5, align 8
  %130 = load i32, i32* @GTK_MESSAGE_WARNING, align 4
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %133 = call i32 @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %134 = call i32 @ghb_message_dialog(i32* %129, i32 %130, i32* %131, i32 %132, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %126
  %137 = load i32*, i32** %9, align 8
  %138 = call i32 @g_free(i32* %137)
  %139 = load i32, i32* @FALSE, align 4
  store i32 %139, i32* %3, align 4
  br label %150

140:                                              ; preds = %126
  %141 = load i32*, i32** %9, align 8
  %142 = call i32 @g_free(i32* %141)
  br label %148

143:                                              ; preds = %118
  br label %144

144:                                              ; preds = %143, %115
  br label %145

145:                                              ; preds = %144
  %146 = load i64, i64* %14, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %14, align 8
  br label %41

148:                                              ; preds = %140, %110, %81, %41
  %149 = load i32, i32* @TRUE, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %136, %106, %77, %27
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i64 @ghb_dict_get_int(i32*, i8*) #1

declare dso_local i32* @ghb_lookup_title(i64, i64*) #1

declare dso_local i32 @g_message(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @ghb_dict_get_string(i32*, i8*) #1

declare dso_local %struct.TYPE_3__* @ghb_lookup_container_by_name(i8*) #1

declare dso_local i32* @ghb_get_job_subtitle_list(i32*) #1

declare dso_local i64 @ghb_array_len(i32*) #1

declare dso_local i32* @ghb_array_get(i32*, i64) #1

declare dso_local i32* @ghb_dict_get(i32*, i8*) #1

declare dso_local i64 @ghb_dict_get_bool(i32*, i8*) #1

declare dso_local i32* @g_strdup_printf(i32) #1

declare dso_local i32 @ghb_message_dialog(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @g_file_test(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
