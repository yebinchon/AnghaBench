; ModuleID = '/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KInstPrinter.c_printAddressingMode.c'
source_filename = "/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KInstPrinter.c_printAddressingMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i64, %struct.TYPE_12__, %struct.TYPE_10__, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i8, i8, i8, i8, i8, i64, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@s_reg_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"d%d\00", align 1
@M68K_REG_D0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"a%d\00", align 1
@M68K_REG_A0 = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"(a%d)\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"(a%d)+\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"-(a%d)\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%s$%x(a%d)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"$%x(pc)\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"$%x.w\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"$%x.l\00", align 1
@M68K_SIZE_TYPE_FPU = common dso_local global i32 0, align 4
@M68K_FPU_SIZE_SINGLE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"#%f\00", align 1
@M68K_FPU_SIZE_DOUBLE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"#<unsupported>\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"#$%x\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"$%x(pc,%s%s.%c)\00", align 1
@s_spacing = common dso_local global i8 0, align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"%s$%x(%s,%s%s.%c)\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"$%x\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"pc,%s.%c\00", align 1
@M68K_REG_INVALID = common dso_local global i8 0, align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"a%d,%s\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"%s.%c\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"%s*%s%d)\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"([\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c",%s%s\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c",%s%s.%c\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"%s*%s%d\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c",%s$%x\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"{%d:%d}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_14__*, %struct.TYPE_13__*)* @printAddressingMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printAddressingMode(i32* %0, i32 %1, %struct.TYPE_14__* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %8, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %512 [
    i32 142, label %12
    i32 131, label %35
    i32 132, label %43
    i32 136, label %52
    i32 134, label %61
    i32 133, label %70
    i32 135, label %79
    i32 141, label %102
    i32 149, label %112
    i32 150, label %118
    i32 145, label %124
    i32 140, label %168
    i32 148, label %193
    i32 139, label %229
    i32 147, label %229
    i32 138, label %340
    i32 137, label %340
    i32 143, label %340
    i32 144, label %340
    i32 146, label %502
  ]

12:                                               ; preds = %4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %33 [
    i32 129, label %16
    i32 128, label %20
    i32 130, label %24
  ]

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %19 = call i32 @registerBits(i32* %17, %struct.TYPE_13__* %18)
  br label %34

20:                                               ; preds = %12
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %23 = call i32 @registerPair(i32* %21, %struct.TYPE_13__* %22)
  br label %34

24:                                               ; preds = %12
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** @s_reg_names, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %34

33:                                               ; preds = %12
  br label %34

34:                                               ; preds = %33, %24, %20, %16
  br label %513

35:                                               ; preds = %4
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @M68K_REG_D0, align 8
  %41 = sub i64 %39, %40
  %42 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  br label %513

43:                                               ; preds = %4
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i8, i8* @M68K_REG_A0, align 1
  %49 = sext i8 %48 to i64
  %50 = sub i64 %47, %49
  %51 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  br label %513

52:                                               ; preds = %4
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i8, i8* @M68K_REG_A0, align 1
  %58 = sext i8 %57 to i64
  %59 = sub i64 %56, %58
  %60 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 %59)
  br label %513

61:                                               ; preds = %4
  %62 = load i32*, i32** %5, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i8, i8* @M68K_REG_A0, align 1
  %67 = sext i8 %66 to i64
  %68 = sub i64 %65, %67
  %69 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 %68)
  br label %513

70:                                               ; preds = %4
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i8, i8* @M68K_REG_A0, align 1
  %76 = sext i8 %75 to i64
  %77 = sub i64 %74, %76
  %78 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 %77)
  br label %513

79:                                               ; preds = %4
  %80 = load i32*, i32** %5, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @abs(i32 %91) #3
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i8, i8* %95, align 8
  %97 = sext i8 %96 to i32
  %98 = load i8, i8* @M68K_REG_A0, align 1
  %99 = sext i8 %98 to i32
  %100 = sub nsw i32 %97, %99
  %101 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %87, i32 %92, i32 %100)
  br label %513

102:                                              ; preds = %4
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = add i32 %104, 2
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 9
  %109 = load i32, i32* %108, align 4
  %110 = add i32 %105, %109
  %111 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %110)
  br label %513

112:                                              ; preds = %4
  %113 = load i32*, i32** %5, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %116)
  br label %513

118:                                              ; preds = %4
  %119 = load i32*, i32** %5, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %122)
  br label %513

124:                                              ; preds = %4
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @M68K_SIZE_TYPE_FPU, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %162

131:                                              ; preds = %124
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @M68K_FPU_SIZE_SINGLE, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %131
  %139 = load i32*, i32** %5, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %142)
  br label %161

144:                                              ; preds = %131
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @M68K_FPU_SIZE_DOUBLE, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %144
  %152 = load i32*, i32** %5, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %155)
  br label %160

157:                                              ; preds = %144
  %158 = load i32*, i32** %5, align 8
  %159 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %158, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  br label %160

160:                                              ; preds = %157, %151
  br label %161

161:                                              ; preds = %160, %138
  br label %513

162:                                              ; preds = %124
  %163 = load i32*, i32** %5, align 8
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %166)
  br label %513

168:                                              ; preds = %4
  %169 = load i32*, i32** %5, align 8
  %170 = load i32, i32* %6, align 4
  %171 = add i32 %170, 2
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 9
  %175 = load i32, i32* %174, align 4
  %176 = add i32 %171, %175
  %177 = load i8, i8* @s_spacing, align 1
  %178 = sext i8 %177 to i32
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  %182 = load i8, i8* %181, align 1
  %183 = call signext i8 @getRegName(i8 signext %182)
  %184 = sext i8 %183 to i32
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i32 108, i32 119
  %192 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %169, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 %176, i32 %178, i32 %184, i32 %191)
  br label %513

193:                                              ; preds = %4
  %194 = load i32*, i32** %5, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 9
  %198 = load i32, i32* %197, align 4
  %199 = icmp slt i32 %198, 0
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 9
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @abs(i32 %205) #3
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  %210 = load i8, i8* %209, align 8
  %211 = call signext i8 @getRegName(i8 signext %210)
  %212 = sext i8 %211 to i32
  %213 = load i8, i8* @s_spacing, align 1
  %214 = sext i8 %213 to i32
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 1
  %218 = load i8, i8* %217, align 1
  %219 = call signext i8 @getRegName(i8 signext %218)
  %220 = sext i8 %219 to i32
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 7
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i32 108, i32 119
  %228 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %194, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8* %201, i32 %206, i32 %212, i32 %214, i32 %220, i32 %227)
  br label %513

229:                                              ; preds = %4, %4
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp eq i32 %232, 139
  br i1 %233, label %234, label %244

234:                                              ; preds = %229
  %235 = load i32*, i32** %5, align 8
  %236 = load i32, i32* %6, align 4
  %237 = add i32 %236, 2
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 8
  %241 = load i32, i32* %240, align 8
  %242 = add i32 %237, %241
  %243 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %235, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %242)
  br label %258

244:                                              ; preds = %229
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 8
  %248 = load i32, i32* %247, align 8
  %249 = icmp sgt i32 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %244
  %251 = load i32*, i32** %5, align 8
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 8
  %255 = load i32, i32* %254, align 8
  %256 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %251, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %255)
  br label %257

257:                                              ; preds = %250, %244
  br label %258

258:                                              ; preds = %257, %234
  %259 = load i32*, i32** %5, align 8
  %260 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %259, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp eq i32 %263, 139
  br i1 %264, label %265, label %281

265:                                              ; preds = %258
  %266 = load i32*, i32** %5, align 8
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 1
  %270 = load i8, i8* %269, align 1
  %271 = call signext i8 @getRegName(i8 signext %270)
  %272 = sext i8 %271 to i32
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 7
  %276 = load i32, i32* %275, align 4
  %277 = icmp ne i32 %276, 0
  %278 = zext i1 %277 to i64
  %279 = select i1 %277, i32 108, i32 119
  %280 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %266, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %272, i32 %279)
  br label %319

281:                                              ; preds = %258
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 0
  %285 = load i8, i8* %284, align 8
  %286 = sext i8 %285 to i32
  %287 = load i8, i8* @M68K_REG_INVALID, align 1
  %288 = sext i8 %287 to i32
  %289 = icmp ne i32 %286, %288
  br i1 %289, label %290, label %303

290:                                              ; preds = %281
  %291 = load i32*, i32** %5, align 8
  %292 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 2
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 0
  %295 = load i8, i8* %294, align 8
  %296 = sext i8 %295 to i32
  %297 = load i8, i8* @M68K_REG_A0, align 1
  %298 = sext i8 %297 to i32
  %299 = sub nsw i32 %296, %298
  %300 = load i8, i8* @s_spacing, align 1
  %301 = sext i8 %300 to i32
  %302 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %291, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 %299, i32 %301)
  br label %303

303:                                              ; preds = %290, %281
  %304 = load i32*, i32** %5, align 8
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 1
  %308 = load i8, i8* %307, align 1
  %309 = call signext i8 @getRegName(i8 signext %308)
  %310 = sext i8 %309 to i32
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 7
  %314 = load i32, i32* %313, align 4
  %315 = icmp ne i32 %314, 0
  %316 = zext i1 %315 to i64
  %317 = select i1 %315, i32 108, i32 119
  %318 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %304, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i32 %310, i32 %317)
  br label %319

319:                                              ; preds = %303, %265
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 2
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 6
  %323 = load i32, i32* %322, align 8
  %324 = icmp sgt i32 %323, 0
  br i1 %324, label %325, label %336

325:                                              ; preds = %319
  %326 = load i32*, i32** %5, align 8
  %327 = load i8, i8* @s_spacing, align 1
  %328 = sext i8 %327 to i32
  %329 = load i8, i8* @s_spacing, align 1
  %330 = sext i8 %329 to i32
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 2
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 6
  %334 = load i32, i32* %333, align 8
  %335 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %326, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i32 %328, i32 %330, i32 %334)
  br label %339

336:                                              ; preds = %319
  %337 = load i32*, i32** %5, align 8
  %338 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %337, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  br label %339

339:                                              ; preds = %336, %325
  br label %513

340:                                              ; preds = %4, %4, %4, %4
  %341 = load i32*, i32** %5, align 8
  %342 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %341, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = icmp eq i32 %345, 138
  br i1 %346, label %352, label %347

347:                                              ; preds = %340
  %348 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %349 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = icmp eq i32 %350, 137
  br i1 %351, label %352, label %362

352:                                              ; preds = %347, %340
  %353 = load i32*, i32** %5, align 8
  %354 = load i32, i32* %6, align 4
  %355 = add i32 %354, 2
  %356 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i32 0, i32 2
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 8
  %359 = load i32, i32* %358, align 8
  %360 = add i32 %355, %359
  %361 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %353, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %360)
  br label %376

362:                                              ; preds = %347
  %363 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i32 0, i32 2
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 8
  %366 = load i32, i32* %365, align 8
  %367 = icmp sgt i32 %366, 0
  br i1 %367, label %368, label %375

368:                                              ; preds = %362
  %369 = load i32*, i32** %5, align 8
  %370 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %371 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %370, i32 0, i32 2
  %372 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i32 0, i32 8
  %373 = load i32, i32* %372, align 8
  %374 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %369, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %373)
  br label %375

375:                                              ; preds = %368, %362
  br label %376

376:                                              ; preds = %375, %352
  %377 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %378 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %377, i32 0, i32 2
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %378, i32 0, i32 0
  %380 = load i8, i8* %379, align 8
  %381 = sext i8 %380 to i32
  %382 = load i8, i8* @M68K_REG_INVALID, align 1
  %383 = sext i8 %382 to i32
  %384 = icmp ne i32 %381, %383
  br i1 %384, label %385, label %412

385:                                              ; preds = %376
  %386 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %387 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %386, i32 0, i32 2
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %387, i32 0, i32 8
  %389 = load i32, i32* %388, align 8
  %390 = icmp sgt i32 %389, 0
  br i1 %390, label %391, label %402

391:                                              ; preds = %385
  %392 = load i32*, i32** %5, align 8
  %393 = load i8, i8* @s_spacing, align 1
  %394 = sext i8 %393 to i32
  %395 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %396 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %395, i32 0, i32 2
  %397 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %396, i32 0, i32 0
  %398 = load i8, i8* %397, align 8
  %399 = call signext i8 @getRegName(i8 signext %398)
  %400 = sext i8 %399 to i32
  %401 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %392, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i32 %394, i32 %400)
  br label %411

402:                                              ; preds = %385
  %403 = load i32*, i32** %5, align 8
  %404 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %405 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %404, i32 0, i32 2
  %406 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %405, i32 0, i32 0
  %407 = load i8, i8* %406, align 8
  %408 = call signext i8 @getRegName(i8 signext %407)
  %409 = sext i8 %408 to i32
  %410 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %403, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %409)
  br label %411

411:                                              ; preds = %402, %391
  br label %412

412:                                              ; preds = %411, %376
  %413 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %414 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = icmp eq i32 %415, 144
  br i1 %416, label %422, label %417

417:                                              ; preds = %412
  %418 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %419 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = icmp eq i32 %420, 138
  br i1 %421, label %422, label %425

422:                                              ; preds = %417, %412
  %423 = load i32*, i32** %5, align 8
  %424 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %423, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  br label %425

425:                                              ; preds = %422, %417
  %426 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %427 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %426, i32 0, i32 2
  %428 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %427, i32 0, i32 1
  %429 = load i8, i8* %428, align 1
  %430 = sext i8 %429 to i32
  %431 = load i8, i8* @M68K_REG_INVALID, align 1
  %432 = sext i8 %431 to i32
  %433 = icmp ne i32 %430, %432
  br i1 %433, label %434, label %452

434:                                              ; preds = %425
  %435 = load i32*, i32** %5, align 8
  %436 = load i8, i8* @s_spacing, align 1
  %437 = sext i8 %436 to i32
  %438 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %439 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %438, i32 0, i32 2
  %440 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %439, i32 0, i32 1
  %441 = load i8, i8* %440, align 1
  %442 = call signext i8 @getRegName(i8 signext %441)
  %443 = sext i8 %442 to i32
  %444 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %445 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %444, i32 0, i32 2
  %446 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %445, i32 0, i32 7
  %447 = load i32, i32* %446, align 4
  %448 = icmp ne i32 %447, 0
  %449 = zext i1 %448 to i64
  %450 = select i1 %448, i32 108, i32 119
  %451 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %435, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i32 %437, i32 %443, i32 %450)
  br label %452

452:                                              ; preds = %434, %425
  %453 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %454 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %453, i32 0, i32 2
  %455 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %454, i32 0, i32 6
  %456 = load i32, i32* %455, align 8
  %457 = icmp sgt i32 %456, 0
  br i1 %457, label %458, label %469

458:                                              ; preds = %452
  %459 = load i32*, i32** %5, align 8
  %460 = load i8, i8* @s_spacing, align 1
  %461 = sext i8 %460 to i32
  %462 = load i8, i8* @s_spacing, align 1
  %463 = sext i8 %462 to i32
  %464 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %465 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %464, i32 0, i32 2
  %466 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %465, i32 0, i32 6
  %467 = load i32, i32* %466, align 8
  %468 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %459, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i32 %461, i32 %463, i32 %467)
  br label %469

469:                                              ; preds = %458, %452
  %470 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %471 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = icmp eq i32 %472, 143
  br i1 %473, label %479, label %474

474:                                              ; preds = %469
  %475 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %476 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = icmp eq i32 %477, 137
  br i1 %478, label %479, label %482

479:                                              ; preds = %474, %469
  %480 = load i32*, i32** %5, align 8
  %481 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %480, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  br label %482

482:                                              ; preds = %479, %474
  %483 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %484 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %483, i32 0, i32 2
  %485 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %484, i32 0, i32 2
  %486 = load i8, i8* %485, align 2
  %487 = sext i8 %486 to i32
  %488 = icmp sgt i32 %487, 0
  br i1 %488, label %489, label %499

489:                                              ; preds = %482
  %490 = load i32*, i32** %5, align 8
  %491 = load i8, i8* @s_spacing, align 1
  %492 = sext i8 %491 to i32
  %493 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %494 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %493, i32 0, i32 2
  %495 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %494, i32 0, i32 2
  %496 = load i8, i8* %495, align 2
  %497 = sext i8 %496 to i32
  %498 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %490, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i32 %492, i32 %497)
  br label %499

499:                                              ; preds = %489, %482
  %500 = load i32*, i32** %5, align 8
  %501 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %500, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  br label %513

502:                                              ; preds = %4
  %503 = load i32*, i32** %5, align 8
  %504 = load i32, i32* %6, align 4
  %505 = add i32 %504, 2
  %506 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %507 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %506, i32 0, i32 3
  %508 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = add i32 %505, %509
  %511 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %503, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %510)
  br label %512

512:                                              ; preds = %4, %502
  br label %513

513:                                              ; preds = %512, %499, %339, %193, %168, %162, %161, %118, %112, %102, %79, %70, %61, %52, %43, %35, %34
  %514 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %515 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %514, i32 0, i32 2
  %516 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %515, i32 0, i32 5
  %517 = load i64, i64* %516, align 8
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %519, label %532

519:                                              ; preds = %513
  %520 = load i32*, i32** %5, align 8
  %521 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %522 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %521, i32 0, i32 2
  %523 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %522, i32 0, i32 3
  %524 = load i8, i8* %523, align 1
  %525 = sext i8 %524 to i32
  %526 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %527 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %526, i32 0, i32 2
  %528 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %527, i32 0, i32 4
  %529 = load i8, i8* %528, align 4
  %530 = sext i8 %529 to i32
  %531 = call i32 (i32*, i8*, ...) @SStream_concat(i32* %520, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), i32 %525, i32 %530)
  br label %532

532:                                              ; preds = %519, %513
  ret void
}

declare dso_local i32 @registerBits(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @registerPair(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @SStream_concat(i32*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local signext i8 @getRegName(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
