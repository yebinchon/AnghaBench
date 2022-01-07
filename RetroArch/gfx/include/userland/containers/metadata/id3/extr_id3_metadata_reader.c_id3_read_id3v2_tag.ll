; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/metadata/id3/extr_id3_metadata_reader.c_id3_read_id3v2_tag.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/metadata/id3/extr_id3_metadata_reader.c_id3_read_id3v2_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ID3v2 identifier\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"ID3v2 version (major)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"ID3v2 version (minor)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ID3v2 flags\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"ID3v2 syncsafe tag size\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"ID3v2 tag size: %d\00", align 1
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"skipping unsynchronised tag, not supported\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"skipping ID3v2 extended header, not supported\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"ID3v2 syncsafe extended header size\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"ID3v2 extended header size: %d\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Frame ID\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Frame Size\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"ID3v2 actual frame size: %d\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"ID3v2 status message flags\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"ID3v2 format description flags\00", align 1
@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [45 x i8] c"skipping unsynchronised frame, not supported\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"skipping unsupported frame\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @id3_read_id3v2_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @id3_read_id3v2_tag(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [10 x i32], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %14 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %14, i32* %4, align 4
  store i64 0, i64* %8, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @SKIP_STRING(i32* %15, i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @READ_U8(i32* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %5, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @SKIP_U8(i32* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @READ_U8(i32* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 %22, i32* %6, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @READ_U32(i32* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @ID3_SYNC_SAFE(i64 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 (i32*, i8*, ...) @LOG_DEBUG(i32* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %40, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %39, i32* %2, align 4
  br label %165

40:                                               ; preds = %35, %32, %1
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 7
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 (i32*, i8*, ...) @LOG_DEBUG(i32* %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %48 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %48, i32* %2, align 4
  br label %165

49:                                               ; preds = %40
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %53, i32* %2, align 4
  br label %165

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = ashr i32 %55, 6
  %57 = and i32 %56, 1
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %54
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 (i32*, i8*, ...) @LOG_DEBUG(i32* %60, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  %62 = load i32*, i32** %3, align 8
  %63 = call i64 @READ_U32(i32* %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i64 @ID3_SYNC_SAFE(i64 %64)
  store i64 %65, i64* %10, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call i32 (i32*, i8*, ...) @LOG_DEBUG(i32* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i64 %67)
  %69 = load i32*, i32** %3, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i64 @MIN(i64 %70, i64 %71)
  %73 = call i32 @SKIP_BYTES(i32* %69, i64 %72)
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %8, align 8
  %76 = add nsw i64 %75, %74
  store i64 %76, i64* %8, align 8
  br label %77

77:                                               ; preds = %59, %54
  br label %78

78:                                               ; preds = %149, %130, %77
  %79 = load i32*, i32** %3, align 8
  %80 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %81 = call i32 @PEEK_BYTES(i32* %79, i32* %80, i32 10)
  %82 = icmp eq i32 %81, 10
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %7, align 8
  %86 = icmp slt i64 %84, %85
  br label %87

87:                                               ; preds = %83, %78
  %88 = phi i1 [ false, %78 ], [ %86, %83 ]
  br i1 %88, label %89, label %153

89:                                               ; preds = %87
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @READ_FOURCC(i32* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  store i32 %91, i32* %11, align 4
  %92 = load i32*, i32** %3, align 8
  %93 = call i64 @READ_U32(i32* %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  store i64 %93, i64* %12, align 8
  %94 = load i32, i32* %5, align 4
  %95 = icmp sge i32 %94, 4
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load i64, i64* %12, align 8
  %98 = call i64 @ID3_SYNC_SAFE(i64 %97)
  store i64 %98, i64* %12, align 8
  %99 = load i32*, i32** %3, align 8
  %100 = load i64, i64* %12, align 8
  %101 = call i32 (i32*, i8*, ...) @LOG_DEBUG(i32* %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i64 %100)
  br label %102

102:                                              ; preds = %96, %89
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @SKIP_U8(i32* %103, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @READ_U8(i32* %105, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  store i32 %106, i32* %13, align 4
  %107 = load i64, i64* %8, align 8
  %108 = add nsw i64 %107, 10
  store i64 %108, i64* %8, align 8
  %109 = load i32*, i32** %3, align 8
  %110 = call i32 @STREAM_STATUS(i32* %109)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %116, label %113

113:                                              ; preds = %102
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %113, %102
  br label %153

117:                                              ; preds = %113
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* %12, align 8
  %120 = add nsw i64 %118, %119
  %121 = load i64, i64* %7, align 8
  %122 = icmp sgt i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 4
  store i32 %124, i32* %4, align 4
  br label %153

125:                                              ; preds = %117
  %126 = load i32, i32* %13, align 4
  %127 = ashr i32 %126, 1
  %128 = and i32 %127, 1
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 (i32*, i8*, ...) @LOG_DEBUG(i32* %131, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0))
  %133 = load i32*, i32** %3, align 8
  %134 = load i64, i64* %12, align 8
  %135 = call i32 @SKIP_BYTES(i32* %133, i64 %134)
  br label %78

136:                                              ; preds = %125
  %137 = load i32*, i32** %3, align 8
  %138 = load i32, i32* %11, align 4
  %139 = load i64, i64* %12, align 8
  %140 = call i32 @id3_read_id3v2_frame(i32* %137, i32 %138, i64 %139)
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %136
  %144 = load i32*, i32** %3, align 8
  %145 = call i32 (i32*, i8*, ...) @LOG_DEBUG(i32* %144, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  %146 = load i32*, i32** %3, align 8
  %147 = load i64, i64* %12, align 8
  %148 = call i32 @SKIP_BYTES(i32* %146, i64 %147)
  br label %149

149:                                              ; preds = %143, %136
  %150 = load i64, i64* %12, align 8
  %151 = load i64, i64* %8, align 8
  %152 = add nsw i64 %151, %150
  store i64 %152, i64* %8, align 8
  br label %78

153:                                              ; preds = %123, %116, %87
  %154 = load i64, i64* %8, align 8
  %155 = load i64, i64* %7, align 8
  %156 = icmp slt i64 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = load i32*, i32** %3, align 8
  %159 = load i64, i64* %7, align 8
  %160 = load i64, i64* %8, align 8
  %161 = sub nsw i64 %159, %160
  %162 = call i32 @SKIP_BYTES(i32* %158, i64 %161)
  br label %163

163:                                              ; preds = %157, %153
  %164 = load i32, i32* %4, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %163, %52, %45, %38
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @SKIP_STRING(i32*, i32, i8*) #1

declare dso_local i32 @READ_U8(i32*, i8*) #1

declare dso_local i32 @SKIP_U8(i32*, i8*) #1

declare dso_local i64 @READ_U32(i32*, i8*) #1

declare dso_local i64 @ID3_SYNC_SAFE(i64) #1

declare dso_local i32 @LOG_DEBUG(i32*, i8*, ...) #1

declare dso_local i32 @SKIP_BYTES(i32*, i64) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @PEEK_BYTES(i32*, i32*, i32) #1

declare dso_local i32 @READ_FOURCC(i32*, i8*) #1

declare dso_local i32 @STREAM_STATUS(i32*) #1

declare dso_local i32 @id3_read_id3v2_frame(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
