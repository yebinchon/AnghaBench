; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_archive_file_7z.c_sevenzip_parse_file_iterate_step_internal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_archive_file_7z.c_sevenzip_parse_file_iterate_step_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.archive_extract_userdata = type { i32 }
%struct.sevenzip_context_t = type { i32, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i32 }

@PATH_MAX_LENGTH = common dso_local global i64 0, align 8
@SZ_ERROR_FAIL = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i64 0, align 8
@ARCHIVE_MODE_COMPRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32**, i32*, i64*, i64*, i64*, i32*, %struct.archive_extract_userdata*)* @sevenzip_parse_file_iterate_step_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sevenzip_parse_file_iterate_step_internal(%struct.TYPE_7__* %0, i8* %1, i32** %2, i32* %3, i64* %4, i64* %5, i64* %6, i32* %7, %struct.archive_extract_userdata* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.archive_extract_userdata*, align 8
  %20 = alloca %struct.sevenzip_context_t*, align 8
  %21 = alloca %struct.TYPE_8__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32** %2, i32*** %13, align 8
  store i32* %3, i32** %14, align 8
  store i64* %4, i64** %15, align 8
  store i64* %5, i64** %16, align 8
  store i64* %6, i64** %17, align 8
  store i32* %7, i32** %18, align 8
  store %struct.archive_extract_userdata* %8, %struct.archive_extract_userdata** %19, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.sevenzip_context_t*
  store %struct.sevenzip_context_t* %32, %struct.sevenzip_context_t** %20, align 8
  %33 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %20, align 8
  %34 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %20, align 8
  %39 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 %41
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %21, align 8
  %43 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %20, align 8
  %44 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %20, align 8
  %48 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %46, %51
  br i1 %52, label %53, label %157

53:                                               ; preds = %9
  %54 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %20, align 8
  %55 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %54, i32 0, i32 2
  %56 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %20, align 8
  %57 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = call i64 @SzArEx_GetFileNameUtf16(%struct.TYPE_9__* %55, i64 %59, i32* null)
  store i64 %60, i64* %22, align 8
  store i64 0, i64* %23, align 8
  %61 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %20, align 8
  %62 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %20, align 8
  %65 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ult i64 %63, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %53
  %71 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %20, align 8
  %72 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i64*, i64** %74, align 8
  %76 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %20, align 8
  %77 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i64, i64* %75, i64 %78
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %23, align 8
  %81 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %20, align 8
  %82 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %82, align 8
  br label %85

85:                                               ; preds = %70, %53
  %86 = load i64, i64* %22, align 8
  %87 = load i64, i64* @PATH_MAX_LENGTH, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %156

89:                                               ; preds = %85
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %156, label %94

94:                                               ; preds = %89
  %95 = load i64, i64* @PATH_MAX_LENGTH, align 8
  %96 = call i8* @llvm.stacksave()
  store i8* %96, i8** %24, align 8
  %97 = alloca i8, i64 %95, align 16
  store i64 %95, i64* %25, align 8
  %98 = load i64, i64* @SZ_ERROR_FAIL, align 8
  store i64 %98, i64* %26, align 8
  %99 = load i64, i64* %22, align 8
  %100 = mul i64 %99, 4
  %101 = call i64 @malloc(i64 %100)
  %102 = inttoptr i64 %101 to i32*
  store i32* %102, i32** %27, align 8
  %103 = load i32*, i32** %27, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %94
  store i32 -1, i32* %10, align 4
  store i32 1, i32* %28, align 4
  br label %152

106:                                              ; preds = %94
  %107 = getelementptr inbounds i8, i8* %97, i64 0
  store i8 0, i8* %107, align 16
  %108 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %20, align 8
  %109 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %108, i32 0, i32 2
  %110 = load %struct.sevenzip_context_t*, %struct.sevenzip_context_t** %20, align 8
  %111 = getelementptr inbounds %struct.sevenzip_context_t, %struct.sevenzip_context_t* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = load i32*, i32** %27, align 8
  %115 = call i64 @SzArEx_GetFileNameUtf16(%struct.TYPE_9__* %109, i64 %113, i32* %114)
  %116 = load i32*, i32** %27, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %131

118:                                              ; preds = %106
  %119 = load i32*, i32** %27, align 8
  %120 = trunc i64 %95 to i32
  %121 = call i64 @utf16_to_char_string(i32* %119, i8* %97, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i64, i64* @SZ_OK, align 8
  br label %127

125:                                              ; preds = %118
  %126 = load i64, i64* @SZ_ERROR_FAIL, align 8
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i64 [ %124, %123 ], [ %126, %125 ]
  store i64 %128, i64* %26, align 8
  %129 = load i32*, i32** %27, align 8
  %130 = call i32 @free(i32* %129)
  br label %131

131:                                              ; preds = %127, %106
  %132 = load i64, i64* %26, align 8
  %133 = load i64, i64* @SZ_OK, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 -1, i32* %10, align 4
  store i32 1, i32* %28, align 4
  br label %152

136:                                              ; preds = %131
  %137 = load i8*, i8** %12, align 8
  %138 = load i64, i64* @PATH_MAX_LENGTH, align 8
  %139 = call i32 @strlcpy(i8* %137, i8* %97, i64 %138)
  %140 = load i32, i32* @ARCHIVE_MODE_COMPRESSED, align 4
  %141 = load i32*, i32** %14, align 8
  store i32 %140, i32* %141, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64*, i64** %17, align 8
  store i64 %144, i64* %145, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64*, i64** %15, align 8
  store i64 %148, i64* %149, align 8
  %150 = load i64, i64* %23, align 8
  %151 = load i64*, i64** %16, align 8
  store i64 %150, i64* %151, align 8
  store i32 0, i32* %28, align 4
  br label %152

152:                                              ; preds = %136, %135, %105
  %153 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %153)
  %154 = load i32, i32* %28, align 4
  switch i32 %154, label %162 [
    i32 0, label %155
    i32 1, label %160
  ]

155:                                              ; preds = %152
  br label %156

156:                                              ; preds = %155, %89, %85
  br label %158

157:                                              ; preds = %9
  store i32 0, i32* %10, align 4
  br label %160

158:                                              ; preds = %156
  %159 = load i32*, i32** %18, align 8
  store i32 1, i32* %159, align 4
  store i32 1, i32* %10, align 4
  br label %160

160:                                              ; preds = %158, %157, %152
  %161 = load i32, i32* %10, align 4
  ret i32 %161

162:                                              ; preds = %152
  unreachable
}

declare dso_local i64 @SzArEx_GetFileNameUtf16(%struct.TYPE_9__*, i64, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @utf16_to_char_string(i32*, i8*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
