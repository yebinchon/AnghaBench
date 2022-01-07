; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_log.c_format_line.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_log.c_format_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 (i8*)* }

@AV_BPRINT_SIZE_AUTOMATIC = common dso_local global i32 0, align 4
@AV_CLASS_CATEGORY_NA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"[%s @ %p] \00", align 1
@AV_LOG_QUIET = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@AV_LOG_PRINT_LEVEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32, %struct.TYPE_9__*, i32*, i32*)* @format_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_line(i8* %0, i32 %1, i8* %2, i32 %3, %struct.TYPE_9__* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca %struct.TYPE_8__**, align 8
  %17 = alloca i8, align 1
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %7
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_8__**
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  br label %25

24:                                               ; preds = %7
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi %struct.TYPE_8__* [ %23, %20 ], [ null, %24 ]
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %15, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i64 0
  %29 = load i32, i32* @AV_BPRINT_SIZE_AUTOMATIC, align 4
  %30 = call i32 @av_bprint_init(%struct.TYPE_9__* %28, i32 0, i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 1
  %33 = load i32, i32* @AV_BPRINT_SIZE_AUTOMATIC, align 4
  %34 = call i32 @av_bprint_init(%struct.TYPE_9__* %32, i32 0, i32 %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i64 2
  %37 = load i32, i32* @AV_BPRINT_SIZE_AUTOMATIC, align 4
  %38 = call i32 @av_bprint_init(%struct.TYPE_9__* %36, i32 0, i32 %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 3
  %41 = call i32 @av_bprint_init(%struct.TYPE_9__* %40, i32 0, i32 65536)
  %42 = load i32*, i32** %14, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %25
  %45 = load i32, i32* @AV_CLASS_CATEGORY_NA, align 4
  %46 = add nsw i32 %45, 16
  %47 = load i32*, i32** %14, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** %14, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %46, i32* %50, align 4
  br label %51

51:                                               ; preds = %44, %25
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %119

55:                                               ; preds = %51
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %57 = icmp ne %struct.TYPE_8__* %56, null
  br i1 %57, label %58, label %119

58:                                               ; preds = %55
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %101

63:                                               ; preds = %58
  %64 = load i8*, i8** %8, align 8
  %65 = bitcast i8* %64 to i32*
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = bitcast i32* %70 to %struct.TYPE_8__***
  %72 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %71, align 8
  store %struct.TYPE_8__** %72, %struct.TYPE_8__*** %16, align 8
  %73 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %16, align 8
  %74 = icmp ne %struct.TYPE_8__** %73, null
  br i1 %74, label %75, label %100

75:                                               ; preds = %63
  %76 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %16, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = icmp ne %struct.TYPE_8__* %77, null
  br i1 %78, label %79, label %100

79:                                               ; preds = %75
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i64 0
  %82 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %16, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32 (i8*)*, i32 (i8*)** %84, align 8
  %86 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %16, align 8
  %87 = bitcast %struct.TYPE_8__** %86 to i8*
  %88 = call i32 %85(i8* %87)
  %89 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %16, align 8
  %90 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @av_bprintf(%struct.TYPE_9__* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %88, %struct.TYPE_8__** %89)
  %91 = load i32*, i32** %14, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %79
  %94 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %16, align 8
  %95 = bitcast %struct.TYPE_8__** %94 to i8*
  %96 = call i32 @get_category(i8* %95)
  %97 = load i32*, i32** %14, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %93, %79
  br label %100

100:                                              ; preds = %99, %75, %63
  br label %101

101:                                              ; preds = %100, %58
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i64 1
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32 (i8*)*, i32 (i8*)** %105, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = call i32 %106(i8* %107)
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @av_bprintf(%struct.TYPE_9__* %103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %108, i8* %109)
  %111 = load i32*, i32** %14, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %101
  %114 = load i8*, i8** %8, align 8
  %115 = call i32 @get_category(i8* %114)
  %116 = load i32*, i32** %14, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %113, %101
  br label %119

119:                                              ; preds = %118, %55, %51
  %120 = load i32*, i32** %13, align 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %119
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @AV_LOG_QUIET, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %123
  %128 = load i32, i32* @flags, align 4
  %129 = load i32, i32* @AV_LOG_PRINT_LEVEL, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i64 2
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @get_level_str(i32 %135)
  %137 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @av_bprintf(%struct.TYPE_9__* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %132, %127, %123, %119
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i64 3
  %141 = load i8*, i8** %10, align 8
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @av_vbprintf(%struct.TYPE_9__* %140, i8* %141, i32 %142)
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i64 0
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %175, label %151

151:                                              ; preds = %138
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i64 1
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %175, label %159

159:                                              ; preds = %151
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i64 2
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %175, label %167

167:                                              ; preds = %159
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i64 3
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %220

175:                                              ; preds = %167, %159, %151, %138
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i64 3
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %205

181:                                              ; preds = %175
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i64 3
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i64 3
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = icmp sle i32 %185, %189
  br i1 %190, label %191, label %205

191:                                              ; preds = %181
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i64 3
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i64 3
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = sub nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %195, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  br label %206

205:                                              ; preds = %181, %175
  br label %206

206:                                              ; preds = %205, %191
  %207 = phi i32 [ %204, %191 ], [ 0, %205 ]
  %208 = trunc i32 %207 to i8
  store i8 %208, i8* %17, align 1
  %209 = load i8, i8* %17, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %210, 10
  br i1 %211, label %216, label %212

212:                                              ; preds = %206
  %213 = load i8, i8* %17, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp eq i32 %214, 13
  br label %216

216:                                              ; preds = %212, %206
  %217 = phi i1 [ true, %206 ], [ %215, %212 ]
  %218 = zext i1 %217 to i32
  %219 = load i32*, i32** %13, align 8
  store i32 %218, i32* %219, align 4
  br label %220

220:                                              ; preds = %216, %167
  ret void
}

declare dso_local i32 @av_bprint_init(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @av_bprintf(%struct.TYPE_9__*, i8*, i32, ...) #1

declare dso_local i32 @get_category(i8*) #1

declare dso_local i32 @get_level_str(i32) #1

declare dso_local i32 @av_vbprintf(%struct.TYPE_9__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
