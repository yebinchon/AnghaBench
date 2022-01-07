; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_video_shader_read_reference_path.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_video_shader_read_reference_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RETRO_VFS_FILE_ACCESS_READ = common dso_local global i32 0, align 4
@RETRO_VFS_FILE_ACCESS_HINT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"#reference\00", align 1
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @video_shader_read_reference_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %3, align 8
  store i32* null, i32** %4, align 8
  store i8* null, i8** %5, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @string_is_empty(i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %148

13:                                               ; preds = %1
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @path_is_valid(i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %148

18:                                               ; preds = %13
  %19 = load i8*, i8** %2, align 8
  %20 = load i32, i32* @RETRO_VFS_FILE_ACCESS_READ, align 4
  %21 = load i32, i32* @RETRO_VFS_FILE_ACCESS_HINT_NONE, align 4
  %22 = call i32* @filestream_open(i8* %19, i32 %20, i32 %21)
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %148

26:                                               ; preds = %18
  %27 = load i32*, i32** %4, align 8
  %28 = call i8* @filestream_getline(i32* %27)
  store i8* %28, i8** %5, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @filestream_close(i32* %29)
  %31 = load i8*, i8** %5, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %147

33:                                               ; preds = %26
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @strncmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %147, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @isspace(i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  br label %148

48:                                               ; preds = %38
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %6, align 8
  br label %51

51:                                               ; preds = %56, %48
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = call i64 @isspace(i8 signext %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %6, align 8
  br label %51

59:                                               ; preds = %51
  %60 = load i8*, i8** %6, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 34
  br i1 %63, label %64, label %103

64:                                               ; preds = %59
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %6, align 8
  %67 = load i8*, i8** %6, align 8
  store i8* %67, i8** %7, align 8
  br label %68

68:                                               ; preds = %80, %64
  %69 = load i8*, i8** %7, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i8*, i8** %7, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 34
  br label %78

78:                                               ; preds = %73, %68
  %79 = phi i1 [ false, %68 ], [ %77, %73 ]
  br i1 %79, label %80, label %83

80:                                               ; preds = %78
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %7, align 8
  br label %68

83:                                               ; preds = %78
  %84 = load i8*, i8** %7, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 34
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i8*, i8** %7, align 8
  store i8 0, i8* %89, align 1
  br label %102

90:                                               ; preds = %83
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 -1
  store i8* %92, i8** %7, align 8
  br label %93

93:                                               ; preds = %98, %90
  %94 = load i8*, i8** %7, align 8
  %95 = load i8, i8* %94, align 1
  %96 = call i64 @isspace(i8 signext %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 -1
  store i8* %100, i8** %7, align 8
  store i8 0, i8* %99, align 1
  br label %93

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %88
  br label %119

103:                                              ; preds = %59
  %104 = load i8*, i8** %6, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = call i32 @strlen(i8* %105)
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  %109 = getelementptr inbounds i8, i8* %108, i64 -1
  store i8* %109, i8** %8, align 8
  br label %110

110:                                              ; preds = %115, %103
  %111 = load i8*, i8** %8, align 8
  %112 = load i8, i8* %111, align 1
  %113 = call i64 @isspace(i8 signext %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 -1
  store i8* %117, i8** %8, align 8
  store i8 0, i8* %116, align 1
  br label %110

118:                                              ; preds = %110
  br label %119

119:                                              ; preds = %118, %102
  %120 = load i8*, i8** %6, align 8
  %121 = call i64 @string_is_empty(i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %148

124:                                              ; preds = %119
  %125 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %126 = call i64 @malloc(i32 %125)
  %127 = inttoptr i64 %126 to i8*
  store i8* %127, i8** %3, align 8
  %128 = load i8*, i8** %3, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %124
  br label %148

131:                                              ; preds = %124
  %132 = load i8*, i8** %6, align 8
  %133 = call i32 @path_is_absolute(i8* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %131
  %136 = load i8*, i8** %3, align 8
  %137 = load i8*, i8** %2, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %140 = call i32 @fill_pathname_resolve_relative(i8* %136, i8* %137, i8* %138, i32 %139)
  br label %146

141:                                              ; preds = %131
  %142 = load i8*, i8** %3, align 8
  %143 = load i8*, i8** %6, align 8
  %144 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %145 = call i32 @strlcpy(i8* %142, i8* %143, i32 %144)
  br label %146

146:                                              ; preds = %141, %135
  br label %147

147:                                              ; preds = %146, %33, %26
  br label %148

148:                                              ; preds = %147, %130, %123, %47, %25, %17, %12
  %149 = load i8*, i8** %5, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i8*, i8** %5, align 8
  %153 = call i32 @free(i8* %152)
  br label %154

154:                                              ; preds = %151, %148
  %155 = load i8*, i8** %3, align 8
  ret i8* %155
}

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @path_is_valid(i8*) #1

declare dso_local i32* @filestream_open(i8*, i32, i32) #1

declare dso_local i8* @filestream_getline(i32*) #1

declare dso_local i32 @filestream_close(i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @STRLEN_CONST(i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @path_is_absolute(i8*) #1

declare dso_local i32 @fill_pathname_resolve_relative(i8*, i8*, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
