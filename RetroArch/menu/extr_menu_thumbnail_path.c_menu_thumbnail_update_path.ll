; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_thumbnail_path.c_menu_thumbnail_update_path.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_thumbnail_path.c_menu_thumbnail_update_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"history\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"favorites\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"images_history\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"imageviewer\00", align 1
@RARCH_CONTENT_IMAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_thumbnail_update_path(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = call %struct.TYPE_10__* (...) @config_get_ptr()
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %6, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i8* @menu_thumbnail_get_type(%struct.TYPE_11__* %16, i32 %17)
  store i8* %18, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %19 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = icmp ne %struct.TYPE_11__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %184

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %36 [
    i32 128, label %28
    i32 129, label %32
  ]

28:                                               ; preds = %26
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %9, align 8
  br label %37

32:                                               ; preds = %26
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %9, align 8
  br label %37

36:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %184

37:                                               ; preds = %32, %28
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 0, i8* %40, align 16
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = icmp ne %struct.TYPE_10__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %184

44:                                               ; preds = %37
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @string_is_empty(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %184

52:                                               ; preds = %44
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @menu_thumbnail_is_enabled(%struct.TYPE_11__* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %184

58:                                               ; preds = %52
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @string_is_empty(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %82, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @string_is_empty(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %64
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 4
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @string_is_empty(i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 5
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @string_is_empty(i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76, %64, %58
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %184

83:                                               ; preds = %76, %70
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 5
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @string_is_empty(i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %113

89:                                               ; preds = %83
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 4
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @string_is_equal(i8* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 4
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @string_is_equal(i8* %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %95, %89
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %103 = trunc i64 %20 to i32
  %104 = call i32 @menu_thumbnail_get_content_dir(%struct.TYPE_11__* %102, i8* %22, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %184

107:                                              ; preds = %101
  store i8* %22, i8** %8, align 8
  br label %112

108:                                              ; preds = %95
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 4
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %8, align 8
  br label %112

112:                                              ; preds = %108, %107
  br label %117

113:                                              ; preds = %83
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 5
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** %8, align 8
  br label %117

117:                                              ; preds = %113, %112
  %118 = load i8*, i8** %8, align 8
  %119 = call i64 @string_is_equal(i8* %118, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %117
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 6
  %124 = load i8*, i8** %123, align 8
  %125 = call i64 @string_is_equal(i8* %124, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %145

127:                                              ; preds = %121, %117
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = call i64 @path_is_media_type(i8* %130)
  %132 = load i64, i64* @RARCH_CONTENT_IMAGE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %127
  %135 = load i8*, i8** %9, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 2
  %138 = load i8*, i8** %137, align 8
  %139 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 1
  %142 = trunc i64 %141 to i32
  %143 = call i32 @strlcpy(i8* %135, i8* %138, i32 %142)
  br label %144

144:                                              ; preds = %134, %127
  br label %178

145:                                              ; preds = %121
  %146 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %147 = zext i32 %146 to i64
  %148 = call i8* @llvm.stacksave()
  store i8* %148, i8** %13, align 8
  %149 = alloca i8, i64 %147, align 16
  store i64 %147, i64* %14, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  store i8 0, i8* %150, align 16
  %151 = load i8*, i8** %9, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = load i8*, i8** %8, align 8
  %157 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %158 = sext i32 %157 to i64
  %159 = mul i64 %158, 1
  %160 = trunc i64 %159 to i32
  %161 = call i32 @fill_pathname_join(i8* %151, i8* %155, i8* %156, i32 %160)
  %162 = load i8*, i8** %9, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = trunc i64 %147 to i32
  %165 = call i32 @fill_pathname_join(i8* %149, i8* %162, i8* %163, i32 %164)
  %166 = load i8*, i8** %9, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 0
  store i8 0, i8* %167, align 1
  %168 = load i8*, i8** %9, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 3
  %171 = load i8*, i8** %170, align 8
  %172 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %173 = sext i32 %172 to i64
  %174 = mul i64 %173, 1
  %175 = trunc i64 %174 to i32
  %176 = call i32 @fill_pathname_join(i8* %168, i8* %149, i8* %171, i32 %175)
  %177 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %177)
  br label %178

178:                                              ; preds = %145, %144
  %179 = load i8*, i8** %9, align 8
  %180 = call i64 @string_is_empty(i8* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %184

183:                                              ; preds = %178
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %184

184:                                              ; preds = %183, %182, %106, %82, %57, %51, %43, %36, %25
  %185 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %185)
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local %struct.TYPE_10__* @config_get_ptr(...) #1

declare dso_local i8* @menu_thumbnail_get_type(%struct.TYPE_11__*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @menu_thumbnail_is_enabled(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i32 @menu_thumbnail_get_content_dir(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i64 @path_is_media_type(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
