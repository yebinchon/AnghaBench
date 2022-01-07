; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2enc.c_id3v2_3_metadata_split_date.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2enc.c_id3v2_3_metadata_split_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TYER\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%.2s%.2s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"TDAT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**)* @id3v2_3_metadata_split_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @id3v2_3_metadata_split_date(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [5 x i8], align 1
  %8 = alloca [5 x i8], align 1
  %9 = alloca i32, align 4
  store i32** %0, i32*** %2, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  store i32* null, i32** %4, align 8
  %10 = bitcast [5 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %10, i8 0, i64 5, i1 false)
  %11 = bitcast [5 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %11, i8 0, i64 5, i1 false)
  br label %12

12:                                               ; preds = %206, %1
  %13 = load i32**, i32*** %2, align 8
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %17 = call %struct.TYPE_4__* @av_dict_get(i32* %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %15, i32 %16)
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %3, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %207

19:                                               ; preds = %12
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @av_strcasecmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %200, label %26

26:                                               ; preds = %19
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %6, align 8
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %48, %26
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sge i32 %36, 48
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp sle i32 %44, 57
  br label %46

46:                                               ; preds = %38, %30
  %47 = phi i1 [ false, %30 ], [ %45, %38 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %30

51:                                               ; preds = %46
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %51
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 45
  br i1 %66, label %67, label %195

67:                                               ; preds = %59, %51
  %68 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @av_strlcpy(i8* %68, i8* %69, i32 5)
  %71 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %72 = call i32 @av_dict_set(i32** %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %71, i32 0)
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 45
  br i1 %79, label %80, label %194

80:                                               ; preds = %67
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp sge i32 %87, 48
  br i1 %88, label %89, label %194

89:                                               ; preds = %80
  %90 = load i8*, i8** %6, align 8
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp sle i32 %96, 49
  br i1 %97, label %98, label %194

98:                                               ; preds = %89
  %99 = load i8*, i8** %6, align 8
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp sge i32 %105, 48
  br i1 %106, label %107, label %194

107:                                              ; preds = %98
  %108 = load i8*, i8** %6, align 8
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 2
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp sle i32 %114, 57
  br i1 %115, label %116, label %194

116:                                              ; preds = %107
  %117 = load i8*, i8** %6, align 8
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 3
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 45
  br i1 %124, label %125, label %194

125:                                              ; preds = %116
  %126 = load i8*, i8** %6, align 8
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %126, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp sge i32 %132, 48
  br i1 %133, label %134, label %194

134:                                              ; preds = %125
  %135 = load i8*, i8** %6, align 8
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %135, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp sle i32 %141, 51
  br i1 %142, label %143, label %194

143:                                              ; preds = %134
  %144 = load i8*, i8** %6, align 8
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 5
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp sge i32 %150, 48
  br i1 %151, label %152, label %194

152:                                              ; preds = %143
  %153 = load i8*, i8** %6, align 8
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 5
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %153, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp sle i32 %159, 57
  br i1 %160, label %161, label %194

161:                                              ; preds = %152
  %162 = load i8*, i8** %6, align 8
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, 6
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %162, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %179, label %170

170:                                              ; preds = %161
  %171 = load i8*, i8** %6, align 8
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 6
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %171, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 32
  br i1 %178, label %179, label %194

179:                                              ; preds = %170, %161
  %180 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %181 = load i8*, i8** %6, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = getelementptr inbounds i8, i8* %184, i64 4
  %186 = load i8*, i8** %6, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = getelementptr inbounds i8, i8* %189, i64 1
  %191 = call i32 @snprintf(i8* %180, i32 5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %185, i8* %190)
  %192 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %193 = call i32 @av_dict_set(i32** %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %192, i32 0)
  br label %194

194:                                              ; preds = %179, %170, %152, %143, %134, %125, %116, %107, %98, %89, %80, %67
  br label %199

195:                                              ; preds = %59
  %196 = load i8*, i8** %5, align 8
  %197 = load i8*, i8** %6, align 8
  %198 = call i32 @av_dict_set(i32** %4, i8* %196, i8* %197, i32 0)
  br label %199

199:                                              ; preds = %195, %194
  br label %206

200:                                              ; preds = %19
  %201 = load i8*, i8** %5, align 8
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @av_dict_set(i32** %4, i8* %201, i8* %204, i32 0)
  br label %206

206:                                              ; preds = %200, %199
  br label %12

207:                                              ; preds = %12
  %208 = load i32**, i32*** %2, align 8
  %209 = call i32 @av_dict_free(i32** %208)
  %210 = load i32*, i32** %4, align 8
  %211 = load i32**, i32*** %2, align 8
  store i32* %210, i32** %211, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_4__* @av_dict_get(i32*, i8*, %struct.TYPE_4__*, i32) #2

declare dso_local i32 @av_strcasecmp(i8*, i8*) #2

declare dso_local i32 @av_strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @av_dict_free(i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
