; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_joycfg.c_setupkeyset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_joycfg.c_setupkeyset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@keysets = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [9 x i8] c"Fire: %s\00", align 1
@keynames = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Down+left: %s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Down: %s\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Down+right: %s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Left: %s\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Right: %s\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Up+left: %s\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Up: %s\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Up+right: %s\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Change settings:\00", align 1
@BACKGROUND = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Clear all\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Accept changes\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Discard changes\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"up+left\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"up+right\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"down+left\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"down+right\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"fire\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setupkeyset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [9 x i32], align 16
  %7 = alloca [80 x i8], align 16
  %8 = alloca [80 x i8], align 16
  %9 = alloca [80 x i8], align 16
  %10 = alloca [80 x i8], align 16
  %11 = alloca [80 x i8], align 16
  %12 = alloca [80 x i8], align 16
  %13 = alloca [80 x i8], align 16
  %14 = alloca [80 x i8], align 16
  %15 = alloca [80 x i8], align 16
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %32, %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 9
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load i32**, i32*** @keysets, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 %30
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %16

35:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %211, %35
  %37 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  %38 = load i8**, i8*** @keynames, align 8
  %39 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %40 = load i32, i32* %39, align 16
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %38, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %46 = load i8**, i8*** @keynames, align 8
  %47 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %46, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  %53 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %54 = load i8**, i8*** @keynames, align 8
  %55 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 2
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %54, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @sprintf(i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  %61 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %62 = load i8**, i8*** @keynames, align 8
  %63 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %62, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @sprintf(i8* %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %67)
  %69 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %70 = load i8**, i8*** @keynames, align 8
  %71 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 4
  %72 = load i32, i32* %71, align 16
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %70, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @sprintf(i8* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %75)
  %77 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %78 = load i8**, i8*** @keynames, align 8
  %79 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 5
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %78, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @sprintf(i8* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %83)
  %85 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %86 = load i8**, i8*** @keynames, align 8
  %87 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 6
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %86, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @sprintf(i8* %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %91)
  %93 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %94 = load i8**, i8*** @keynames, align 8
  %95 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 7
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %94, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @sprintf(i8* %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %99)
  %101 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %102 = load i8**, i8*** @keynames, align 8
  %103 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 8
  %104 = load i32, i32* %103, align 16
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %102, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @sprintf(i8* %101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %107)
  %109 = load i32, i32* @BACKGROUND, align 4
  %110 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %111 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %112 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %113 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %114 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %115 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %116 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %117 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %118 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  %119 = call i32 @SelectItem(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32* %3, i32 %109, i8* %110, i8* %111, i8* %112, i8* %113, i8* %114, i8* %115, i8* %116, i8* %117, i8* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32* null)
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp eq i32 %120, 13
  br i1 %121, label %122, label %198

122:                                              ; preds = %36
  %123 = load i32, i32* %3, align 4
  switch i32 %123, label %197 [
    i32 0, label %124
    i32 1, label %131
    i32 2, label %138
    i32 3, label %145
    i32 4, label %152
    i32 5, label %159
    i32 6, label %166
    i32 7, label %173
    i32 8, label %180
    i32 10, label %185
  ]

124:                                              ; preds = %122
  %125 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 6
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @choosekey(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %126)
  %128 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 6
  store i32 %127, i32* %128, align 8
  %129 = load i32, i32* %3, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %3, align 4
  br label %197

131:                                              ; preds = %122
  %132 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 7
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @choosekey(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 %133)
  %135 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 7
  store i32 %134, i32* %135, align 4
  %136 = load i32, i32* %3, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %3, align 4
  br label %197

138:                                              ; preds = %122
  %139 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 8
  %140 = load i32, i32* %139, align 16
  %141 = call i32 @choosekey(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %140)
  %142 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 8
  store i32 %141, i32* %142, align 16
  %143 = load i32, i32* %3, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %3, align 4
  br label %197

145:                                              ; preds = %122
  %146 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 4
  %147 = load i32, i32* %146, align 16
  %148 = call i32 @choosekey(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 %147)
  %149 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 4
  store i32 %148, i32* %149, align 16
  %150 = load i32, i32* %3, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %3, align 4
  br label %197

152:                                              ; preds = %122
  %153 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 5
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @choosekey(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 %154)
  %156 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 5
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* %3, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %3, align 4
  br label %197

159:                                              ; preds = %122
  %160 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @choosekey(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32 %161)
  %163 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 1
  store i32 %162, i32* %163, align 4
  %164 = load i32, i32* %3, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %3, align 4
  br label %197

166:                                              ; preds = %122
  %167 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 2
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @choosekey(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 %168)
  %170 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 2
  store i32 %169, i32* %170, align 8
  %171 = load i32, i32* %3, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %3, align 4
  br label %197

173:                                              ; preds = %122
  %174 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 3
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @choosekey(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32 %175)
  %177 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 3
  store i32 %176, i32* %177, align 4
  %178 = load i32, i32* %3, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %3, align 4
  br label %197

180:                                              ; preds = %122
  %181 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %182 = load i32, i32* %181, align 16
  %183 = call i32 @choosekey(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i32 %182)
  %184 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  store i32 %183, i32* %184, align 16
  br label %197

185:                                              ; preds = %122
  store i32 0, i32* %5, align 4
  br label %186

186:                                              ; preds = %193, %185
  %187 = load i32, i32* %5, align 4
  %188 = icmp slt i32 %187, 9
  br i1 %188, label %189, label %196

189:                                              ; preds = %186
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 %191
  store i32 255, i32* %192, align 4
  br label %193

193:                                              ; preds = %189
  %194 = load i32, i32* %5, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %5, align 4
  br label %186

196:                                              ; preds = %186
  br label %197

197:                                              ; preds = %122, %196, %180, %173, %166, %159, %152, %145, %138, %131, %124
  br label %198

198:                                              ; preds = %197, %36
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %4, align 4
  %201 = icmp ne i32 %200, 27
  br i1 %201, label %202, label %211

202:                                              ; preds = %199
  %203 = load i32, i32* %4, align 4
  %204 = icmp eq i32 %203, 13
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load i32, i32* %3, align 4
  %207 = icmp sgt i32 %206, 11
  br label %208

208:                                              ; preds = %205, %202
  %209 = phi i1 [ false, %202 ], [ %207, %205 ]
  %210 = xor i1 %209, true
  br label %211

211:                                              ; preds = %208, %199
  %212 = phi i1 [ false, %199 ], [ %210, %208 ]
  br i1 %212, label %36, label %213

213:                                              ; preds = %211
  %214 = load i32, i32* %4, align 4
  %215 = icmp eq i32 %214, 13
  br i1 %215, label %216, label %240

216:                                              ; preds = %213
  %217 = load i32, i32* %3, align 4
  %218 = icmp eq i32 %217, 12
  br i1 %218, label %219, label %240

219:                                              ; preds = %216
  store i32 0, i32* %5, align 4
  br label %220

220:                                              ; preds = %236, %219
  %221 = load i32, i32* %5, align 4
  %222 = icmp slt i32 %221, 9
  br i1 %222, label %223, label %239

223:                                              ; preds = %220
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = load i32**, i32*** @keysets, align 8
  %229 = load i32, i32* %2, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32*, i32** %228, i64 %230
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %5, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  store i32 %227, i32* %235, align 4
  br label %236

236:                                              ; preds = %223
  %237 = load i32, i32* %5, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %5, align 4
  br label %220

239:                                              ; preds = %220
  br label %240

240:                                              ; preds = %239, %216, %213
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @SelectItem(i8*, i32*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @choosekey(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
