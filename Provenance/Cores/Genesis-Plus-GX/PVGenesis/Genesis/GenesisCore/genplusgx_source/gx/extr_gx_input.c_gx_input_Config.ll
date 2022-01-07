; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_input.c_gx_input_Config.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_input.c_gx_input_Config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@KEY_BUTTONB = common dso_local global i64 0, align 8
@KEY_START = common dso_local global i64 0, align 8
@keyname = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"Button 1\00", align 1
@KEY_BUTTONC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"Button 2\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"PAUSE Button\00", align 1
@KEY_BUTTONA = common dso_local global i64 0, align 8
@KEY_MODE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"Button A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Button B\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Button C\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"START Button\00", align 1
@KEY_BUTTONX = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"Button D\00", align 1
@KEY_BUTTONY = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"Button E1\00", align 1
@KEY_BUTTONZ = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"Button E2\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"SELECT Button\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Middle Button\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Left Button\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Right Button\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Button X\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Button Y\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"Button Z\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"MODE Button\00", align 1
@input = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SYSTEM_MENACER = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"TRIGGER Button\00", align 1
@SYSTEM_JUSTIFIER = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [4 x i8] c"N.A\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"PEN Button\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"RED Button\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"Info\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Activator is not configurable !\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gx_input_Config(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %276 [
    i32 132, label %10
    i32 135, label %10
    i32 130, label %10
    i32 128, label %30
    i32 136, label %75
    i32 134, label %100
    i32 133, label %125
    i32 137, label %170
    i32 131, label %251
    i32 129, label %266
  ]

10:                                               ; preds = %3, %3, %3
  %11 = load i64, i64* @KEY_BUTTONB, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %7, align 4
  %13 = load i64, i64* @KEY_START, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = load i32*, i32** @keyname, align 8
  %16 = load i64, i64* @KEY_BUTTONB, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sprintf(i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** @keyname, align 8
  %21 = load i64, i64* @KEY_BUTTONC, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sprintf(i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32*, i32** @keyname, align 8
  %26 = load i64, i64* @KEY_START, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sprintf(i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %287

30:                                               ; preds = %3
  %31 = load i64, i64* @KEY_BUTTONA, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load i64, i64* @KEY_MODE, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i32*, i32** @keyname, align 8
  %36 = load i64, i64* @KEY_BUTTONA, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sprintf(i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32*, i32** @keyname, align 8
  %41 = load i64, i64* @KEY_BUTTONB, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @sprintf(i32 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %45 = load i32*, i32** @keyname, align 8
  %46 = load i64, i64* @KEY_BUTTONC, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @sprintf(i32 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %50 = load i32*, i32** @keyname, align 8
  %51 = load i64, i64* @KEY_START, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sprintf(i32 %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %55 = load i32*, i32** @keyname, align 8
  %56 = load i64, i64* @KEY_BUTTONX, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @sprintf(i32 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %60 = load i32*, i32** @keyname, align 8
  %61 = load i64, i64* @KEY_BUTTONY, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @sprintf(i32 %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %65 = load i32*, i32** @keyname, align 8
  %66 = load i64, i64* @KEY_BUTTONZ, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @sprintf(i32 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %70 = load i32*, i32** @keyname, align 8
  %71 = load i64, i64* @KEY_MODE, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @sprintf(i32 %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %287

75:                                               ; preds = %3
  %76 = load i64, i64* @KEY_BUTTONA, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %7, align 4
  %78 = load i64, i64* @KEY_START, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %8, align 4
  %80 = load i32*, i32** @keyname, align 8
  %81 = load i64, i64* @KEY_BUTTONA, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @sprintf(i32 %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %85 = load i32*, i32** @keyname, align 8
  %86 = load i64, i64* @KEY_BUTTONB, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @sprintf(i32 %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %90 = load i32*, i32** @keyname, align 8
  %91 = load i64, i64* @KEY_BUTTONC, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @sprintf(i32 %93, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %95 = load i32*, i32** @keyname, align 8
  %96 = load i64, i64* @KEY_START, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @sprintf(i32 %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %287

100:                                              ; preds = %3
  %101 = load i64, i64* @KEY_BUTTONA, align 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %7, align 4
  %103 = load i64, i64* @KEY_START, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %8, align 4
  %105 = load i32*, i32** @keyname, align 8
  %106 = load i64, i64* @KEY_BUTTONA, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @sprintf(i32 %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %110 = load i32*, i32** @keyname, align 8
  %111 = load i64, i64* @KEY_BUTTONB, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @sprintf(i32 %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %115 = load i32*, i32** @keyname, align 8
  %116 = load i64, i64* @KEY_BUTTONC, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @sprintf(i32 %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %120 = load i32*, i32** @keyname, align 8
  %121 = load i64, i64* @KEY_START, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @sprintf(i32 %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %287

125:                                              ; preds = %3
  %126 = load i64, i64* @KEY_BUTTONA, align 8
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %7, align 4
  %128 = load i64, i64* @KEY_MODE, align 8
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %8, align 4
  %130 = load i32*, i32** @keyname, align 8
  %131 = load i64, i64* @KEY_BUTTONA, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @sprintf(i32 %133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %135 = load i32*, i32** @keyname, align 8
  %136 = load i64, i64* @KEY_BUTTONB, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @sprintf(i32 %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %140 = load i32*, i32** @keyname, align 8
  %141 = load i64, i64* @KEY_BUTTONC, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @sprintf(i32 %143, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %145 = load i32*, i32** @keyname, align 8
  %146 = load i64, i64* @KEY_START, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @sprintf(i32 %148, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %150 = load i32*, i32** @keyname, align 8
  %151 = load i64, i64* @KEY_BUTTONX, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @sprintf(i32 %153, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %155 = load i32*, i32** @keyname, align 8
  %156 = load i64, i64* @KEY_BUTTONY, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @sprintf(i32 %158, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %160 = load i32*, i32** @keyname, align 8
  %161 = load i64, i64* @KEY_BUTTONZ, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @sprintf(i32 %163, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %165 = load i32*, i32** @keyname, align 8
  %166 = load i64, i64* @KEY_MODE, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @sprintf(i32 %168, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  br label %287

170:                                              ; preds = %3
  %171 = load i64, i64* @KEY_BUTTONA, align 8
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %7, align 4
  %173 = load i64, i64* @KEY_START, align 8
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %8, align 4
  %175 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @input, i32 0, i32 0), align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @SYSTEM_MENACER, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %201

180:                                              ; preds = %170
  %181 = load i32*, i32** @keyname, align 8
  %182 = load i64, i64* @KEY_BUTTONA, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @sprintf(i32 %184, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %186 = load i32*, i32** @keyname, align 8
  %187 = load i64, i64* @KEY_BUTTONB, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @sprintf(i32 %189, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %191 = load i32*, i32** @keyname, align 8
  %192 = load i64, i64* @KEY_BUTTONC, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @sprintf(i32 %194, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %196 = load i32*, i32** @keyname, align 8
  %197 = load i64, i64* @KEY_START, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @sprintf(i32 %199, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %250

201:                                              ; preds = %170
  %202 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @input, i32 0, i32 0), align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 1
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @SYSTEM_JUSTIFIER, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %228

207:                                              ; preds = %201
  %208 = load i32*, i32** @keyname, align 8
  %209 = load i64, i64* @KEY_BUTTONA, align 8
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @sprintf(i32 %211, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %213 = load i32*, i32** @keyname, align 8
  %214 = load i64, i64* @KEY_BUTTONB, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @sprintf(i32 %216, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %218 = load i32*, i32** @keyname, align 8
  %219 = load i64, i64* @KEY_BUTTONC, align 8
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @sprintf(i32 %221, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %223 = load i32*, i32** @keyname, align 8
  %224 = load i64, i64* @KEY_START, align 8
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @sprintf(i32 %226, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %249

228:                                              ; preds = %201
  %229 = load i32*, i32** @keyname, align 8
  %230 = load i64, i64* @KEY_BUTTONA, align 8
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @sprintf(i32 %232, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %234 = load i32*, i32** @keyname, align 8
  %235 = load i64, i64* @KEY_BUTTONB, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @sprintf(i32 %237, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %239 = load i32*, i32** @keyname, align 8
  %240 = load i64, i64* @KEY_BUTTONC, align 8
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @sprintf(i32 %242, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %244 = load i32*, i32** @keyname, align 8
  %245 = load i64, i64* @KEY_START, align 8
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @sprintf(i32 %247, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %249

249:                                              ; preds = %228, %207
  br label %250

250:                                              ; preds = %249, %180
  br label %287

251:                                              ; preds = %3
  %252 = load i64, i64* @KEY_BUTTONA, align 8
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %7, align 4
  %254 = load i64, i64* @KEY_BUTTONB, align 8
  %255 = trunc i64 %254 to i32
  store i32 %255, i32* %8, align 4
  %256 = load i32*, i32** @keyname, align 8
  %257 = load i64, i64* @KEY_BUTTONA, align 8
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @sprintf(i32 %259, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %261 = load i32*, i32** @keyname, align 8
  %262 = load i64, i64* @KEY_BUTTONB, align 8
  %263 = getelementptr inbounds i32, i32* %261, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @sprintf(i32 %264, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  br label %287

266:                                              ; preds = %3
  %267 = load i64, i64* @KEY_BUTTONA, align 8
  %268 = trunc i64 %267 to i32
  store i32 %268, i32* %7, align 4
  %269 = load i64, i64* @KEY_BUTTONA, align 8
  %270 = trunc i64 %269 to i32
  store i32 %270, i32* %8, align 4
  %271 = load i32*, i32** @keyname, align 8
  %272 = load i64, i64* @KEY_BUTTONA, align 8
  %273 = getelementptr inbounds i32, i32* %271, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @sprintf(i32 %274, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  br label %287

276:                                              ; preds = %3
  %277 = load i64, i64* @KEY_BUTTONA, align 8
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* %7, align 4
  %279 = load i64, i64* @KEY_BUTTONA, align 8
  %280 = trunc i64 %279 to i32
  store i32 %280, i32* %8, align 4
  %281 = load i32*, i32** @keyname, align 8
  %282 = load i64, i64* @KEY_BUTTONA, align 8
  %283 = getelementptr inbounds i32, i32* %281, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @sprintf(i32 %284, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %286 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0))
  br label %287

287:                                              ; preds = %276, %266, %251, %250, %125, %100, %75, %30, %10
  %288 = load i32, i32* %5, align 4
  switch i32 %288, label %294 [
    i32 0, label %289
  ]

289:                                              ; preds = %287
  %290 = load i32, i32* %4, align 4
  %291 = load i32, i32* %7, align 4
  %292 = load i32, i32* %8, align 4
  %293 = call i32 @pad_config(i32 %290, i32 %291, i32 %292)
  br label %295

294:                                              ; preds = %287
  br label %295

295:                                              ; preds = %294, %289
  ret void
}

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @GUI_WaitPrompt(i8*, i8*) #1

declare dso_local i32 @pad_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
