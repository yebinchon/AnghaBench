; ModuleID = '/home/carl/AnghaBench/8cc/extr_debug.c_do_node2s.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_debug.c_do_node2s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8, i8*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32, %struct.TYPE_10__*, %struct.TYPE_11__*, i32, %struct.TYPE_10__*, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32, %struct.TYPE_10__*, i32, %struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_11__* }

@.str = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"'\0A'\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"'\\\\'\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"'\\0'\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"'%c'\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%ldL\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%lldL\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"lv=%s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"gv=%s\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"(%s)%s(\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"(funcdesg %s)\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"goto(%s)\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"(decl %s %s\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"%s@%d\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"(conv %s=>%s)\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"(if %s %s\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"(? %s %s %s)\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"(return %s)\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"deref\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"pre++\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"pre--\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"post++\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"post--\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"%=\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"&=\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"|=\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"^=\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"<<=\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c">>=\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"((%s)=>(%s) %s)\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"&&%s\00", align 1
@OP_EQ = common dso_local global i32 0, align 4
@.str.62 = private unnamed_addr constant [5 x i8] c"(== \00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"(%c \00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"%s %s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_10__*)* @do_node2s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_node2s(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = icmp ne %struct.TYPE_10__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 (i32*, i8*, ...) @buf_printf(i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %535

16:                                               ; preds = %2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %507 [
    i32 165, label %20
    i32 166, label %100
    i32 164, label %106
    i32 169, label %127
    i32 173, label %133
    i32 171, label %133
    i32 172, label %181
    i32 174, label %187
    i32 170, label %234
    i32 176, label %240
    i32 167, label %269
    i32 177, label %283
    i32 168, label %294
    i32 161, label %319
    i32 163, label %334
    i32 178, label %341
    i32 162, label %366
    i32 179, label %380
    i32 175, label %384
    i32 130, label %388
    i32 129, label %392
    i32 128, label %392
    i32 140, label %396
    i32 138, label %400
    i32 135, label %404
    i32 131, label %408
    i32 132, label %412
    i32 133, label %416
    i32 134, label %420
    i32 137, label %424
    i32 136, label %428
    i32 152, label %432
    i32 143, label %436
    i32 148, label %440
    i32 150, label %444
    i32 149, label %448
    i32 151, label %452
    i32 147, label %456
    i32 142, label %460
    i32 146, label %464
    i32 145, label %468
    i32 144, label %468
    i32 33, label %472
    i32 38, label %476
    i32 124, label %480
    i32 141, label %484
    i32 139, label %501
  ]

20:                                               ; preds = %16
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 7
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %97 [
    i32 159, label %26
    i32 156, label %63
    i32 153, label %70
    i32 154, label %77
    i32 157, label %84
    i32 158, label %84
    i32 155, label %84
    i32 160, label %90
  ]

26:                                               ; preds = %20
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i8, i8* %28, align 4
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 (i32*, i8*, ...) @buf_printf(i32* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %62

35:                                               ; preds = %26
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i8, i8* %37, align 4
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 92
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 (i32*, i8*, ...) @buf_printf(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %61

44:                                               ; preds = %35
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i8, i8* %46, align 4
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 (i32*, i8*, ...) @buf_printf(i32* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %60

53:                                               ; preds = %44
  %54 = load i32*, i32** %3, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i8, i8* %56, align 4
  %58 = sext i8 %57 to i32
  %59 = call i32 (i32*, i8*, ...) @buf_printf(i32* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %53, %50
  br label %61

61:                                               ; preds = %60, %41
  br label %62

62:                                               ; preds = %61, %32
  br label %99

63:                                               ; preds = %20
  %64 = load i32*, i32** %3, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i8, i8* %66, align 4
  %68 = sext i8 %67 to i32
  %69 = call i32 (i32*, i8*, ...) @buf_printf(i32* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  br label %99

70:                                               ; preds = %20
  %71 = load i32*, i32** %3, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i8, i8* %73, align 4
  %75 = sext i8 %74 to i32
  %76 = call i32 (i32*, i8*, ...) @buf_printf(i32* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %75)
  br label %99

77:                                               ; preds = %20
  %78 = load i32*, i32** %3, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i8, i8* %80, align 4
  %82 = sext i8 %81 to i32
  %83 = call i32 (i32*, i8*, ...) @buf_printf(i32* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %82)
  br label %99

84:                                               ; preds = %20, %20, %20
  %85 = load i32*, i32** %3, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 26
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32*, i8*, ...) @buf_printf(i32* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %88)
  br label %99

90:                                               ; preds = %20
  %91 = load i32*, i32** %3, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 25
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @quote_cstring(i32 %94)
  %96 = call i32 (i32*, i8*, ...) @buf_printf(i32* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %95)
  br label %99

97:                                               ; preds = %20
  %98 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %90, %84, %77, %70, %63, %62
  br label %535

100:                                              ; preds = %16
  %101 = load i32*, i32** %3, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i32*, i8*, ...) @buf_printf(i32* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %104)
  br label %535

106:                                              ; preds = %16
  %107 = load i32*, i32** %3, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 23
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i32*, i8*, ...) @buf_printf(i32* %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %110)
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 24
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %106
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 (i32*, i8*, ...) @buf_printf(i32* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %119 = load i32*, i32** %3, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 24
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @a2s_declinit(i32* %119, i32 %122)
  %124 = load i32*, i32** %3, align 8
  %125 = call i32 (i32*, i8*, ...) @buf_printf(i32* %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %126

126:                                              ; preds = %116, %106
  br label %535

127:                                              ; preds = %16
  %128 = load i32*, i32** %3, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 23
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (i32*, i8*, ...) @buf_printf(i32* %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %131)
  br label %535

133:                                              ; preds = %16, %16
  %134 = load i32*, i32** %3, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 7
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = call i8* @ty2s(%struct.TYPE_11__* %137)
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %141, 173
  br i1 %142, label %143, label %147

143:                                              ; preds = %133
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  br label %150

147:                                              ; preds = %133
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %149 = call i8* @node2s(%struct.TYPE_10__* %148)
  br label %150

150:                                              ; preds = %147, %143
  %151 = phi i8* [ %146, %143 ], [ %149, %147 ]
  %152 = call i32 (i32*, i8*, ...) @buf_printf(i32* %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* %138, i8* %151)
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %175, %150
  %154 = load i32, i32* %5, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 22
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @vec_len(i32 %157)
  %159 = icmp slt i32 %154, %158
  br i1 %159, label %160, label %178

160:                                              ; preds = %153
  %161 = load i32, i32* %5, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i32*, i32** %3, align 8
  %165 = call i32 (i32*, i8*, ...) @buf_printf(i32* %164, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %166

166:                                              ; preds = %163, %160
  %167 = load i32*, i32** %3, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 22
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %5, align 4
  %172 = call %struct.TYPE_10__* @vec_get(i32 %170, i32 %171)
  %173 = call i8* @node2s(%struct.TYPE_10__* %172)
  %174 = call i32 (i32*, i8*, ...) @buf_printf(i32* %167, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %173)
  br label %175

175:                                              ; preds = %166
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %5, align 4
  br label %153

178:                                              ; preds = %153
  %179 = load i32*, i32** %3, align 8
  %180 = call i32 (i32*, i8*, ...) @buf_printf(i32* %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %535

181:                                              ; preds = %16
  %182 = load i32*, i32** %3, align 8
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 2
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 (i32*, i8*, ...) @buf_printf(i32* %182, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* %185)
  br label %535

187:                                              ; preds = %16
  %188 = load i32*, i32** %3, align 8
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 7
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %190, align 8
  %192 = call i8* @ty2s(%struct.TYPE_11__* %191)
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 2
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 (i32*, i8*, ...) @buf_printf(i32* %188, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* %192, i8* %195)
  store i32 0, i32* %6, align 4
  br label %197

197:                                              ; preds = %224, %187
  %198 = load i32, i32* %6, align 4
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 21
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @vec_len(i32 %201)
  %203 = icmp slt i32 %198, %202
  br i1 %203, label %204, label %227

204:                                              ; preds = %197
  %205 = load i32, i32* %6, align 4
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load i32*, i32** %3, align 8
  %209 = call i32 (i32*, i8*, ...) @buf_printf(i32* %208, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %210

210:                                              ; preds = %207, %204
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 21
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %6, align 4
  %215 = call %struct.TYPE_10__* @vec_get(i32 %213, i32 %214)
  store %struct.TYPE_10__* %215, %struct.TYPE_10__** %7, align 8
  %216 = load i32*, i32** %3, align 8
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 7
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %218, align 8
  %220 = call i8* @ty2s(%struct.TYPE_11__* %219)
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %222 = call i8* @node2s(%struct.TYPE_10__* %221)
  %223 = call i32 (i32*, i8*, ...) @buf_printf(i32* %216, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* %220, i8* %222)
  br label %224

224:                                              ; preds = %210
  %225 = load i32, i32* %6, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %6, align 4
  br label %197

227:                                              ; preds = %197
  %228 = load i32*, i32** %3, align 8
  %229 = call i32 (i32*, i8*, ...) @buf_printf(i32* %228, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %230 = load i32*, i32** %3, align 8
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 20
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %232, align 8
  call void @do_node2s(i32* %230, %struct.TYPE_10__* %233)
  br label %535

234:                                              ; preds = %16
  %235 = load i32*, i32** %3, align 8
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 8
  %239 = call i32 (i32*, i8*, ...) @buf_printf(i32* %235, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 %238)
  br label %535

240:                                              ; preds = %16
  %241 = load i32*, i32** %3, align 8
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 19
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %245, align 8
  %247 = call i8* @ty2s(%struct.TYPE_11__* %246)
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 19
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 (i32*, i8*, ...) @buf_printf(i32* %241, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* %247, i8* %252)
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 18
  %256 = load i32, i32* %255, align 8
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %266

258:                                              ; preds = %240
  %259 = load i32*, i32** %3, align 8
  %260 = call i32 (i32*, i8*, ...) @buf_printf(i32* %259, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  %261 = load i32*, i32** %3, align 8
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 18
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @a2s_declinit(i32* %261, i32 %264)
  br label %266

266:                                              ; preds = %258, %240
  %267 = load i32*, i32** %3, align 8
  %268 = call i32 (i32*, i8*, ...) @buf_printf(i32* %267, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %535

269:                                              ; preds = %16
  %270 = load i32*, i32** %3, align 8
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 17
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %272, align 8
  %274 = call i8* @node2s(%struct.TYPE_10__* %273)
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 16
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 15
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %279, align 8
  %281 = call i8* @ty2s(%struct.TYPE_11__* %280)
  %282 = call i32 (i32*, i8*, ...) @buf_printf(i32* %270, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i8* %274, i32 %277, i8* %281)
  br label %535

283:                                              ; preds = %16
  %284 = load i32*, i32** %3, align 8
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 6
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %286, align 8
  %288 = call i8* @node2s(%struct.TYPE_10__* %287)
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 7
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %290, align 8
  %292 = call i8* @ty2s(%struct.TYPE_11__* %291)
  %293 = call i32 (i32*, i8*, ...) @buf_printf(i32* %284, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8* %288, i8* %292)
  br label %535

294:                                              ; preds = %16
  %295 = load i32*, i32** %3, align 8
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 14
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %297, align 8
  %299 = call i8* @node2s(%struct.TYPE_10__* %298)
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 13
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %301, align 8
  %303 = call i8* @node2s(%struct.TYPE_10__* %302)
  %304 = call i32 (i32*, i8*, ...) @buf_printf(i32* %295, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i8* %299, i8* %303)
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 12
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %306, align 8
  %308 = icmp ne %struct.TYPE_10__* %307, null
  br i1 %308, label %309, label %316

309:                                              ; preds = %294
  %310 = load i32*, i32** %3, align 8
  %311 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 12
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** %312, align 8
  %314 = call i8* @node2s(%struct.TYPE_10__* %313)
  %315 = call i32 (i32*, i8*, ...) @buf_printf(i32* %310, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i8* %314)
  br label %316

316:                                              ; preds = %309, %294
  %317 = load i32*, i32** %3, align 8
  %318 = call i32 (i32*, i8*, ...) @buf_printf(i32* %317, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %535

319:                                              ; preds = %16
  %320 = load i32*, i32** %3, align 8
  %321 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 14
  %323 = load %struct.TYPE_10__*, %struct.TYPE_10__** %322, align 8
  %324 = call i8* @node2s(%struct.TYPE_10__* %323)
  %325 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 13
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %326, align 8
  %328 = call i8* @node2s(%struct.TYPE_10__* %327)
  %329 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 12
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** %330, align 8
  %332 = call i8* @node2s(%struct.TYPE_10__* %331)
  %333 = call i32 (i32*, i8*, ...) @buf_printf(i32* %320, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i8* %324, i8* %328, i8* %332)
  br label %535

334:                                              ; preds = %16
  %335 = load i32*, i32** %3, align 8
  %336 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 11
  %338 = load %struct.TYPE_10__*, %struct.TYPE_10__** %337, align 8
  %339 = call i8* @node2s(%struct.TYPE_10__* %338)
  %340 = call i32 (i32*, i8*, ...) @buf_printf(i32* %335, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* %339)
  br label %535

341:                                              ; preds = %16
  %342 = load i32*, i32** %3, align 8
  %343 = call i32 (i32*, i8*, ...) @buf_printf(i32* %342, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %344

344:                                              ; preds = %360, %341
  %345 = load i32, i32* %8, align 4
  %346 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 10
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @vec_len(i32 %348)
  %350 = icmp slt i32 %345, %349
  br i1 %350, label %351, label %363

351:                                              ; preds = %344
  %352 = load i32*, i32** %3, align 8
  %353 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 10
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* %8, align 4
  %357 = call %struct.TYPE_10__* @vec_get(i32 %355, i32 %356)
  call void @do_node2s(i32* %352, %struct.TYPE_10__* %357)
  %358 = load i32*, i32** %3, align 8
  %359 = call i32 (i32*, i8*, ...) @buf_printf(i32* %358, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  br label %360

360:                                              ; preds = %351
  %361 = load i32, i32* %8, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %8, align 4
  br label %344

363:                                              ; preds = %344
  %364 = load i32*, i32** %3, align 8
  %365 = call i32 (i32*, i8*, ...) @buf_printf(i32* %364, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0))
  br label %535

366:                                              ; preds = %16
  %367 = load i32*, i32** %3, align 8
  %368 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %368, i32 0, i32 9
  %370 = load %struct.TYPE_10__*, %struct.TYPE_10__** %369, align 8
  call void @do_node2s(i32* %367, %struct.TYPE_10__* %370)
  %371 = load i32*, i32** %3, align 8
  %372 = call i32 (i32*, i8*, ...) @buf_printf(i32* %371, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  %373 = load i32*, i32** %3, align 8
  %374 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i32 0, i32 8
  %376 = load i32, i32* %375, align 8
  %377 = sext i32 %376 to i64
  %378 = inttoptr i64 %377 to i8*
  %379 = call i32 (i32*, i8*, ...) @buf_printf(i32* %373, i8* %378)
  br label %535

380:                                              ; preds = %16
  %381 = load i32*, i32** %3, align 8
  %382 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %383 = call i32 @uop_to_string(i32* %381, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), %struct.TYPE_10__* %382)
  br label %535

384:                                              ; preds = %16
  %385 = load i32*, i32** %3, align 8
  %386 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %387 = call i32 @uop_to_string(i32* %385, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), %struct.TYPE_10__* %386)
  br label %535

388:                                              ; preds = %16
  %389 = load i32*, i32** %3, align 8
  %390 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %391 = call i32 @binop_to_string(i32* %389, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), %struct.TYPE_10__* %390)
  br label %535

392:                                              ; preds = %16, %16
  %393 = load i32*, i32** %3, align 8
  %394 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %395 = call i32 @binop_to_string(i32* %393, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), %struct.TYPE_10__* %394)
  br label %535

396:                                              ; preds = %16
  %397 = load i32*, i32** %3, align 8
  %398 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %399 = call i32 @binop_to_string(i32* %397, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), %struct.TYPE_10__* %398)
  br label %535

400:                                              ; preds = %16
  %401 = load i32*, i32** %3, align 8
  %402 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %403 = call i32 @binop_to_string(i32* %401, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0), %struct.TYPE_10__* %402)
  br label %535

404:                                              ; preds = %16
  %405 = load i32*, i32** %3, align 8
  %406 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %407 = call i32 @binop_to_string(i32* %405, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), %struct.TYPE_10__* %406)
  br label %535

408:                                              ; preds = %16
  %409 = load i32*, i32** %3, align 8
  %410 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %411 = call i32 @uop_to_string(i32* %409, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), %struct.TYPE_10__* %410)
  br label %535

412:                                              ; preds = %16
  %413 = load i32*, i32** %3, align 8
  %414 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %415 = call i32 @uop_to_string(i32* %413, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), %struct.TYPE_10__* %414)
  br label %535

416:                                              ; preds = %16
  %417 = load i32*, i32** %3, align 8
  %418 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %419 = call i32 @uop_to_string(i32* %417, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), %struct.TYPE_10__* %418)
  br label %535

420:                                              ; preds = %16
  %421 = load i32*, i32** %3, align 8
  %422 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %423 = call i32 @uop_to_string(i32* %421, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), %struct.TYPE_10__* %422)
  br label %535

424:                                              ; preds = %16
  %425 = load i32*, i32** %3, align 8
  %426 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %427 = call i32 @binop_to_string(i32* %425, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), %struct.TYPE_10__* %426)
  br label %535

428:                                              ; preds = %16
  %429 = load i32*, i32** %3, align 8
  %430 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %431 = call i32 @binop_to_string(i32* %429, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct.TYPE_10__* %430)
  br label %535

432:                                              ; preds = %16
  %433 = load i32*, i32** %3, align 8
  %434 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %435 = call i32 @binop_to_string(i32* %433, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), %struct.TYPE_10__* %434)
  br label %535

436:                                              ; preds = %16
  %437 = load i32*, i32** %3, align 8
  %438 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %439 = call i32 @binop_to_string(i32* %437, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i64 0, i64 0), %struct.TYPE_10__* %438)
  br label %535

440:                                              ; preds = %16
  %441 = load i32*, i32** %3, align 8
  %442 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %443 = call i32 @binop_to_string(i32* %441, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0), %struct.TYPE_10__* %442)
  br label %535

444:                                              ; preds = %16
  %445 = load i32*, i32** %3, align 8
  %446 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %447 = call i32 @binop_to_string(i32* %445, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0), %struct.TYPE_10__* %446)
  br label %535

448:                                              ; preds = %16
  %449 = load i32*, i32** %3, align 8
  %450 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %451 = call i32 @binop_to_string(i32* %449, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), %struct.TYPE_10__* %450)
  br label %535

452:                                              ; preds = %16
  %453 = load i32*, i32** %3, align 8
  %454 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %455 = call i32 @binop_to_string(i32* %453, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0), %struct.TYPE_10__* %454)
  br label %535

456:                                              ; preds = %16
  %457 = load i32*, i32** %3, align 8
  %458 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %459 = call i32 @binop_to_string(i32* %457, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0), %struct.TYPE_10__* %458)
  br label %535

460:                                              ; preds = %16
  %461 = load i32*, i32** %3, align 8
  %462 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %463 = call i32 @binop_to_string(i32* %461, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), %struct.TYPE_10__* %462)
  br label %535

464:                                              ; preds = %16
  %465 = load i32*, i32** %3, align 8
  %466 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %467 = call i32 @binop_to_string(i32* %465, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), %struct.TYPE_10__* %466)
  br label %535

468:                                              ; preds = %16, %16
  %469 = load i32*, i32** %3, align 8
  %470 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %471 = call i32 @binop_to_string(i32* %469, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0), %struct.TYPE_10__* %470)
  br label %535

472:                                              ; preds = %16
  %473 = load i32*, i32** %3, align 8
  %474 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %475 = call i32 @uop_to_string(i32* %473, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), %struct.TYPE_10__* %474)
  br label %535

476:                                              ; preds = %16
  %477 = load i32*, i32** %3, align 8
  %478 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %479 = call i32 @binop_to_string(i32* %477, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), %struct.TYPE_10__* %478)
  br label %535

480:                                              ; preds = %16
  %481 = load i32*, i32** %3, align 8
  %482 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %483 = call i32 @binop_to_string(i32* %481, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), %struct.TYPE_10__* %482)
  br label %535

484:                                              ; preds = %16
  %485 = load i32*, i32** %3, align 8
  %486 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %487 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %486, i32 0, i32 6
  %488 = load %struct.TYPE_10__*, %struct.TYPE_10__** %487, align 8
  %489 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %488, i32 0, i32 7
  %490 = load %struct.TYPE_11__*, %struct.TYPE_11__** %489, align 8
  %491 = call i8* @ty2s(%struct.TYPE_11__* %490)
  %492 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %493 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %492, i32 0, i32 7
  %494 = load %struct.TYPE_11__*, %struct.TYPE_11__** %493, align 8
  %495 = call i8* @ty2s(%struct.TYPE_11__* %494)
  %496 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %497 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %496, i32 0, i32 6
  %498 = load %struct.TYPE_10__*, %struct.TYPE_10__** %497, align 8
  %499 = call i8* @node2s(%struct.TYPE_10__* %498)
  %500 = call i32 (i32*, i8*, ...) @buf_printf(i32* %485, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0), i8* %491, i8* %495, i8* %499)
  br label %535

501:                                              ; preds = %16
  %502 = load i32*, i32** %3, align 8
  %503 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %504 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %503, i32 0, i32 5
  %505 = load i32, i32* %504, align 8
  %506 = call i32 (i32*, i8*, ...) @buf_printf(i32* %502, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0), i32 %505)
  br label %535

507:                                              ; preds = %16
  %508 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %509 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %508, i32 0, i32 4
  %510 = load %struct.TYPE_10__*, %struct.TYPE_10__** %509, align 8
  %511 = call i8* @node2s(%struct.TYPE_10__* %510)
  store i8* %511, i8** %9, align 8
  %512 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %513 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %512, i32 0, i32 3
  %514 = load %struct.TYPE_10__*, %struct.TYPE_10__** %513, align 8
  %515 = call i8* @node2s(%struct.TYPE_10__* %514)
  store i8* %515, i8** %10, align 8
  %516 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %517 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 8
  %519 = load i32, i32* @OP_EQ, align 4
  %520 = icmp eq i32 %518, %519
  br i1 %520, label %521, label %524

521:                                              ; preds = %507
  %522 = load i32*, i32** %3, align 8
  %523 = call i32 (i32*, i8*, ...) @buf_printf(i32* %522, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0))
  br label %530

524:                                              ; preds = %507
  %525 = load i32*, i32** %3, align 8
  %526 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %527 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 8
  %529 = call i32 (i32*, i8*, ...) @buf_printf(i32* %525, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i32 %528)
  br label %530

530:                                              ; preds = %524, %521
  %531 = load i32*, i32** %3, align 8
  %532 = load i8*, i8** %9, align 8
  %533 = load i8*, i8** %10, align 8
  %534 = call i32 (i32*, i8*, ...) @buf_printf(i32* %531, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i64 0, i64 0), i8* %532, i8* %533)
  br label %535

535:                                              ; preds = %13, %530, %501, %484, %480, %476, %472, %468, %464, %460, %456, %452, %448, %444, %440, %436, %432, %428, %424, %420, %416, %412, %408, %404, %400, %396, %392, %388, %384, %380, %366, %363, %334, %319, %316, %283, %269, %266, %234, %227, %181, %178, %127, %126, %100, %99
  ret void
}

declare dso_local i32 @buf_printf(i32*, i8*, ...) #1

declare dso_local i32 @quote_cstring(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @a2s_declinit(i32*, i32) #1

declare dso_local i8* @ty2s(%struct.TYPE_11__*) #1

declare dso_local i8* @node2s(%struct.TYPE_10__*) #1

declare dso_local i32 @vec_len(i32) #1

declare dso_local %struct.TYPE_10__* @vec_get(i32, i32) #1

declare dso_local i32 @uop_to_string(i32*, i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @binop_to_string(i32*, i8*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
