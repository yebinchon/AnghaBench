; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ass_split.c_ff_ass_split_override_codes.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ass_split.c_ff_ass_split_override_codes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i8*)*, i32 (i8*, i8*, i32)*, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32, i32, i32, i32, i32)*, i32 (i8*, i8*)*, i32 (i8*, i32)*, i32 (i8*, i32)*, i32 (i8*, i8*)*, i32 (i8*, i32, i8)*, i32 (i8*, i32, i8)*, i32 (i8*, i8, i32)*, i32 (i8*, i32)* }

@.str = private unnamed_addr constant [8 x i8] c"\\%1[nN]\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"{\\\00", align 1
@__const.ff_ass_split_override_codes.c_num = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"\\%1[bisu]%1[01\\}]%n\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"\\c%1[\\}]%n\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"\\c&H%X&%1[\\}]%n\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"\\%1[1234]c%1[\\}]%n\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"\\%1[1234]c&H%X&%1[\\}]%n\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"\\alpha%1[\\}]%n\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"\\alpha&H%2X&%1[\\}]%n\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"\\%1[1234]a%1[\\}]%n\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"\\%1[1234]a&H%2X&%1[\\}]%n\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"\\fn%1[\\}]%n\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"\\fn%127[^\\}]%1[\\}]%n\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"\\fs%1[\\}]%n\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"\\fs%u%1[\\}]%n\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"\\a%1[\\}]%n\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"\\a%2u%1[\\}]%n\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"\\an%1[\\}]%n\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"\\an%1u%1[\\}]%n\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"\\r%1[\\}]%n\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"\\r%127[^\\}]%1[\\}]%n\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"\\move(%d,%d,%d,%d)%1[\\}]%n\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"\\move(%d,%d,%d,%d,%d,%d)%1[\\}]%n\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"\\pos(%d,%d)%1[\\}]%n\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"\\org(%d,%d)%1[\\}]%n\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"\\}\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_ass_split_override_codes(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [2 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca [2 x i8], align 1
  %12 = alloca [2 x i8], align 1
  %13 = alloca [2 x i8], align 1
  %14 = alloca [2 x i8], align 1
  %15 = alloca [128 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %467, %3
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %31, %28
  %37 = phi i1 [ false, %28 ], [ %35, %31 ]
  br i1 %37, label %38, label %468

38:                                               ; preds = %36
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %63

41:                                               ; preds = %38
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %43, align 8
  %45 = icmp ne i32 (i8*, i8*, i32)* %44, null
  br i1 %45, label %46, label %63

46:                                               ; preds = %41
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %49 = call i32 (i8*, i8*, ...) @sscanf(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %48)
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @strncmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51, %46
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %57, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 %58(i8* %59, i8* %60, i32 %61)
  store i8* null, i8** %8, align 8
  br label %63

63:                                               ; preds = %55, %51, %41, %38
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %66 = call i32 (i8*, i8*, ...) @sscanf(i8* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %65)
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %87

68:                                               ; preds = %63
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 11
  %71 = load i32 (i8*, i32)*, i32 (i8*, i32)** %70, align 8
  %72 = icmp ne i32 (i8*, i32)* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 11
  %76 = load i32 (i8*, i32)*, i32 (i8*, i32)** %75, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 78
  %82 = zext i1 %81 to i32
  %83 = call i32 %76(i8* %77, i32 %82)
  br label %84

84:                                               ; preds = %73, %68
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 2
  store i8* %86, i8** %7, align 8
  br label %467

87:                                               ; preds = %63
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @strncmp(i8* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %455, label %91

91:                                               ; preds = %87
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %7, align 8
  br label %94

94:                                               ; preds = %440, %91
  %95 = load i8*, i8** %7, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 92
  br i1 %98, label %99, label %446

99:                                               ; preds = %94
  %100 = bitcast [2 x i8]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %100, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.ff_ass_split_override_codes.c_num, i32 0, i32 0), i64 2, i1 false)
  %101 = bitcast [128 x i8]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %101, i8 0, i64 128, i1 false)
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  store i32 -1, i32* %20, align 4
  store i32 -1, i32* %25, align 4
  store i32 -1, i32* %26, align 4
  %102 = load i8*, i8** %7, align 8
  %103 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %104 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %105 = call i32 (i8*, i8*, ...) @sscanf(i8* %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %103, i8* %104, i32* %17)
  %106 = icmp sgt i32 %105, 1
  br i1 %106, label %107, label %141

107:                                              ; preds = %99
  %108 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 48
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %120

113:                                              ; preds = %107
  %114 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 49
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 0, i32 -1
  br label %120

120:                                              ; preds = %113, %112
  %121 = phi i32 [ 1, %112 ], [ %119, %113 ]
  store i32 %121, i32* %27, align 4
  %122 = load i32, i32* %27, align 4
  %123 = icmp ne i32 %122, -1
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %17, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %17, align 4
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 10
  %129 = load i32 (i8*, i8, i32)*, i32 (i8*, i8, i32)** %128, align 8
  %130 = icmp ne i32 (i8*, i8, i32)* %129, null
  br i1 %130, label %131, label %140

131:                                              ; preds = %120
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 10
  %134 = load i32 (i8*, i8, i32)*, i32 (i8*, i8, i32)** %133, align 8
  %135 = load i8*, i8** %6, align 8
  %136 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %137 = load i8, i8* %136, align 1
  %138 = load i32, i32* %27, align 4
  %139 = call i32 %134(i8* %135, i8 signext %137, i32 %138)
  br label %140

140:                                              ; preds = %131, %120
  br label %440

141:                                              ; preds = %99
  %142 = load i8*, i8** %7, align 8
  %143 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %144 = call i32 (i8*, i8*, ...) @sscanf(i8* %142, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %143, i32* %17)
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %163, label %146

146:                                              ; preds = %141
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %149 = call i32 (i8*, i8*, ...) @sscanf(i8* %147, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %16, i8* %148, i32* %17)
  %150 = icmp sgt i32 %149, 1
  br i1 %150, label %163, label %151

151:                                              ; preds = %146
  %152 = load i8*, i8** %7, align 8
  %153 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  %154 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %155 = call i32 (i8*, i8*, ...) @sscanf(i8* %152, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %153, i8* %154, i32* %17)
  %156 = icmp sgt i32 %155, 1
  br i1 %156, label %163, label %157

157:                                              ; preds = %151
  %158 = load i8*, i8** %7, align 8
  %159 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  %160 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %161 = call i32 (i8*, i8*, ...) @sscanf(i8* %158, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %159, i32* %16, i8* %160, i32* %17)
  %162 = icmp sgt i32 %161, 2
  br i1 %162, label %163, label %181

163:                                              ; preds = %157, %151, %146, %141
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 9
  %166 = load i32 (i8*, i32, i8)*, i32 (i8*, i32, i8)** %165, align 8
  %167 = icmp ne i32 (i8*, i32, i8)* %166, null
  br i1 %167, label %168, label %180

168:                                              ; preds = %163
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 9
  %171 = load i32 (i8*, i32, i8)*, i32 (i8*, i32, i8)** %170, align 8
  %172 = load i8*, i8** %6, align 8
  %173 = load i32, i32* %16, align 4
  %174 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = sub nsw i32 %176, 48
  %178 = trunc i32 %177 to i8
  %179 = call i32 %171(i8* %172, i32 %173, i8 signext %178)
  br label %180

180:                                              ; preds = %168, %163
  br label %439

181:                                              ; preds = %157
  %182 = load i8*, i8** %7, align 8
  %183 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %184 = call i32 (i8*, i8*, ...) @sscanf(i8* %182, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %183, i32* %17)
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %203, label %186

186:                                              ; preds = %181
  %187 = load i8*, i8** %7, align 8
  %188 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %189 = call i32 (i8*, i8*, ...) @sscanf(i8* %187, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32* %20, i8* %188, i32* %17)
  %190 = icmp sgt i32 %189, 1
  br i1 %190, label %203, label %191

191:                                              ; preds = %186
  %192 = load i8*, i8** %7, align 8
  %193 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  %194 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %195 = call i32 (i8*, i8*, ...) @sscanf(i8* %192, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %193, i8* %194, i32* %17)
  %196 = icmp sgt i32 %195, 1
  br i1 %196, label %203, label %197

197:                                              ; preds = %191
  %198 = load i8*, i8** %7, align 8
  %199 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  %200 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %201 = call i32 (i8*, i8*, ...) @sscanf(i8* %198, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* %199, i32* %20, i8* %200, i32* %17)
  %202 = icmp sgt i32 %201, 2
  br i1 %202, label %203, label %221

203:                                              ; preds = %197, %191, %186, %181
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 8
  %206 = load i32 (i8*, i32, i8)*, i32 (i8*, i32, i8)** %205, align 8
  %207 = icmp ne i32 (i8*, i32, i8)* %206, null
  br i1 %207, label %208, label %220

208:                                              ; preds = %203
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 8
  %211 = load i32 (i8*, i32, i8)*, i32 (i8*, i32, i8)** %210, align 8
  %212 = load i8*, i8** %6, align 8
  %213 = load i32, i32* %20, align 4
  %214 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = sub nsw i32 %216, 48
  %218 = trunc i32 %217 to i8
  %219 = call i32 %211(i8* %212, i32 %213, i8 signext %218)
  br label %220

220:                                              ; preds = %208, %203
  br label %438

221:                                              ; preds = %197
  %222 = load i8*, i8** %7, align 8
  %223 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %224 = call i32 (i8*, i8*, ...) @sscanf(i8* %222, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* %223, i32* %17)
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %232, label %226

226:                                              ; preds = %221
  %227 = load i8*, i8** %7, align 8
  %228 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %229 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %230 = call i32 (i8*, i8*, ...) @sscanf(i8* %227, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %228, i8* %229, i32* %17)
  %231 = icmp sgt i32 %230, 1
  br i1 %231, label %232, label %253

232:                                              ; preds = %226, %221
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 7
  %235 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %234, align 8
  %236 = icmp ne i32 (i8*, i8*)* %235, null
  br i1 %236, label %237, label %252

237:                                              ; preds = %232
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 7
  %240 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %239, align 8
  %241 = load i8*, i8** %6, align 8
  %242 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %243 = load i8, i8* %242, align 16
  %244 = sext i8 %243 to i32
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %237
  %247 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  br label %249

248:                                              ; preds = %237
  br label %249

249:                                              ; preds = %248, %246
  %250 = phi i8* [ %247, %246 ], [ null, %248 ]
  %251 = call i32 %240(i8* %241, i8* %250)
  br label %252

252:                                              ; preds = %249, %232
  br label %437

253:                                              ; preds = %226
  %254 = load i8*, i8** %7, align 8
  %255 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %256 = call i32 (i8*, i8*, ...) @sscanf(i8* %254, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8* %255, i32* %17)
  %257 = icmp sgt i32 %256, 0
  br i1 %257, label %263, label %258

258:                                              ; preds = %253
  %259 = load i8*, i8** %7, align 8
  %260 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %261 = call i32 (i8*, i8*, ...) @sscanf(i8* %259, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32* %18, i8* %260, i32* %17)
  %262 = icmp sgt i32 %261, 1
  br i1 %262, label %263, label %276

263:                                              ; preds = %258, %253
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 6
  %266 = load i32 (i8*, i32)*, i32 (i8*, i32)** %265, align 8
  %267 = icmp ne i32 (i8*, i32)* %266, null
  br i1 %267, label %268, label %275

268:                                              ; preds = %263
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 6
  %271 = load i32 (i8*, i32)*, i32 (i8*, i32)** %270, align 8
  %272 = load i8*, i8** %6, align 8
  %273 = load i32, i32* %18, align 4
  %274 = call i32 %271(i8* %272, i32 %273)
  br label %275

275:                                              ; preds = %268, %263
  br label %436

276:                                              ; preds = %258
  %277 = load i8*, i8** %7, align 8
  %278 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %279 = call i32 (i8*, i8*, ...) @sscanf(i8* %277, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* %278, i32* %17)
  %280 = icmp sgt i32 %279, 0
  br i1 %280, label %296, label %281

281:                                              ; preds = %276
  %282 = load i8*, i8** %7, align 8
  %283 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %284 = call i32 (i8*, i8*, ...) @sscanf(i8* %282, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32* %19, i8* %283, i32* %17)
  %285 = icmp sgt i32 %284, 1
  br i1 %285, label %296, label %286

286:                                              ; preds = %281
  %287 = load i8*, i8** %7, align 8
  %288 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %289 = call i32 (i8*, i8*, ...) @sscanf(i8* %287, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8* %288, i32* %17)
  %290 = icmp sgt i32 %289, 0
  br i1 %290, label %296, label %291

291:                                              ; preds = %286
  %292 = load i8*, i8** %7, align 8
  %293 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %294 = call i32 (i8*, i8*, ...) @sscanf(i8* %292, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32* %19, i8* %293, i32* %17)
  %295 = icmp sgt i32 %294, 1
  br i1 %295, label %296, label %334

296:                                              ; preds = %291, %286, %281, %276
  %297 = load i32, i32* %19, align 4
  %298 = icmp ne i32 %297, -1
  br i1 %298, label %299, label %321

299:                                              ; preds = %296
  %300 = load i8*, i8** %7, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 2
  %302 = load i8, i8* %301, align 1
  %303 = sext i8 %302 to i32
  %304 = icmp ne i32 %303, 110
  br i1 %304, label %305, label %321

305:                                              ; preds = %299
  %306 = load i32, i32* %19, align 4
  %307 = and i32 %306, 3
  %308 = load i32, i32* %19, align 4
  %309 = and i32 %308, 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %305
  br label %318

312:                                              ; preds = %305
  %313 = load i32, i32* %19, align 4
  %314 = and i32 %313, 8
  %315 = icmp ne i32 %314, 0
  %316 = zext i1 %315 to i64
  %317 = select i1 %315, i32 3, i32 0
  br label %318

318:                                              ; preds = %312, %311
  %319 = phi i32 [ 6, %311 ], [ %317, %312 ]
  %320 = add nsw i32 %307, %319
  store i32 %320, i32* %19, align 4
  br label %321

321:                                              ; preds = %318, %299, %296
  %322 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %322, i32 0, i32 5
  %324 = load i32 (i8*, i32)*, i32 (i8*, i32)** %323, align 8
  %325 = icmp ne i32 (i8*, i32)* %324, null
  br i1 %325, label %326, label %333

326:                                              ; preds = %321
  %327 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %327, i32 0, i32 5
  %329 = load i32 (i8*, i32)*, i32 (i8*, i32)** %328, align 8
  %330 = load i8*, i8** %6, align 8
  %331 = load i32, i32* %19, align 4
  %332 = call i32 %329(i8* %330, i32 %331)
  br label %333

333:                                              ; preds = %326, %321
  br label %435

334:                                              ; preds = %291
  %335 = load i8*, i8** %7, align 8
  %336 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %337 = call i32 (i8*, i8*, ...) @sscanf(i8* %335, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8* %336, i32* %17)
  %338 = icmp sgt i32 %337, 0
  br i1 %338, label %345, label %339

339:                                              ; preds = %334
  %340 = load i8*, i8** %7, align 8
  %341 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %342 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %343 = call i32 (i8*, i8*, ...) @sscanf(i8* %340, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i8* %341, i8* %342, i32* %17)
  %344 = icmp sgt i32 %343, 1
  br i1 %344, label %345, label %358

345:                                              ; preds = %339, %334
  %346 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i32 0, i32 4
  %348 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %347, align 8
  %349 = icmp ne i32 (i8*, i8*)* %348, null
  br i1 %349, label %350, label %357

350:                                              ; preds = %345
  %351 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i32 0, i32 4
  %353 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %352, align 8
  %354 = load i8*, i8** %6, align 8
  %355 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %356 = call i32 %353(i8* %354, i8* %355)
  br label %357

357:                                              ; preds = %350, %345
  br label %434

358:                                              ; preds = %339
  %359 = load i8*, i8** %7, align 8
  %360 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %361 = call i32 (i8*, i8*, ...) @sscanf(i8* %359, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0), i32* %21, i32* %22, i32* %23, i32* %24, i8* %360, i32* %17)
  %362 = icmp sgt i32 %361, 4
  br i1 %362, label %368, label %363

363:                                              ; preds = %358
  %364 = load i8*, i8** %7, align 8
  %365 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %366 = call i32 (i8*, i8*, ...) @sscanf(i8* %364, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i32* %21, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i8* %365, i32* %17)
  %367 = icmp sgt i32 %366, 6
  br i1 %367, label %368, label %386

368:                                              ; preds = %363, %358
  %369 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %369, i32 0, i32 3
  %371 = load i32 (i8*, i32, i32, i32, i32, i32, i32)*, i32 (i8*, i32, i32, i32, i32, i32, i32)** %370, align 8
  %372 = icmp ne i32 (i8*, i32, i32, i32, i32, i32, i32)* %371, null
  br i1 %372, label %373, label %385

373:                                              ; preds = %368
  %374 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %375 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %374, i32 0, i32 3
  %376 = load i32 (i8*, i32, i32, i32, i32, i32, i32)*, i32 (i8*, i32, i32, i32, i32, i32, i32)** %375, align 8
  %377 = load i8*, i8** %6, align 8
  %378 = load i32, i32* %21, align 4
  %379 = load i32, i32* %22, align 4
  %380 = load i32, i32* %23, align 4
  %381 = load i32, i32* %24, align 4
  %382 = load i32, i32* %25, align 4
  %383 = load i32, i32* %26, align 4
  %384 = call i32 %376(i8* %377, i32 %378, i32 %379, i32 %380, i32 %381, i32 %382, i32 %383)
  br label %385

385:                                              ; preds = %373, %368
  br label %433

386:                                              ; preds = %363
  %387 = load i8*, i8** %7, align 8
  %388 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %389 = call i32 (i8*, i8*, ...) @sscanf(i8* %387, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32* %21, i32* %22, i8* %388, i32* %17)
  %390 = icmp sgt i32 %389, 2
  br i1 %390, label %391, label %407

391:                                              ; preds = %386
  %392 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %392, i32 0, i32 3
  %394 = load i32 (i8*, i32, i32, i32, i32, i32, i32)*, i32 (i8*, i32, i32, i32, i32, i32, i32)** %393, align 8
  %395 = icmp ne i32 (i8*, i32, i32, i32, i32, i32, i32)* %394, null
  br i1 %395, label %396, label %406

396:                                              ; preds = %391
  %397 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %398 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %397, i32 0, i32 3
  %399 = load i32 (i8*, i32, i32, i32, i32, i32, i32)*, i32 (i8*, i32, i32, i32, i32, i32, i32)** %398, align 8
  %400 = load i8*, i8** %6, align 8
  %401 = load i32, i32* %21, align 4
  %402 = load i32, i32* %22, align 4
  %403 = load i32, i32* %21, align 4
  %404 = load i32, i32* %22, align 4
  %405 = call i32 %399(i8* %400, i32 %401, i32 %402, i32 %403, i32 %404, i32 -1, i32 -1)
  br label %406

406:                                              ; preds = %396, %391
  br label %432

407:                                              ; preds = %386
  %408 = load i8*, i8** %7, align 8
  %409 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %410 = call i32 (i8*, i8*, ...) @sscanf(i8* %408, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i32* %21, i32* %22, i8* %409, i32* %17)
  %411 = icmp sgt i32 %410, 2
  br i1 %411, label %412, label %426

412:                                              ; preds = %407
  %413 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %414 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %413, i32 0, i32 2
  %415 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %414, align 8
  %416 = icmp ne i32 (i8*, i32, i32)* %415, null
  br i1 %416, label %417, label %425

417:                                              ; preds = %412
  %418 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %418, i32 0, i32 2
  %420 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %419, align 8
  %421 = load i8*, i8** %6, align 8
  %422 = load i32, i32* %21, align 4
  %423 = load i32, i32* %22, align 4
  %424 = call i32 %420(i8* %421, i32 %422, i32 %423)
  br label %425

425:                                              ; preds = %417, %412
  br label %431

426:                                              ; preds = %407
  %427 = load i8*, i8** %7, align 8
  %428 = getelementptr inbounds i8, i8* %427, i64 1
  %429 = call i32 @strcspn(i8* %428, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  %430 = add nsw i32 %429, 2
  store i32 %430, i32* %17, align 4
  br label %431

431:                                              ; preds = %426, %425
  br label %432

432:                                              ; preds = %431, %406
  br label %433

433:                                              ; preds = %432, %385
  br label %434

434:                                              ; preds = %433, %357
  br label %435

435:                                              ; preds = %434, %333
  br label %436

436:                                              ; preds = %435, %275
  br label %437

437:                                              ; preds = %436, %252
  br label %438

438:                                              ; preds = %437, %220
  br label %439

439:                                              ; preds = %438, %180
  br label %440

440:                                              ; preds = %439, %140
  %441 = load i32, i32* %17, align 4
  %442 = sub nsw i32 %441, 1
  %443 = load i8*, i8** %7, align 8
  %444 = sext i32 %442 to i64
  %445 = getelementptr inbounds i8, i8* %443, i64 %444
  store i8* %445, i8** %7, align 8
  br label %94

446:                                              ; preds = %94
  %447 = load i8*, i8** %7, align 8
  %448 = getelementptr inbounds i8, i8* %447, i32 1
  store i8* %448, i8** %7, align 8
  %449 = load i8, i8* %447, align 1
  %450 = sext i8 %449 to i32
  %451 = icmp ne i32 %450, 125
  br i1 %451, label %452, label %454

452:                                              ; preds = %446
  %453 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %453, i32* %4, align 4
  br label %496

454:                                              ; preds = %446
  br label %466

455:                                              ; preds = %87
  %456 = load i8*, i8** %8, align 8
  %457 = icmp ne i8* %456, null
  br i1 %457, label %460, label %458

458:                                              ; preds = %455
  %459 = load i8*, i8** %7, align 8
  store i8* %459, i8** %8, align 8
  store i32 1, i32* %10, align 4
  br label %463

460:                                              ; preds = %455
  %461 = load i32, i32* %10, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %10, align 4
  br label %463

463:                                              ; preds = %460, %458
  %464 = load i8*, i8** %7, align 8
  %465 = getelementptr inbounds i8, i8* %464, i32 1
  store i8* %465, i8** %7, align 8
  br label %466

466:                                              ; preds = %463, %454
  br label %467

467:                                              ; preds = %466, %84
  br label %28

468:                                              ; preds = %36
  %469 = load i8*, i8** %8, align 8
  %470 = icmp ne i8* %469, null
  br i1 %470, label %471, label %484

471:                                              ; preds = %468
  %472 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %473 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %472, i32 0, i32 1
  %474 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %473, align 8
  %475 = icmp ne i32 (i8*, i8*, i32)* %474, null
  br i1 %475, label %476, label %484

476:                                              ; preds = %471
  %477 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %478 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %477, i32 0, i32 1
  %479 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %478, align 8
  %480 = load i8*, i8** %6, align 8
  %481 = load i8*, i8** %8, align 8
  %482 = load i32, i32* %10, align 4
  %483 = call i32 %479(i8* %480, i8* %481, i32 %482)
  br label %484

484:                                              ; preds = %476, %471, %468
  %485 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %486 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %485, i32 0, i32 0
  %487 = load i32 (i8*)*, i32 (i8*)** %486, align 8
  %488 = icmp ne i32 (i8*)* %487, null
  br i1 %488, label %489, label %495

489:                                              ; preds = %484
  %490 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %491 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %490, i32 0, i32 0
  %492 = load i32 (i8*)*, i32 (i8*)** %491, align 8
  %493 = load i8*, i8** %6, align 8
  %494 = call i32 %492(i8* %493)
  br label %495

495:                                              ; preds = %489, %484
  store i32 0, i32* %4, align 4
  br label %496

496:                                              ; preds = %495, %452
  %497 = load i32, i32* %4, align 4
  ret i32 %497
}

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @strcspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
