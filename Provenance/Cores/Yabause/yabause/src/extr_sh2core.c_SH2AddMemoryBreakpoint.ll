; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2core.c_SH2AddMemoryBreakpoint.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2core.c_SH2AddMemoryBreakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32* }

@MAX_BREAKPOINTS = common dso_local global i64 0, align 8
@ReadByteList = common dso_local global i32** null, align 8
@ReadWordList = common dso_local global i32** null, align 8
@ReadLongList = common dso_local global i32** null, align 8
@WriteByteList = common dso_local global i32** null, align 8
@WriteWordList = common dso_local global i32** null, align 8
@WriteLongList = common dso_local global i32** null, align 8
@BREAK_BYTEREAD = common dso_local global i32 0, align 4
@SH2MemoryBreakpointReadByte = common dso_local global i32 0, align 4
@BREAK_WORDREAD = common dso_local global i32 0, align 4
@SH2MemoryBreakpointReadWord = common dso_local global i32 0, align 4
@BREAK_LONGREAD = common dso_local global i32 0, align 4
@SH2MemoryBreakpointReadLong = common dso_local global i32 0, align 4
@BREAK_BYTEWRITE = common dso_local global i32 0, align 4
@SH2MemoryBreakpointWriteByte = common dso_local global i32 0, align 4
@BREAK_WORDWRITE = common dso_local global i32 0, align 4
@SH2MemoryBreakpointWriteWord = common dso_local global i32 0, align 4
@BREAK_LONGWRITE = common dso_local global i32 0, align 4
@SH2MemoryBreakpointWriteLong = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SH2AddMemoryBreakpoint(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %418

13:                                               ; preds = %3
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MAX_BREAKPOINTS, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %417

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  %22 = ashr i32 %21, 29
  switch i32 %22, label %24 [
    i32 0, label %23
    i32 1, label %23
    i32 5, label %23
  ]

23:                                               ; preds = %20, %20, %20
  br label %25

24:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %418

25:                                               ; preds = %23
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 268435455
  store i32 %27, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %50, %25
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %30, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %37, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %418

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %28

53:                                               ; preds = %28
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 %54, i32* %64, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  store i32 %65, i32* %75, align 4
  %76 = load i32**, i32*** @ReadByteList, align 8
  %77 = load i32, i32* %6, align 4
  %78 = ashr i32 %77, 16
  %79 = and i32 %78, 4095
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %76, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 6
  store i32* %82, i32** %92, align 8
  %93 = load i32**, i32*** @ReadWordList, align 8
  %94 = load i32, i32* %6, align 4
  %95 = ashr i32 %94, 16
  %96 = and i32 %95, 4095
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %93, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 5
  store i32* %99, i32** %109, align 8
  %110 = load i32**, i32*** @ReadLongList, align 8
  %111 = load i32, i32* %6, align 4
  %112 = ashr i32 %111, 16
  %113 = and i32 %112, 4095
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %110, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 7
  store i32* %116, i32** %126, align 8
  %127 = load i32**, i32*** @WriteByteList, align 8
  %128 = load i32, i32* %6, align 4
  %129 = ashr i32 %128, 16
  %130 = and i32 %129, 4095
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %127, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 4
  store i32* %133, i32** %143, align 8
  %144 = load i32**, i32*** @WriteWordList, align 8
  %145 = load i32, i32* %6, align 4
  %146 = ashr i32 %145, 16
  %147 = and i32 %146, 4095
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %144, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 3
  store i32* %150, i32** %160, align 8
  %161 = load i32**, i32*** @WriteLongList, align 8
  %162 = load i32, i32* %6, align 4
  %163 = ashr i32 %162, 16
  %164 = and i32 %163, 4095
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32*, i32** %161, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  store i32* %167, i32** %177, align 8
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* @BREAK_BYTEREAD, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %216

182:                                              ; preds = %53
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* @BREAK_BYTEREAD, align 4
  %186 = call i32 @CheckForMemoryBreakpointDupes(%struct.TYPE_8__* %183, i32 %184, i32 %185, i32* %8)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %195, label %188

188:                                              ; preds = %182
  %189 = load i32**, i32*** @ReadByteList, align 8
  %190 = load i32, i32* %6, align 4
  %191 = ashr i32 %190, 16
  %192 = and i32 %191, 4095
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32*, i32** %189, i64 %193
  store i32* @SH2MemoryBreakpointReadByte, i32** %194, align 8
  br label %215

195:                                              ; preds = %182
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 6
  %204 = load i32*, i32** %203, align 8
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %207, align 8
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 6
  store i32* %204, i32** %214, align 8
  br label %215

215:                                              ; preds = %195, %188
  br label %216

216:                                              ; preds = %215, %53
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* @BREAK_WORDREAD, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %255

221:                                              ; preds = %216
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* @BREAK_WORDREAD, align 4
  %225 = call i32 @CheckForMemoryBreakpointDupes(%struct.TYPE_8__* %222, i32 %223, i32 %224, i32* %8)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %234, label %227

227:                                              ; preds = %221
  %228 = load i32**, i32*** @ReadWordList, align 8
  %229 = load i32, i32* %6, align 4
  %230 = ashr i32 %229, 16
  %231 = and i32 %230, 4095
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32*, i32** %228, i64 %232
  store i32* @SH2MemoryBreakpointReadWord, i32** %233, align 8
  br label %254

234:                                              ; preds = %221
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %237, align 8
  %239 = load i32, i32* %8, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 5
  %243 = load i32*, i32** %242, align 8
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %246, align 8
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 5
  store i32* %243, i32** %253, align 8
  br label %254

254:                                              ; preds = %234, %227
  br label %255

255:                                              ; preds = %254, %216
  %256 = load i32, i32* %7, align 4
  %257 = load i32, i32* @BREAK_LONGREAD, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %294

260:                                              ; preds = %255
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %262 = load i32, i32* %6, align 4
  %263 = load i32, i32* @BREAK_LONGREAD, align 4
  %264 = call i32 @CheckForMemoryBreakpointDupes(%struct.TYPE_8__* %261, i32 %262, i32 %263, i32* %8)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %273, label %266

266:                                              ; preds = %260
  %267 = load i32**, i32*** @ReadLongList, align 8
  %268 = load i32, i32* %6, align 4
  %269 = ashr i32 %268, 16
  %270 = and i32 %269, 4095
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32*, i32** %267, i64 %271
  store i32* @SH2MemoryBreakpointReadLong, i32** %272, align 8
  br label %293

273:                                              ; preds = %260
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %276, align 8
  %278 = load i32, i32* %8, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 5
  %282 = load i32*, i32** %281, align 8
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %285, align 8
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 5
  store i32* %282, i32** %292, align 8
  br label %293

293:                                              ; preds = %273, %266
  br label %294

294:                                              ; preds = %293, %255
  %295 = load i32, i32* %7, align 4
  %296 = load i32, i32* @BREAK_BYTEWRITE, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %333

299:                                              ; preds = %294
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %301 = load i32, i32* %6, align 4
  %302 = load i32, i32* @BREAK_BYTEWRITE, align 4
  %303 = call i32 @CheckForMemoryBreakpointDupes(%struct.TYPE_8__* %300, i32 %301, i32 %302, i32* %8)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %312, label %305

305:                                              ; preds = %299
  %306 = load i32**, i32*** @WriteByteList, align 8
  %307 = load i32, i32* %6, align 4
  %308 = ashr i32 %307, 16
  %309 = and i32 %308, 4095
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32*, i32** %306, i64 %310
  store i32* @SH2MemoryBreakpointWriteByte, i32** %311, align 8
  br label %332

312:                                              ; preds = %299
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 1
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %315, align 8
  %317 = load i32, i32* %8, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 4
  %321 = load i32*, i32** %320, align 8
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 1
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %324, align 8
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 4
  store i32* %321, i32** %331, align 8
  br label %332

332:                                              ; preds = %312, %305
  br label %333

333:                                              ; preds = %332, %294
  %334 = load i32, i32* %7, align 4
  %335 = load i32, i32* @BREAK_WORDWRITE, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %372

338:                                              ; preds = %333
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %340 = load i32, i32* %6, align 4
  %341 = load i32, i32* @BREAK_WORDWRITE, align 4
  %342 = call i32 @CheckForMemoryBreakpointDupes(%struct.TYPE_8__* %339, i32 %340, i32 %341, i32* %8)
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %351, label %344

344:                                              ; preds = %338
  %345 = load i32**, i32*** @WriteWordList, align 8
  %346 = load i32, i32* %6, align 4
  %347 = ashr i32 %346, 16
  %348 = and i32 %347, 4095
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32*, i32** %345, i64 %349
  store i32* @SH2MemoryBreakpointWriteWord, i32** %350, align 8
  br label %371

351:                                              ; preds = %338
  %352 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 1
  %355 = load %struct.TYPE_6__*, %struct.TYPE_6__** %354, align 8
  %356 = load i32, i32* %8, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 3
  %360 = load i32*, i32** %359, align 8
  %361 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 1
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %363, align 8
  %365 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 3
  store i32* %360, i32** %370, align 8
  br label %371

371:                                              ; preds = %351, %344
  br label %372

372:                                              ; preds = %371, %333
  %373 = load i32, i32* %7, align 4
  %374 = load i32, i32* @BREAK_LONGWRITE, align 4
  %375 = and i32 %373, %374
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %411

377:                                              ; preds = %372
  %378 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %379 = load i32, i32* %6, align 4
  %380 = load i32, i32* @BREAK_LONGWRITE, align 4
  %381 = call i32 @CheckForMemoryBreakpointDupes(%struct.TYPE_8__* %378, i32 %379, i32 %380, i32* %8)
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %390, label %383

383:                                              ; preds = %377
  %384 = load i32**, i32*** @WriteLongList, align 8
  %385 = load i32, i32* %6, align 4
  %386 = ashr i32 %385, 16
  %387 = and i32 %386, 4095
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32*, i32** %384, i64 %388
  store i32* @SH2MemoryBreakpointWriteLong, i32** %389, align 8
  br label %410

390:                                              ; preds = %377
  %391 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %392, i32 0, i32 1
  %394 = load %struct.TYPE_6__*, %struct.TYPE_6__** %393, align 8
  %395 = load i32, i32* %8, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %397, i32 0, i32 2
  %399 = load i32*, i32** %398, align 8
  %400 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %401 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %401, i32 0, i32 1
  %403 = load %struct.TYPE_6__*, %struct.TYPE_6__** %402, align 8
  %404 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %408, i32 0, i32 2
  store i32* %399, i32** %409, align 8
  br label %410

410:                                              ; preds = %390, %383
  br label %411

411:                                              ; preds = %410, %372
  %412 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %413, i32 0, i32 0
  %415 = load i64, i64* %414, align 8
  %416 = add i64 %415, 1
  store i64 %416, i64* %414, align 8
  store i32 0, i32* %4, align 4
  br label %418

417:                                              ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %418

418:                                              ; preds = %417, %411, %48, %24, %12
  %419 = load i32, i32* %4, align 4
  ret i32 %419
}

declare dso_local i32 @CheckForMemoryBreakpointDupes(%struct.TYPE_8__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
