; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mpga/extr_mpga_reader.c_mpga_sync.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mpga/extr_mpga_reader.c_mpga_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 (i8*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)*, i32, i32, i32, i32, i32, i32, i64, i64 }

@MPGA_HEADER_SIZE = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_EOS = common dso_local global i64 0, align 8
@MPGA_MAX_BAD_FRAMES = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"MPEGv%d, layer %d, %d bps, %d Hz\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"free format not supported\00", align 1
@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"version or layer not allowed to change mid-stream\00", align 1
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*)* @mpga_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mpga_sync(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %4, align 8
  %23 = load i32, i32* @MPGA_HEADER_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %6, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %7, align 8
  store i32 0, i32* %16, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = load i32, i32* @MPGA_HEADER_SIZE, align 4
  %29 = call i32 @PEEK_BYTES(%struct.TYPE_12__* %27, i8* %26, i32 %28)
  %30 = load i32, i32* @MPGA_HEADER_SIZE, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i64, i64* @VC_CONTAINER_ERROR_EOS, align 8
  store i64 %33, i64* %2, align 8
  store i32 1, i32* %17, align 4
  br label %189

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %124, %34
  %36 = load i32, i32* %16, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* @MPGA_MAX_BAD_FRAMES, align 4
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %125

40:                                               ; preds = %35
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64 (i8*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)*, i64 (i8*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)** %42, align 8
  %44 = call i64 %43(i8* %26, i64* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %104

48:                                               ; preds = %40
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %104

51:                                               ; preds = %48
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 (%struct.TYPE_12__*, i8*, ...) @LOG_DEBUG(%struct.TYPE_12__* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = load i64, i64* %8, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* @MPGA_HEADER_SIZE, align 4
  %62 = call i32 @PEEK_BYTES_AT(%struct.TYPE_12__* %58, i32 %60, i8* %26, i32 %61)
  %63 = load i32, i32* @MPGA_HEADER_SIZE, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %51
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = call i64 @mpga_check_frame_header(%struct.TYPE_12__* %66, %struct.TYPE_13__* %67, i8* %26)
  %69 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65, %51
  br label %125

72:                                               ; preds = %65
  %73 = getelementptr inbounds i8, i8* %26, i64 0
  %74 = load i8, i8* %73, align 16
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 73
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = getelementptr inbounds i8, i8* %26, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 68
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = getelementptr inbounds i8, i8* %26, i64 2
  %84 = load i8, i8* %83, align 2
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 51
  br i1 %86, label %102, label %87

87:                                               ; preds = %82, %77, %72
  %88 = getelementptr inbounds i8, i8* %26, i64 0
  %89 = load i8, i8* %88, align 16
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 84
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = getelementptr inbounds i8, i8* %26, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 65
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = getelementptr inbounds i8, i8* %26, i64 2
  %99 = load i8, i8* %98, align 2
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 71
  br i1 %101, label %102, label %103

102:                                              ; preds = %97, %82
  br label %125

103:                                              ; preds = %97, %92, %87
  br label %112

104:                                              ; preds = %48, %40
  %105 = load i64, i64* %5, align 8
  %106 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %110 = call i32 (%struct.TYPE_12__*, i8*, ...) @LOG_DEBUG(%struct.TYPE_12__* %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %104
  br label %112

112:                                              ; preds = %111, %103
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %114 = call i32 @SKIP_BYTES(%struct.TYPE_12__* %113, i32 1)
  %115 = icmp ne i32 %114, 1
  br i1 %115, label %122, label %116

116:                                              ; preds = %112
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %118 = load i32, i32* @MPGA_HEADER_SIZE, align 4
  %119 = call i32 @PEEK_BYTES(%struct.TYPE_12__* %117, i8* %26, i32 %118)
  %120 = load i32, i32* @MPGA_HEADER_SIZE, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %116, %112
  %123 = load i64, i64* @VC_CONTAINER_ERROR_EOS, align 8
  store i64 %123, i64* %2, align 8
  store i32 1, i32* %17, align 4
  br label %189

124:                                              ; preds = %116
  br label %35

125:                                              ; preds = %102, %71, %35
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* @MPGA_MAX_BAD_FRAMES, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %130, i64* %2, align 8
  store i32 1, i32* %17, align 4
  br label %189

131:                                              ; preds = %125
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %153

136:                                              ; preds = %131
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %137, %140
  br i1 %141, label %148, label %142

142:                                              ; preds = %136
  %143 = load i32, i32* %11, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %143, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %142, %136
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %150 = call i32 (%struct.TYPE_12__*, i8*, ...) @LOG_DEBUG(%struct.TYPE_12__* %149, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %151 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %151, i64* %2, align 8
  store i32 1, i32* %17, align 4
  br label %189

152:                                              ; preds = %142
  br label %169

153:                                              ; preds = %131
  %154 = load i32, i32* %10, align 4
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %12, align 4
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* %13, align 4
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %14, align 4
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 5
  store i32 %166, i32* %168, align 8
  br label %169

169:                                              ; preds = %153, %152
  %170 = load i32, i32* %15, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %174 = load i32, i32* %15, align 4
  %175 = call i32 @SKIP_BYTES(%struct.TYPE_12__* %173, i32 %174)
  br label %176

176:                                              ; preds = %172, %169
  %177 = load i64, i64* %8, align 8
  %178 = load i32, i32* %15, align 4
  %179 = zext i32 %178 to i64
  %180 = sub nsw i64 %177, %179
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 7
  store i64 %180, i64* %182, align 8
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 8
  store i64 %180, i64* %184, align 8
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 6
  store i32 %185, i32* %187, align 4
  %188 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %188, i64* %2, align 8
  store i32 1, i32* %17, align 4
  br label %189

189:                                              ; preds = %176, %148, %129, %122, %32
  %190 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %190)
  %191 = load i64, i64* %2, align 8
  ret i64 %191
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PEEK_BYTES(%struct.TYPE_12__*, i8*, i32) #2

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_12__*, i8*, ...) #2

declare dso_local i32 @PEEK_BYTES_AT(%struct.TYPE_12__*, i32, i8*, i32) #2

declare dso_local i64 @mpga_check_frame_header(%struct.TYPE_12__*, %struct.TYPE_13__*, i8*) #2

declare dso_local i32 @SKIP_BYTES(%struct.TYPE_12__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
