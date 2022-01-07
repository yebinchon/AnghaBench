; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/lburg/extr_lburg.c_emitcase.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/lburg/extr_lburg.c_emitcase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i8*, %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"%1case %d: /* %S */\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%2%Plabel(LEFT_CHILD(a));\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%2%Plabel(RIGHT_CHILD(a));\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\09\09\00\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%2/* %R */\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%2c = %s;\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"%2if (%1/* %R */\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"LEFT_CHILD(a)\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%2) {\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"\09\09\09\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"%sc = \00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%s;\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%2}\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" && \00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"RIGHT_CHILD(a)\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"%2break;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @emitcase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emitcase(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %9, %struct.TYPE_9__* %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %21 [
    i32 0, label %15
    i32 -1, label %15
    i32 1, label %16
    i32 2, label %18
  ]

15:                                               ; preds = %2, %2
  br label %23

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %23

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %23

21:                                               ; preds = %2
  %22 = call i32 @assert(i32 0)
  br label %23

23:                                               ; preds = %21, %18, %16, %15
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %5, align 8
  br label %27

27:                                               ; preds = %202, %23
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = icmp ne %struct.TYPE_10__* %28, null
  br i1 %29, label %30, label %206

30:                                               ; preds = %27
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %199 [
    i32 0, label %34
    i32 -1, label %34
    i32 1, label %55
    i32 2, label %134
  ]

34:                                               ; preds = %30, %30
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_10__* %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = call i32 @emitrecord(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_10__* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 0)
  br label %54

48:                                               ; preds = %34
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @emitrecord(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_10__* %49, i8* %52, i32 0)
  br label %54

54:                                               ; preds = %48, %41
  br label %201

55:                                               ; preds = %30
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_10__* %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = call i32 @emittest(%struct.TYPE_11__* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %71 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %6, align 8
  br label %75

72:                                               ; preds = %55
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_10__* %73)
  br label %75

75:                                               ; preds = %72, %62
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %111

82:                                               ; preds = %75
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = icmp ne %struct.TYPE_11__* %87, null
  br i1 %88, label %89, label %111

89:                                               ; preds = %82
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = icmp eq %struct.TYPE_11__* %94, null
  br i1 %95, label %96, label %111

96:                                               ; preds = %89
  %97 = load i8*, i8** %6, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @emitrecalc(i8* %97, i32 %102, i32 %109)
  br label %111

111:                                              ; preds = %96, %89, %82, %75
  %112 = load i8*, i8** %6, align 8
  %113 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* %112)
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = call i32 @emitcost(%struct.TYPE_11__* %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %122)
  %124 = load i8*, i8** %6, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %126 = call i32 @emitrecord(i8* %124, %struct.TYPE_10__* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %127 = load i8*, i8** %6, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 2
  %129 = load i8, i8* %128, align 1
  %130 = icmp ne i8 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %111
  %132 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %111
  br label %201

134:                                              ; preds = %30
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp sgt i32 %139, 1
  br i1 %140, label %141, label %167

141:                                              ; preds = %134
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_10__* %142)
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)
  %159 = call i32 @emittest(%struct.TYPE_11__* %148, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %158)
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  %165 = call i32 @emittest(%struct.TYPE_11__* %164, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %166 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %6, align 8
  br label %170

167:                                              ; preds = %134
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %169 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_10__* %168)
  br label %170

170:                                              ; preds = %167, %141
  %171 = load i8*, i8** %6, align 8
  %172 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* %171)
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = call i32 @emitcost(%struct.TYPE_11__* %177, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %182, align 8
  %184 = call i32 @emitcost(%struct.TYPE_11__* %183, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %187)
  %189 = load i8*, i8** %6, align 8
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %191 = call i32 @emitrecord(i8* %189, %struct.TYPE_10__* %190, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %192 = load i8*, i8** %6, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 2
  %194 = load i8, i8* %193, align 1
  %195 = icmp ne i8 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %170
  %197 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  br label %198

198:                                              ; preds = %196, %170
  br label %201

199:                                              ; preds = %30
  %200 = call i32 @assert(i32 0)
  br label %201

201:                                              ; preds = %199, %198, %133, %54
  br label %202

202:                                              ; preds = %201
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 3
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %204, align 8
  store %struct.TYPE_10__* %205, %struct.TYPE_10__** %5, align 8
  br label %27

206:                                              ; preds = %27
  %207 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  ret void
}

declare dso_local i32 @print(i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @emitrecord(i8*, %struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @emittest(%struct.TYPE_11__*, i8*, i8*) #1

declare dso_local i32 @emitrecalc(i8*, i32, i32) #1

declare dso_local i32 @emitcost(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
